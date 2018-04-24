---
# vim: set ft=pug:
lang: pug
meta:
 title: 'IM Freedom Workshop: Free Live Masterclass in Brisbane & Goldcoast'
form:
  url: all
  confirm: imf-brisbane-goldcoast/thankyou.html
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
  .content.has-text-centered
    button.button.is-large.is-danger.is-rounded.has-text-weight-bold.open-modal(
      data-modal='sub-form'
    )
      if block
        block
      else
        | Register Now!

block body
  +header(
    logo='img/logo-online_commissioner_tran_wht-2x1.png'
    icon='graduation-cap'
    title='Live Workshop',
    background-color='black'
  )

  +hero(background-color='black')#imf-hero
    +cols('centered')
      +col(8).has-text-centered
        +tt(size=1) Free Live #[span.has-text-danger Masterclass]
        +st(size=2) Brisbane &amp; Goldcoast
        +st(size=2).has-text-serif.has-text-warning.has-text-weight-bold
          | Start a Successful Online Business in 2018
        +st(size=3).is-marginless Tickets on Sale Now!
        +st(size=4) Early Bird All Access expires in...
        +countdown('2018-05-14')
        +actionButton

  +se(size=8)
    +tt(size=4, spaced)
      | This Free 2 Hour Masterclass in the Brisbane / Gold Coast, QLD area
      | reveals...
    +st(size=3)
      | A beginner-friendly blueprint to turn your passion into a profitable
      | online information business... step-by-step
    +co
      .aspect-ratio.is-16by9
        iframe(
          src='https://www.youtube.com/embed/F8UGKd4RQ4I'
          frameborder='0'
          allow='autoplay; encrypted-media'
          allowfullscreen
        )
    +actionButton
    +st(size=5)
      | Quick, spots are filling up...
      |
      strong claim your free ticket and reserve your seat
      |
      | before it's too late!

  +se(size=8 background-color='light')
    +cols
      +col('half')
        h3.title.is-3 At this masterclass, you will
        +cl
          +ci.
            Find out how to select the right business model and why that will
            impact your bottom line
          +ci.
            Learn how to select products with high profit margins
          +ci.
            Discover how top earners generate high commissions
          +ci.
            And so much more...
      +col('half')
        h3.title.is-3 About this event
        +co
          p.
            At this #[strong FREE 2 Hour Introductory Masterclass] you will
            learn the EXACT proven formula to build a lucrative online business
            from scratch whilst working just a few hours a week without any
            experience, technical skills or sales ability.
          p.
            Using this process people from all walks of life have quit their
            JOB and enjoy a life of FREEDOM and ABUNDANCE...
          p.
            The #[strong IM Freedom Workshop] is "the event" you need to attend
            if you are at all serious about making the necessary changes to
            take control of your financial future once and for all.
    +co
      +actionButton

  +se(background-color='dark' text-color='light')
    +tt(text-color='light') Success stories from people just like you
    +cols('multiline')
      +col('one-third')
        +co.has-text-centered
          p.
            "This training and business system has had a huge impact on my
            success. In my first 18 months online, I was able to make over
            $253,147.89."
      +col('one-third')
        +co.has-text-centered
          p.
            "I am a retired school teacher and didn’t know much about online
            marketing but using Matt’s system, I have already made over
            $71,945.47 in my spare time."
      +col('one-third')
        +co.has-text-centered
          p.
            "Having multiple sources of income is important to me. Matt’s
            systems has allowed me to tap into an online income model I was not
            aware of before."
      +col('2 offset-1')
        +img(src=s('img/person-adeline-1x1.png'))
      +col('2 offset-2')
        +img(src=s('img/ppl-deborah-1x1.png'))
      +col('2 offset-2')
        +img(src=s('img/ppl-david-1x1.png'))
      +col('one-third')
        .has-text-centered
          p #[span.has-text-weight-bold Adeline Sugianto]
          p Jakarta, Indonesia
      +col('one-third')
        .has-text-centered
          p #[span.has-text-weight-bold Deborah Robertson]
          p Covington, Georgia
      +col('one-third')
        .has-text-centered
          p #[span.has-text-weight-bold David Gilks]
          p Perth, Australia

  +se
    +tt(text-color='danger') Free Bonus - $997 Value
    +cols
      +col('one-third')
        +img(src=s('img/product-business_system-5x4.png') size='5by4')
      +col('one-third')
        +img(src=s('img/product-limitless-1x1.png') size='1by1')
      +col('one-third')
        +img(src=s('img/clip-reports-5x4.jpg') size='5by4')
    +tt(size=5).
      All Attendees Get Free Access To The Revolutionary Business System, The
      Best Selling Book Limitless, Plus 5 Free Reports...
    +co.has-text-centered
      +actionButton
      p Got questions? Email me: #[a(href=`mailto:${email}`)= email]

  +modal#sub-form
    +tt Limited Time Only! #[span.has-text-danger Register Now!]
    +st Complete the form and select the best time and location for you
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
      input(
        type='hidden'
        name='event_location'
      )
      input(
        type='hidden'
        name='event_datetime'
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
      +cols
        +col('half')
          .field
            label.label First name
            p.control.has-icons-left
              input.input(type='text' name='firstname' required)
              span.icon.is-left
                i.fas.fa-user
          .field
            label.label Last name
            p.control.has-icons-left
              input.input(type='text' name='lastname' required)
              span.icon.is-left
                i.fas.fa-user
          .field
            label.label Email
            p.control.has-icons-left
              input.input(type='email' name='email' required)
              span.icon.is-left
                i.fas.fa-envelope
          .field
            label.label Phone
            p.control.has-icons-left
              input.input(type='tel' name='phone')
              span.icon.is-left
                i.fas.fa-phone
        +col('half')
          each loc, i in locations
            - var date = moment.tz(loc.date, 'YYYY-MM-DD', timezone)
            - var dstr = date.format('dddd, MMMM D, YYYY')
            .field
              label.label #{dstr}
                br
                span.has-text-weight-normal #{loc.name}
                br
                span.has-text-weight-normal #{loc.addr}
              p.control
                each time, j in loc.time
                  - var dt = moment(date).set(time)
                  label.radio
                    input.radio.set-event-fields(
                      checked=(i+j === 0)
                      type='radio'
                      name='_event'
                      data-event-datetime=dt.toISOString()
                      data-event-location=loc.name
                    )
                    |
                    | #{dt.format('h:mm a')}
      p.field.has-text-centered
        button.button.is-danger.is-large(type='submit')
          | Complete Registration

  include ../../templates/footer

  +scripts(
    s('js/zepto.min.js'),
    s('js/moment.min.js'),
    s('js/moment-timezone-with-data.min.js'),
    s('js/countdown.js'),
    s('js/form.js'),
    s('js/modal.js'),
    s('pages/imf-brisbane-goldcoast/js/eventfields.js')
  )
