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

# Template context file dependencies
TPL_CTX = pages/%.yaml \
		  pages/%.$(NODE_ENV).yaml \
		  pages/$(dir %)index.yaml \
		  pages/$(dir %)index.$(NODE_ENV).yaml

# Above, for command line args
TPL_ARGS = pages/$*.yaml \
		   pages/$*.$(NODE_ENV).yaml \
		   pages/$(*D)/index.yaml \
		   pages/$(*D)/index.$(NODE_ENV).yaml

# HTML Pages
EXTS    := njk pug
FI_OPTS := $(foreach n,$(EXTS),-o -name '*.$(n)')
FI_OPTS := $(wordlist 2,$(words $(FI_OPTS)),$(FI_OPTS))
TPL_DEP := $(shell find templates $(FI_OPTS))
TPL_DEP := $(shell find pages $(FI_OPTS))
TPL_DEP += html-minifier.json
PAGES   := $(shell find pages -name '*.tpl')
PAGES   := $(PAGES:pages/%.tpl=$(PUBLIC)/%.html)
PAGES   := $(filter-out $(IGNORE_PAGES),$(PAGES))
PG_CTX   = pages/%.tpl $(TPL_CTX)
PG_ARGS  = $(TPL_ARGS)

# Emails templates
EM_DIR := emails/$(DOMAIN)
EM_DEP := $(shell find pages $(FI_OPTS))
EM_TPL := $(shell find pages -name '*.emt')
EM_MJM := $(EM_TPL:pages/%.emt=$(EM_DIR)/%.mjml)
EM_HTM := $(EM_MJM:%.mjml=%.html)
EM_CTX  = pages/%.emt $(TPL_CTX)
EM_ARGS = $(TPL_ARGS)

# CSS
CSS_SRC := styles/index.scss
CSS_DST := $(PUBLIC)/assets/css/index.css
CSS_DEP := pages styles node_modules/bulma
CSS_DEP := $(shell find $(CSS_DEP) -name '*.scss' -o -name '*.sass')

# Javascript
JS_SRC := $(shell find pages scripts -name '*.js')
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

html-min = html-minifier -c html-minifier.json
html-pre = html-beautify -m 1 -s 2 -f -

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

$(EM_DIR)/%.html: $(EM_DIR)/%.mjml
	@mkdir -p $(@D)
	@echo mjml $< \> $@
	@mjml $< -o $@.out
	@$(html-min) $@.out > $@
	@rm $@.out

$(EM_DIR)/%.mjml: $(EM_CTX) $(CONTEXT) $(EM_DEP)
	@mkdir -p $(@D)
	@echo render $< \> $@
	@render $< $(CONTEXT) $(EM_ARGS) | $(html-pre) > $@

$(PUBLIC)/%.html: $(PG_CTX) $(CONTEXT) $(TPL_DEP)
	@mkdir -p $(@D)
	@echo render $< \> $@
	@render $< $(CONTEXT) $(PG_ARGS) | $(html-min) > $@

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

%.yaml::
	@touch $@

server:
	http-server $(PUBLIC) -p 80

server-emails:
	http-server $(EM_DIR) -p 8080

server-ssl: deploy/$(DOMAIN).crt deploy/$(DOMAIN).key
	http-server $(PUBLIC) -p 443 --ssl \
	  --cert deploy/$(DOMAIN).crt \
	  --key deploy/$(DOMAIN).key

deploy:
	bin/deploy

print-%:
	@echo $* = $($*)

.PHONY: static deploy
