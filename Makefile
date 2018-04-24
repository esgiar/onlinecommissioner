# Customizable variables (set in `config.mk` file)
NODE_ENV ?= development
PATH     := ./node_modules/.bin:./bin:$(PATH)
PUBLIC   := public

include config.mk

# Base template context
CONTEXT := site.yaml site.$(NODE_ENV).yaml

# Build to public/<domain>
DOMAIN := $(shell bin/domain $(CONTEXT))
PUBLIC := $(PUBLIC)/$(DOMAIN)
ASSETS := $(PUBLIC)/assets

# Set full path for ignored pages
IGNORE_PAGES := $(IGNORE_PAGES:%=public/$(DOMAIN)/%)

# HTML Pages
EXTS    := njk pug
FI_OPTS := $(foreach n,$(EXTS),-o -name '*.$(n)')
FI_OPTS := $(wordlist 2,$(words $(FI_OPTS)),$(FI_OPTS))
TPL_DEP := $(shell find templates $(FI_OPTS))
TPL_DEP += html-minifier.json
PAGES   := $(shell find pages -name '*.tpl' -not -path '*/templates/*')
PAGES   := $(PAGES:pages/%.tpl=$(PUBLIC)/%.html)
PAGES   := $(filter-out $(IGNORE_PAGES),$(PAGES))
TPL_CTX  = pages/%.tpl \
		   pages/%.json \
		   pages/%.$(NODE_ENV).json \
		   pages/%.yaml \
		   pages/%.$(NODE_ENV).yaml \
		   pages/$(dir %)index.json \
		   pages/$(dir %)index.$(NODE_ENV).json \
		   pages/$(dir %)index.yaml \
		   pages/$(dir %)index.$(NODE_ENV).yaml
TPL_ARGS = pages/$*.json \
		   pages/$*.$(NODE_ENV).json \
		   pages/$*.yaml \
		   pages/$*.$(NODE_ENV).yaml \
		   pages/$(*D)/index.json \
		   pages/$(*D)/index.$(NODE_ENV).json \
		   pages/$(*D)/index.yaml \
		   pages/$(*D)/index.$(NODE_ENV).yaml

# Emails templates
MJML   := emails/mjml/$(DOMAIN)
EM_DEP := $(shell find emails $(FI_OPTS))
EM_TPL := $(shell find emails -name '*.tpl')
EM_MJM := $(EM_TPL:emails/%.tpl=$(MJML)/%.mjml)
EM_HTM := $(EM_MJM:$(MJML)/%.mjml=$(PUBLIC)/emails/%.html)
EM_CTX  = emails/%.tpl \
		  emails/%.json \
		  emails/%.$(NODE_ENV).json \
		  emails/%.yaml \
		  emails/%.$(NODE_ENV).yaml \
		  emails/$(dir %)index.json \
		  emails/$(dir %)index.$(NODE_ENV).json \
		  emails/$(dir %)index.yaml \
		  emails/$(dir %)index.$(NODE_ENV).yaml
EM_ARGS = emails/$*.json \
		  emails/$*.$(NODE_ENV).json \
		  emails/$*.yaml \
		  emails/$*.$(NODE_ENV).yaml \
		  emails/$(*D)/index.json \
		  emails/$(*D)/index.$(NODE_ENV).json \
		  emails/$(*D)/index.yaml \
		  emails/$(*D)/index.$(NODE_ENV).yaml

# CSS
CSS_SRC := styles/index.scss
CSS_DST := $(PUBLIC)/assets/css/index.css
CSS_DEP := $(CSS_SRC)
CSS_DEP += $(shell find pages -name '*.scss')
CSS_DEP += $(shell find node_modules/bulma -name '*.scss' -o -name '*.sass')

# Javascript
JS_SRC := $(shell find scripts -name '*.js')
JS_SRC += $(shell find pages -name '*.js')
JS_DST := $(JS_SRC:scripts/%.js=$(PUBLIC)/assets/js/%.js)
JS_DST := $(JS_DST:pages/%.js=$(PUBLIC)/assets/pages/%.js)

# Other static files
STAT_SRC := $(shell find static -type f)
STAT_SRC += $(shell find pages -name '*.jpg' -o -name '*.png')
STAT_DST := $(STAT_SRC:static/%=$(PUBLIC)/%)
STAT_DST := $(STAT_DST:pages/%=$(PUBLIC)/%)
STAT_DST := $(filter-out $(IGNORE_PAGES),$(STAT_DST))
FAVICONS := $(shell find static/assets/img -name 'favicon-*.png')
FAVICONS := $(sort $(FAVICONS))

export NODE_ENV REMOTE_USER REMOTE_HOST REMOTE_PORT EMAIL_SYS

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

$(PUBLIC)/emails/%.html: $(MJML)/%.mjml
	@mkdir -p $(@D)
	mjml $< -o $@

$(MJML)/%.mjml: $(EM_CTX) $(CONTEXT) $(EM_DEP)
	@mkdir -p $(@D)
	@echo render $< \> $@
	@render $< $(CONTEXT) $(EM_ARGS) | html-beautify -m 1 -s 2 -f - > $@

$(PUBLIC)/%.html: $(TPL_CTX) $(CONTEXT) $(TPL_DEP)
	@mkdir -p $(@D)
	@echo render $< \> $@
	@render $< $(CONTEXT) $(TPL_ARGS) | html-minifier -c html-minifier.json > $@

$(PUBLIC)/favicon.ico: $(FAVICONS)
	png2ico $@ $^

$(CSS_DST): $(CSS_DEP)
	@mkdir -p $(@D)
	sass --load-path=node_modules $(CSS_SRC) | postcss > $@

$(PUBLIC)/assets/js/%.js: scripts/%.js rollup.config.js
	$(rollup)

$(PUBLIC)/assets/pages/%.js: pages/%.js rollup.config.js
	$(rollup)

$(PUBLIC)/%.jpg: static/%.jpg
	$(imagemin)

$(PUBLIC)/%.png: static/%.png
	$(imagemin)

$(PUBLIC)/%: static/%
	@mkdir -p $(@D)
	cp $< $@

%.json::
	@touch $@

%.yaml::
	@touch $@

server:
	http-server $(PUBLIC) -p 80

server-ssl: deploy/$(DOMAIN).crt deploy/$(DOMAIN).key
	http-server $(PUBLIC) -p 443 --ssl \
	  --cert deploy/$(DOMAIN).crt \
	  --key deploy/$(DOMAIN).key

deploy:
	bin/deploy

print-%:
	@echo $* = $($*)

.PHONY: static deploy
