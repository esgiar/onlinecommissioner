# Customizable variables (set in `config.mk` file)
PATH   := ./node_modules/.bin:./bin:$(PATH)
PUBLIC := public
ASSETS := $(PUBLIC)/assets
SITE   := site.json

include config.mk

# HTML Pages
TPLS  := $(shell find templates -name '*.njk')
TPLS  += $(shell find pages -name '*.njk' -path '*/templates/*')
PAGES := $(shell find pages -name '*.njk' -not -path '*/templates/*')
PAGES := $(PAGES:pages/%.njk=public/%.html)
PAGES := $(filter-out $(IGNORE_PAGES),$(PAGES))

# HTML Emails
MJMLS  := $(shell find emails -name '*.njk')
EMAILS := $(MJMLS:emails/%.njk=public/emails/%.html)

# CSS
CSS_SRC := $(shell find pages -name 'index.scss')
CSS_DST := $(CSS_SRC:pages/%.scss=public/%.css)
CSS_DST := $(filter-out $(IGNORE_PAGES),$(CSS_DST))
CSS_DST += public/assets/css/bulma.min.css
CSS_DEP := $(shell find pages -name '*.scss' ! -name 'index.scss')
CSS_DEP += $(shell find node_modules/bulma -name '*.scss' -o -name '*.sass')

# Javascript
JS_SRC := $(shell find scripts -name '*.js')
JS_DST := $(JS_SRC:scripts/%.js=public/assets/js/%.js)

# Other static files
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

all: html emails css js static

html: $(PAGES)

emails: $(EMAILS)

css: $(CSS_DST)

js: $(JS_DST) js-libs

js-production: $(JS_DST:%.js=%.min.js) js-libs

js-libs: $(JS_LIB)
	@mkdir -p $(ASSETS)/js
	@cp -vu $^ $(ASSETS)/js

static: $(STAT_DST) public/favicon.ico

public/emails/%.html: emails/%.mjml
	@mkdir -p $(@D)
	mjml $< -o $@

emails/%.mjml: emails/%.njk $(SITE) emails/%.json
	njs $< $(SITE) emails/$(*D)/index.json emails/$*.json > $@

emails/%.json::
	@touch $@

public/%.html: $(SITE) pages/%.json pages/%.njk html-minifier.json $(TPLS)
	@mkdir -p $(@D)
	njs pages/$*.njk $(SITE) pages/$(*D)/index.json pages/$*.json \
	  | html-minifier --config-file html-minifier.json \
	  > $@

pages/%.json::
	@touch $@

public/favicon.ico: $(FAVICONS)
	png2ico $@ $^

public/assets/css/bulma.min.css: node_modules/bulma/css/bulma.min.css
	@mkdir -p $(@D)
	cp $< $@

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
