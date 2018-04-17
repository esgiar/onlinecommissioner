{% set title = "IM Freedom Workshop - Brisbane & Gold Coast" %}

{% extends "./base.njs" %}

{% block body %}
  <section class="hero is-info">
    <div class="hero-body">
      <div class="container">
        <h1 class="title is-2 has-text-centered">
          Thank You For Registering!
        </h1>
        <h2 class="subtitle is-1 has-text-centered">
          Your Place Has Been Reserved!
        </h2>
        <article class="message is-warning">
          <div class="message-header">
            <p class="has-text-centered">
              You will receive your email confirmation shortly
            </p>
          </div>
          <div class="message-body">
            On the rare occasion you have not received your confirmation email, please check your spam folder as a precaution. (Please mark it "not spam" if you found the email in spam folder to receive future emails in your inbox)
          </div>
        </article>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <h1 class="title has-text-info has-text-centered is-spaced">
        Before the event, grab your copy of the Wifi Millionare E-Book for just $3
      </h1>
      <div class="columns is-centered">
        <div class="column is-3">
          <p class="image is-square">
            <img src="../assets/img/ebookwifi.jpg">
          </p>
        </div>
        <div class="column is-4">
          <article class="content">
            <h5 class="title is-5">
              What You’ll Learn Inside WiFi Millionaire E-Book
            </h5>
            <p>
              WiFi Millionaire clearly lays out your options for different home businesses, and gives you active control over your schedule.
            </p>
            <p>
              By using these productivity tips, you’ll learn how to filter out distractions, and make more money in less time.
            </p>
          </article>
          <div class="has-text-centered">
            <a href="https://wifimillionairebook.com/forms/order.php?aff_id=2154964" class="button is-medium is-warning is-rounded has-text-weight-bold">
              Get your copy now for only $3.00
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section has-background-light">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-two-thirds">
          <iframe width="100%" height="474" src="https://www.youtube.com/embed/wJ7l7X4F6kM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

          <div class="content is-medium">
            <p>&nbsp;</p>

            <p>You've made an incredibly smart decision to register for the Workshop. My promise to you is that you'll love it, and after attending, this whole 'online business thing' will make a lot more sense.</p>

            <p>You'll be given everything you need to start generating commissions online from the comfort of your own home.</p>

            <h3>Shocking Statistic</h3>

            <p>Now, here is the potentially bad news...</p>

            <p>Did you know that after having done many of these around the world, I've discovered a shocking statistic. Less than 40% of the people who register for the Workshop actually show up!</p>

            <p>It's no wonder why most people who attempt to start an online business fail. The difference between those who do well from in internet marketing from those who don't, is their willingness to take action.</p>

            <p>So make a commitment to yourself right now that you're going to be one of the elite few who follow through and show up - after all, it's your future that we are talking about here.</p>

            <p>My team will give you the training you need to do well - but you must attend for them to do that. Please set yourself a reminder right now - here's the details for the sessions again...</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <h1 class="title is-1 has-text-centered">Event Details</h1>
      <div class="columns">
        <div class="column is-4 is-offset-2">
          {% for place in location.places %}
          <div class="columns">
            <div class="column is-half">
              <span class="has-text-weight-bold">{{place.name}}</span><br>
              12:30 pm
              <br>
              6:00 pm
            </div>
            <div class="column is-half">
              <span class="has-text-weight-bold">{{place.date}}</span><br>
              {{place.address|safe}}
            </div>
          </div>
          {% endfor %}
        </div>
        <div class="column is-4">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d453478.80065583123!2d152.7130057420838!3d-27.381863109445288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b91579aac93d233%3A0x402a35af3deaf40!2sBrisbane+QLD%2C+Australia!5e0!3m2!1sen!2smy!4v1523730224502" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
      </div>

      <div class="columns is-centered">
        <div class="column is-8">
          <article class="content is-medium">
            <p>&nbsp;</p>

            <p>Lastly - you're going to be getting some emails from me. Some will be reminders... but a lot of them will be tips and free training on how you can generate money online.</p>

            <p>Everything I teach you comes from my own experience. You'll get a lot of value out these emails.</p>

            <p>These emails will come from my email address <a href="mailto:contact@onlinecommissioner.com">contact@onlinecommissioner.com</a></p>

            <p>I highly recommend you add that email address to your contacts list - otherwise, they may end up in your spam folder.</p>

            <p>In fact, do me a favor and check your inbox right now - if the confirmation emails have landed in your spam folder, you'll want to clearly mark them as 'Not Spam' so it doesn't happen again.</p>

            <p>
              Got a Question?
              <a class="button is-info" href="https://fb.me/myonlinecommissioner">
                <span class="icon"><i class="fab fa-facebook-f"></i></span>
                <span>Reach Out To Me In FB!</span>
              </a>
            </p>

            <p>Speak soon,</p>

            <p class="image is-128x128">
              <img src="../assets/img/bakar-rahman.jpg">
            </p>

            <p>
              <strong>Bakar Rahman</strong><br>
              Founder of OnlineCommissioner.com
            </p>
          </article>
        </div>
      </div>
    </div>
  </section>

  <footer class="footer">
    <div class="container has-text-centered">
      <p>
        <a href="#">Privacy Policy</a> |
        <a href="#">Terms &amp; Conditions</a> |
        <a href="#">Income Disclosure</a>
      </p>
      <p>
        Copyright 2018
        &bull;
        Bakar Rahman, Online Commissioner
        &bull;
        All Rights Reserved
      </p>
    </div>
  </footer>
{% endblock %}
