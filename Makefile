# Customizable variables (set in `config.mk` file)
NODE_ENV ?= development
PATH     := ./node_modules/.bin:./bin:$(PATH)
PUBLIC   := public

include config.mk

# Base template context
CONTEXT := site.json site.$(NODE_ENV).json

# Build to public/<domain>
PUBLIC := $(PUBLIC)/$(shell bin/domain $(CONTEXT))
ASSETS := $(PUBLIC)/assets

# HTML Pages
TPLS  := $(shell find templates -name '*.njk')
TPLS  += $(shell find pages -name '*.njk' -path '*/templates/*')
PAGES := $(shell find pages -name '*.njk' -not -path '*/templates/*')
PAGES := $(PAGES:pages/%.njk=$(PUBLIC)/%.html)
PAGES := $(filter-out $(IGNORE_PAGES),$(PAGES))

# Emails templates
EM_TPL := $(shell find emails -name '*.njk')
EM_MJM := $(EM_TPL:emails/%.njk=emails/%.mjml)
EM_HTM := $(EM_MJM:emails/%.mjml=$(PUBLIC)/emails/%.html)

# CSS
CSS_SRC := $(shell find pages -name 'index.scss')
CSS_DST := $(CSS_SRC:pages/%.scss=$(PUBLIC)/assets/%.css)
CSS_DST := $(filter-out $(IGNORE_PAGES),$(CSS_DST))
CSS_DST += $(PUBLIC)/assets/css/bulma.min.css
CSS_DEP := $(shell find pages -name '*.scss' ! -name 'index.scss')
CSS_DEP += $(shell find node_modules/bulma -name '*.scss' -o -name '*.sass')

# Javascript
JS_SRC := $(shell find scripts -name '*.js')
JS_DST := $(JS_SRC:scripts/%.js=$(PUBLIC)/assets/js/%.js)

# Other static files
STAT_SRC := $(shell find static -type f)
STAT_SRC += $(shell find pages -name '*.jpg' -o -name '*.png')
STAT_DST := $(STAT_SRC:static/%=$(PUBLIC)/%)
STAT_DST := $(STAT_DST:pages/%=$(PUBLIC)/%)
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

all: static css js html emails

html: $(PAGES)

emails: $(EM_MJM) $(EM_HTM)

css: $(CSS_DST)

js: $(JS_DST) js-libs

js-production: $(JS_DST:%.js=%.min.js) js-libs

js-libs: $(JS_LIB)
	@mkdir -p $(ASSETS)/js
	@cp -vu $^ $(ASSETS)/js

static: $(STAT_DST) $(PUBLIC)/favicon.ico

$(PUBLIC)/emails/%.html: emails/%.mjml
	@mkdir -p $(@D)
	mjml $< -o $@

emails/%.mjml: emails/%.njk emails/%.json $(CONTEXT) $(TPLS)
	njs $< $(CONTEXT) emails/$(*D)/index.json emails/$*.json \
	  | html-beautify -m 1 -s 2 -f - \
	  > $@

emails/%.json::
	@touch $@

$(PUBLIC)/%.html: pages/%.json pages/%.njk html-minifier.json $(CONTEXT) $(TPLS)
	@mkdir -p $(@D)
	njs pages/$*.njk $(CONTEXT) pages/$*.json \
	  | html-minifier --config-file html-minifier.json \
	  > $@

pages/%.json::
	@touch $@

$(PUBLIC)/favicon.ico: $(FAVICONS)
	png2ico $@ $^

$(PUBLIC)/assets/css/bulma.min.css: node_modules/bulma/css/bulma.min.css
	@mkdir -p $(@D)
	cp $< $@

$(PUBLIC)/assets/%.css: pages/%.scss $(CSS_DEP)
	@mkdir -p $(@D)
	sass --load-path=node_modules $< | postcss > $@

$(PUBLIC)/assets/js/%.js: scripts/%.js
	$(rollup)

$(PUBLIC)/%.jpg: static/%.jpg
	$(imagemin)

$(PUBLIC)/%.png: static/%.png
	$(imagemin)

$(PUBLIC)/%: static/%
	@mkdir -p $(@D)
	cp $< $@

server:
	http-server $(PUBLIC) -p 80

print-%:
	@echo $* = $($*)

.PHONY: static
