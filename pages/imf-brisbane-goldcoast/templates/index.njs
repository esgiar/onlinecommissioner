{% set title = "IM Freedom Workshop - Brisbane & Gold Coast" %}

{% extends "./base.njs" %}
{% from "../../../templates/macros/countdown.njs" import countdown %}

{% block body %}
  <section class="section" id="imf-header">
    <div class="container is-clearfix">
      <img src="../assets/img/imf-workshop.png" class="is-pulled-left" id="imf-logo">
      <img src="../assets/img/profile-pic-3.png" class="is-pulled-right" id="imf-oc-logo">
    </div>
  </section>

  <section class="hero is-dark" id="imf-hero">
    <div class="hero-body">
      <div class="container">
        <h1 class="title is-size-1 is-spaced has-text-warning">
          FREE LIVE MASTERCLASS
        </h1>
        <h2 class="subtitle is-size-2 has-text-warning has-font-serif">
          "How to start a successful online business in 2018"
        </h2>
        <h2 class="subtitle is-size-3">
          <strong>{{location.headline}}</strong><br>
          {{date}}
        </h2>
        <h3 class="subtitle is-size-4">
          Limited Time Only!<br>
          <span class="subtitle is-size-5 has-text-grey-light">
            Early Bird All Access Expires In...
          </span>
        </h3>
        {{ countdown('2018-05-14') }}
        <div class="imf-register has-text-centered">
          <button class="button is-danger is-large has-text-weight-bold open-modal" data-modal="imf-register-form">
            Register Now!
          </button>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container has-text-centered">
      <h4 class="title is-4">
        This <span class="has-text-danger">FREE 2-hour Masterclass</span> in the {{location.full}} area reveals...
      </h4>
      <h1 class="title">
        A Beginner Friendly Blueprint To Turn Your Passion Into A Profitable Online Information Business... Step-By-Step
      </h1>
      <div class="columns is-centered">
        <div class="column is-two-thirds">
          <iframe id="imf-video" height="474" src="https://www.youtube.com/embed/F8UGKd4RQ4I" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
      </div>
      <div class="imf-register">
        <h5 class="title is-5">
          Spots Are Filling Up... Claim Your FREE Ticket and Reserve Your Seat Before It's Too Late!
        </h5>
        <button class="button is-danger is-large has-text-weight-bold open-modal" data-modal="imf-register-form">
          Register Now!
        </button>
      </div>
    </div>
  </section>

  <section class="section has-background-light">
    <div class="container">
      <div class="columns">
        <div class="column is-half">
          <article class="content is-medium">
            <h1>At this Masterclass, you will</h1>
            <ul class="ticks">
              <li>Find out how to select the right business model and why that will impact your bottom line</li>
              <li>Learn how to select products with high profit margins</li>
              <li>Discover how top earners generate high commissions</li>
              <li>And so much more...</li>
            </ul>
          </article>
        </div>
        <div class="column is-half">
          <article class="content is-medium">
            <h1>About This Event</h1>
            <p>At this FREE 2 Hour Introductory Masterclass you will learn the EXACT proven formula to build a lucrative online business from scratch whilst working just a few hours a week without any experience, technical skills or sales ability.</p>

            <p>Using this process people from all walks of life have quit their JOB and enjoy a life of FREEDOM and ABUNDANCE...</p>

            <p>The IM Freedom Workshop is "the event" you need to attend if you are at all serious about making control of your financial future once and for all.</p>
          </article>
        </div>
      </div>
      <div class="imf-register has-text-centered">
        <button class="button is-danger is-large has-text-weight-bold open-modal" data-modal="imf-register-form">
          Register Now!
        </button>
      </div>
    </div>
  </section>

  <section class="section has-background-dark has-text-white">
    <div class="container">
      <div class="title has-text-centered has-text-white">
        Success stories from people just like you
      </div>
      <div class="columns is-centered">
        <div class="column is-3">
          <article class="media">
            <figure class="media-left">
              <p class="image is-128x128">
                <img src="../assets/img/adeline.png">
              </p>
            </figure>
            <div class="media-content">
              <div class="content">
                <p>"This training and business system has had a huge impact on my success. In my first 18 months online, I was able to make over $253,147.89."</p>
                <p>
                  <span class="has-text-weight-bold">Adeline Sugianto</span><br>
                  Jakarta, Indonesia
                </p>
              </div>
            </div>
          </article>
        </div>
        <div class="column is-3">
          <article class="media">
            <figure class="media-left">
              <p class="image is-128x128">
                <img src="../assets/img/deborah.png">
              </p>
            </figure>
            <div class="media-content">
              <div class="content">
                <p>"I am a retired school teacher and didn’t know much about online marketing but using Matt’s system, I have already made over $71,945.47 in my spare time."</p>
                <p>
                <span class="has-text-weight-bold">Deborah Robertson</span><br>
                  Covington, Georgia
                </p>
              </div>
            </div>
          </article>
        </div>
        <div class="column is-3">
          <article class="media">
            <figure class="media-left">
              <p class="image is-128x128">
                <img src="../assets/img/david.png">
              </p>
            </figure>
            <div class="media-content">
              <div class="content">
                <p>"Having multiple sources of income is important to me. Matt’s systems has allowed me to tap into an online income model I was not aware of before."</p>
                <p class="is-text-right">
                  <span class="has-text-weight-bold">David Gilks</span><br>
                  Perth, Australia
                </p>
              </div>
            </div>
          </article>
        </div>
      </div>
      <div class="imf-register has-text-centered">
        <button class="button is-danger is-large has-text-weight-bold open-modal" data-modal="imf-register-form">
          Register Now!
        </button>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <h1 class="title has-text-danger has-text-centered">
        FREE Bonus
      </h1>
      <div class="columns is-centered">
        <div class="column is-2">
          <p class="image is-square">
            <img src="../assets/img/business-system.png">
          </p>
        </div>
        <div class="column is-2">
          <p class="image is-square">
            <img src="../assets/img/cover-limitless.png">
          </p>
        </div>
        <div class="column is-2">
          <p class="image is-square">
            <img src="../assets/img/reports.jpg">
          </p>
        </div>
      </div>
      <h3 class="title is-5 has-text-centered">
        All attendees get free access to the revolutionary Business System, the best selling book "Limitless", plus 5 free reports...
      </h3>
      <div class="imf-register has-text-centered">
        <button class="button is-danger is-large has-text-weight-bold open-modal" data-modal="imf-register-form">
          Register Now!
        </button>
      </div>
    </div>
  </section>

  <section class="section has-background-light">
    <div class="container has-text-centered">
      <h4 class="title is-4">Got a question?</h4>
      <h5 class="subtitle">Email <a href="mailto:contact@onlinecommissioner.com">
          contact@onlinecommissioner.com
        </a></h5>
    </div>
  </section>

  <footer class="footer">
    <div class="container has-text-centered">
      <div class="columns is-centered">
        <div class="column is-half">
          <article class="content">
            <p>
              <a href="#">Privacy Policy</a> |
              <a href="#">Terms &amp; Conditions</a>
            </p>
            <p class="is-size-7">
              Disclaimer: Individual results will vary. No results are guaranteed with the help of our training and business systems. All the products and services we provide are for education and information purposes only. Are there testimonials on this page where people have created results using our products and services, you can't assume you will get the same results. There are those who will not earn any money at all with our products and services. Individual results will vary greatly according to effort, determination, hard work and ability to follow directions.
            </p>
            <p>
              Copyright 2018
              &bull;
              Bakar Rahman, Online Commissioner
              &bull;
              All Rights Reserved
            </p>
          </article>
        </div>
      </div>
    </div>
  </footer>

  <div class="modal" id="imf-register-form">
    <div class="modal-background"></div>
    <div class="modal-content">
      <div class="box">
        <h1 class="title has-text-info">Limited Time Only! REGISTER NOW!</h1>
        <h2 class="subtitle">Select the best time and location</h2>
        <div class="columns is-multiline">
          {% for place in location.places %}
            <div class="column is-half">
              <span class="has-text-weight-bold">{{place.name}}</span><br>
              <label class="radio">
                <input type="radio" name="a">
                12:30 pm
              </label>
              <br>
              <label class="radio">
                <input type="radio" name="a">
                6:00 pm
              </label>
            </div>
            <div class="column is-half">
              <span class="has-text-weight-bold">{{place.date}}</span><br>
              {{place.address|safe}}
            </div>
          {% endfor %}
          <div class="column is-half">
            <div class="field">
              <label class="label">First Name</label>
              <input class="input">
            </div>
            <div class="field">
              <label class="label">Last Name</label>
              <input class="input">
            </div>
          </div>
          <div class="column is-half">
            <div class="field">
              <label class="label">Email</label>
              <input class="input">
            </div>
            <div class="field">
              <label class="label">Phone</label>
              <input class="input">
            </div>
          </div>
          <div class="column has-text-centered">
            <button class="button is-danger is-large has-text-weight-bold">
              Complete Registration
            </button>
          </div>
        </div>
      </div>
    </div>
    <button class="modal-close is-large" aria-label="close"></button>
  </div>

  <script src="../assets/js/zepto.js"></script>
  <script src="../assets/js/moment.min.js"></script>
  <script src="../assets/js/modal.js"></script>
  <script src="../assets/js/countdown.js"></script>
{% endblock %}
