---
# vim: set ft=pug:
lang: pug
---

extends ../templates/base
include ../templates/mixins/header

block body
  +header Your Enrichment eBook is ready

  mj-section
    mj-column
      mj-image(
        width='300'
        src=s('img/product-enrichment_ebook-3x4.jpg')
      )/
    mj-column(vertical-align='middle')
      mj-text
        p.
          Your eBook PDF file is ready to be downloaded. I hope you will find
          the information useful &amp; take action to implement it in your new
          venture in home-based online business.
      mj-button(href=s(file) background-color='#F44336').
        Download your PDF

  mj-section
    mj-column
      mj-text
        p.
          Before you dive into the book and start applying it to success, I'd
          like to take a second to say hello and welcome you. I'm really
          excited and grateful you've decided to read my eBook.
        p.
          Moving forward, here's what you can expect from me.
        p.
          I'll be sending you emails about new eBooks, courses, training
          resources and cool ideas I've come across that will benefit you.
        p.
          Sounds good? Great! Here's how we get started...
      mj-text(mj-class='h2').
        Make sure you're getting my emails
      mj-text
        p.
          All my emails are from: #[a(href=email)= email]
        p.
          If you aren't getting the emails, you'll miss out on the important
          updates and new content about what's working now in this
          industry.
        p.
          Follow the whitelisting instructions on this page:
        p
          a(href=uri('email-white-list'))= uri('email-white-list')
        p.
          Go and do that now. I'll wait...
      mj-text(mj-class='h2').
        Let's get to know each other
      mj-text
        p.
          I invite you to join me on Facebook: #[a(href=fb)= fb]
        p.
          Now, a quick introduction to myself.
        p.
          I'm Bakar Rahman, CEO and founder of OnlineCommissioner.com. I'm a
          retired self-employed marketing and business consultant, create a
          pension, earning a full-time income from the internet.
        p.
          Now a very driven and passionate entrepreneur who is out to teach
          other ordinary people to do the same.
        p.
          My goal is to inspire others in making their retirement the best time
          of their lives. Now all you need to do is stick with me, read my
          daily email series, and TAKE ACTION.
        p
          | Your next step is to watch the
          |
          a(href=aff('wm_ebook_page')) Free Video
          |
          | about the WiFi Millionaire book.
      mj-image(
        width='336'
        src=s('img/product-wifi_millionaire_03-5x4.jpg')
        href=aff('wm_ebook_page')
      )/
      mj-text
        p.
          If you have any questions about this whole thing - like whether it's
          real, or whatever is on your mind... you can always reach out at
          Facebook: #[a(href=fb)= fb]
      mj-image(
        width='336'
        src=s('img/person-bakar_rahman_01-4x3.jpg')
      )/
