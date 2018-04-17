PATH   := ./node_modules/.bin:./bin:$(PATH)
ASSETS := public/assets

include config.mk

TPLS  := $(shell find templates -name '*.njs')
TPLS  += $(shell find pages -name '*.njs' -path '*/templates/*')
PAGES := $(shell find pages -name '*.njs' -not -path '*/templates/*')
PAGES := $(PAGES:pages/%.njs=public/%.html)
PAGES := $(filter-out $(IGNORE_PAGES),$(PAGES))

CSS_SRC := $(shell find pages -name 'index.scss')
CSS_DST := $(CSS_SRC:pages/%.scss=public/%.css)
CSS_DST := $(filter-out $(IGNORE_PAGES),$(CSS_DST))
CSS_DEP := $(shell find pages -name '*.scss' ! -name 'index.scss')
CSS_DEP += $(shell find node_modules/bulma -name '*.scss' -o -name '*.sass')

JS_SRC := $(shell find scripts -name '*.js')
JS_DST := $(JS_SRC:scripts/%.js=public/assets/js/%.js)
JS_LIB := node_modules/zepto/dist/zepto.js \
          node_modules/moment/min/moment.min.js

STAT_SRC := $(shell find static -type f)
STAT_SRC += $(shell find pages -name '*.jpg' -o -name '*.png')
STAT_DST := $(STAT_SRC:static/%=public/%)
STAT_DST := $(STAT_DST:pages/%=public/%)
STAT_DST := $(filter-out $(IGNORE_PAGES),$(STAT_DST))
FAVICONS := $(shell find static/assets/img -name 'favicon-*.png')
FAVICONS := $(sort $(FAVICONS))

define postcss =
	@mkdir -p $(@D)
	postcss $< -o $@
endef

define imagemin =
	@mkdir -p $(@D)
	imagemin $< > $@
endef

define rollup =
	@mkdir -p $(@D)
	rollup -c -i $< -o $@
endef

all: html css js static

html: $(PAGES)

css: $(CSS_DST)

js: $(JS_DST) js-libs

js-production: $(JS_DST:%.js=%.min.js) js-libs

js-libs: $(JS_LIB)
	@mkdir -p $(ASSETS)/js
	@cp -vu $^ $(ASSETS)/js

static: $(STAT_DST) public/favicon.ico

public/%.html: pages/%.json pages/%.njs html-minifier.json $(TPLS)
	@mkdir -p $(@D)
	njs pages/$*.njs pages/$(*D)/index.json pages/$*.json \
	  | html-minifier --config-file html-minifier.json \
	  > $@

pages/%.json::
	@touch $@

public/favicon.ico: $(FAVICONS)
	png2ico $@ $^

public/%.css: pages/%.scss $(CSS_DEP)
	@mkdir -p $(@D)
	sass --load-path=node_modules $< | postcss > $@

public/assets/js/%.js: scripts/%.js
	$(rollup)

public/%.jpg: static/%.jpg
	$(imagemin)

public/%.png: static/%.png
	$(imagemin)

public/%: static/%
	@mkdir -p $(@D)
	cp $< $@

print-%:
	@echo $* = $($*)

.PHONY: static
