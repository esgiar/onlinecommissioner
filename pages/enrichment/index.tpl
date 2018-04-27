---
vim: ft=pug
---

extends ../../templates/layouts/base
include ../../templates/mixins/checklist
include ../../templates/mixins/columns
include ../../templates/mixins/countdown
include ../../templates/mixins/header
include ../../templates/mixins/img
include ../../templates/mixins/modal
include ../../templates/mixins/scripts
include ../../templates/mixins/section

mixin actionButton
  button(
    class=`
      button
      is-success
      is-size-4
      has-text-weight-bold
      open-modal
    `
    data-modal='sub-form'
    ga-on='click'
    ga-event-category=`Form: ${path}`
    ga-event-action='open'
  )
    block

block body
  +hero(
    background-color='black'
    background-image=s('img/stock-hk_city_01-2x1.jpg')
  )
    +cols('centered')
      +col(7)
        +headerLevel(
          logo='img/logo-online_commissioner_tran_wht-2x1.png'
          icon='book'
          title='eBook Giveaway'
        )
    .spacer
    +cols('centered')
      +col(3)
        figure.image.is-2by3
          img(src=s('img/product-enrichment_ebook_ipad-2x3.png'))
      +col(4).has-text-centered
        br
        br
        .content.is-medium
          p.
            How I enrich myself after making the transition from a traditional
            to an online entrepreneur.
        h1.title.is-medium Free Download Expires In
        +countdown('2018-04-30')
        +actionButton Download Now For Free!

  +se
    +tt(size=1)
      | Free EN
      span.has-text-danger RICH
      | MENT eBook
    +co
      p.
        How I enrich myself after making the transition from a traditional
        to an online entrepreneur.
      p.
        In this book, you will discover how I began the journey of using the
        internet to help others achieve their entrepreneurial goals.
    +tt(size=2)
      | In your free eBook, you will discover...
    +cl
      +ci.
        The steps you must take to create financial security in our current
        new economy where most people are struggling to get paid for what they
        are worth
      +ci.
        Discover how you can stop wasting resources and start getting results
      +ci.
        And much more...

  +se(background-color='light')
    +cols('centered')
      +col(7)
        +co
          p.
            I want to help people all around the world to develop their vision
            and a plan of action for building and living their dream lifestyle.
          p.
            Not only that, I’ll be travelling all over the world teaching and
            training entrepreneurs how they can grow their businesses and
            increase their wealth for themselves and their families.
          p.
            This free book "Enrichment" will explain why entrepreneurship could
            possibly be the right decision for you, what and how you can
            do to get started with your entrepreneurial journey today.
          p.
            My mission now is to share the true experience and knowledge with
            as many people as possible in the sincere hope this information
            will do for others what it did for me.
          p.
            So, open your mind... your journey begins NOW!
      +col(5).has-text-centered
        br
        +img(src=s('img/person-bakar_rahman_01-4x3.jpg') size='4by3')
        br
        +actionButton I want the eBook now!

  include ../../templates/footer

  +modal#sub-form(
    data-close-on='click'
    data-close-event-category=`Form: ${path}`
    data-close-event-action='close'
  )
    +tt Yes, I want the e-book!
    +st Please enter your details correctly to claim your special access.
    form.ajax(
      action=subscribe_urls[email_sys][form.url]
      accept-charset='utf-8'
      method='post'
    )
      input(
        type='hidden'
        name='confirm_url'
        value=uri(form.confirm)
      )
      input(
        type='hidden'
        name='list_id'
        value=form.list[email_sys]
      )
      if form.email
        input(
          type='hidden'
          name='email_template_id'
          value=form.email.template
        )
        input(
          type='hidden'
          name='email_subject'
          value=form.email.subject
        )
      .field
        label.label Name
          span.has-text-danger &nbsp;*
        p.control.has-icons-left
          input.input.is-medium(type='text' name='firstname' required)
          span.icon.is-small.is-left
            i.fas.fa-user
      .field
        label.label
          | Email
          span.has-text-danger &nbsp;*
        p.control.has-icons-left
          input.input.is-medium(type='email' name='email' required)
          span.icon.is-small.is-left
            i.fas.fa-at
      .field
        label.label Phone (with Country Code)
        p.control.has-icons-left
          input.input.is-medium.autofill-country-code(
            type='text' name='phone'
          )
          span.icon.is-small.is-left
            i.fas.fa-phone
        p.help
          | Don't forget to include your country code.
      .field.has-text-centered
        button.button.is-primary.is-medium(type='submit')
          | Send me the eBook

  if geoipiScriptURL
    script.
      window.GEOIP_SCRIPT_URL = !{JSON.stringify(geoipiScriptURL)};

  +scripts(
    s('js/zepto.min.js'),
    s('js/moment.min.js'),
    s('js/countdown.js'),
    s('js/country.js'),
    s('js/form.js'),
    s('js/modal.js')
  )
