{% set title = "enRICHment E-book Special Access" %}
{% set formURL = "https://app.getresponse.com/add_subscriber.html" %}
{% set confirmURL = "http://dev.onlinecommissioner.com/enrichment/thankyou.html" %}
{% set listToken = "6LJ2R" %}

{% extends "./templates/base.njs" %}
{% from "../../templates/macros/countdown.njs" import countdown %}

{% block body %}
  <header class="section is-paddingless has-background-dark">
    <div class="container is-clearfix">
      <figure class="image is-128x128 is-pulled-right" id="oc-logo">
        <img src="../assets/img/profile-pic-3.png">
      </figure>
    </div>
  </header>

  <section class="hero is-dark">
    <div class="hero-body">
      <div class="container">
        <div class="columns is-centered">
          <div class="column is-3">
            <figure class="image is-3by4">
              <img src="../assets/img/enrichment-cover.jpg">
            </figure>
          </div>
          <div class="column is-4 has-text-centered">
            <h1 class="title has-space-top is-medium">Free Download Expires In</h1>
            {{ countdown('2018-04-30') }}
            <button class="button is-success is-size-4 has-text-weight-bold has-space-top open-modal" data-modal="enrichment-form">
              Download Now For Free!
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-7">
          <h1 class="title has-text-centered is-size-1 has-text-danger">
            Free enRICHment E-Book
          </h1>
          <div class="content is-medium">
            <p>How I enrich myself after making the transition from a traditional entrepreneur to an online entrepreneur.</p>

            <p>In this book, you will discover how I began the journey using the internet and now help others to also achieve their goals.</p>

            <h2>In your free book, you will discover...</h2>

            <ul>
              <li>The steps you must take to create financial security in our current new economy where most people are struggling to get paid for what they are worth</li>
              <li>Discover how you can stop wasting resources and start getting results</li>
              <li>And much more...</li>
            </ul>

          </div>
        </div>
      </div>
    </div>
  </section>

  <div class="section has-background-light">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-4">
          <div class="content is-medium">
            <p>I want to help people all around the world to develop their vision and a plan of action for building and living their dream lifestyle.</p>

            <p>Not only that, I’ll be travelling all over the world teaching and training entrepreneurs how they can grow their businesses and increase their wealth for themselves and their families.</p>

            <p>This free book "Enrichment" will explain why entrepreneurship could possibly be the right decision for you, what and how you can do to get started with your entrepreneurial journey today.</p>

            <p>My mission now is to share the true experience and knowledge with as many people as possible in the sincere hope this information will do for others what it did for me.</p>

            <p>So, open your mind... your journey begins NOW!</p>
          </div>
        </div>
        <div class="column is-3 has-text-centered">
          <figure class="image is-4by3 has-space has-space-top is-medium">
            <img src="../assets/img/bakar-rahman-2.jpg">
          </figure>

          <button class="button is-primary is-size-4 has-text-weight-bold open-modal" data-modal="enrichment-form">
            I Want The E-book Now!
          </button>
        </div>
      </div>
    </div>
  </div>

  {% include "../../templates/footer.njs" %}

  <div class="modal" id="enrichment-form">
    <div class="modal-background"></div>
    <div class="modal-content">
      <div class="box">
        <h1 class="title">Yes, I want the e-book!</h1>
        <h2 class="subtitle">
          Please enter your details correctly to claim your special access.
        </h2>
        <form action="{{ formURL }}" accept-charset="utf-8" method="post">
          <div class="field">
            <label class="label">
              Name <span class="has-text-danger">*</span>
            </label>
            <p class="control has-icons-left">
              <input class="input is-medium" type="text" name="name" autofocus required>
              <span class="icon is-small is-left">
                <i class="fas fa-user"></i>
              </span>
            </p>
          </div>
          <div class="field">
            <label class="label">
              Email Address <span class="has-text-danger">*</span>
            </label>
            <p class="control has-icons-left">
              <input class="input is-medium" type="email" name="email" required>
              <span class="icon is-small is-left">
                <i class="fas fa-at"></i>
              </span>
            </p>
          </div>
          <div class="field">
            <label class="label">
              Phone Number (with Country Code)
            </label>
            <p class="control has-icons-left">
              <input class="input is-medium" type="tel" name="custom_phone" title="Example: +6012345678">
              <span class="icon is-small is-left">
                <i class="fas fa-phone"></i>
              </span>
            </p>
            <p class="help is-dark">
              Don't forget to include your country code.
            </p>
          </div>
          <div class="field has-text-centered">
            <button class="button is-primary is-medium is-rounded" type="submit">
              Send me the E-Book!
            </button>
          </div>
          <input type="hidden" name="campaign_token" value="{{ listToken }}" />
          <input type="hidden" name="thankyou_url" value="{{ confirmURL }}"/>
        </form>
      </div>
    </div>
    <button class="modal-close is-large" aria-label="close"></button>
  </div>

  <script src="../assets/js/zepto.js"></script>
  <script src="../assets/js/moment.min.js"></script>
  <script src="../assets/js/modal.js"></script>
  <script src="../assets/js/countdown.js"></script>
{% endblock %}
