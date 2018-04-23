---
# vim: set ft=pug:
lang: pug
meta:
  title: Thank you for downloading the Enrichment eBook
  description:
productURL: "http://track.mobetrack.com/aff_c?offer_id=1724&aff_sub=enrichment_ebook&url_id=3452"
content:
  epiphany:
    - h: TOTAL PART-TIME
      t: You can do everything in as little as 1 to 2 hours a day.
    - h: ZERO-RISK
      t: >
        Keep your full-time job until you're making so much money you won't
        need it anymore.
    - h: DO THIS ANYWHERE YOU WANT
      t: You can live anywhere you want and still make money.
    - h: MAKE MONEY WHILE YOU'RE ON VACATION
      t: >
        This amazing method lets you make money while you sleep, shop, or are
        on vacation!
    - h: WE DO THE DIFFICULT WORK FOR YOU!
      t: >
        My team of experts do all the selling... all the new product creation
        and fulfilment... and all the customer service work.
    - h: GET-PAID EVERY 2 WEEKS
      t: >
        Your commissions will be paid into your bank account on the 1st and the
        15th of every month, when you successfully use my simple system.
    - h: THIS IS REAL! AND 100% LEGITIMATE!
      t: >
        You need an opportunity that is guaranteed to work... and this is it!
        You can see it from the group cheque photos as shown above.
    - h: NO MLM!
      t: >
        This has NOTHING to do with multi-level marketing. There's NO pyramid
        plan. NO home parties. NO chasing family and friends. NO recruiting
        confusion. NO complicated comp plans. And nobody has to know what
        you're doing to make money.
    - h: TOTAL FREEDOM
      t: >
        You can make money and have plenty of time for your family, friends,
        and social life.
    - h: A LONG-TERM OPPORTUNITY
      t: >
        This could make you money for the next 5... 10... and even 30 years...
        and beyond!
    - h: THE PERFECT RETIREMENT PLAN
      t: >
        You can pass this long-term wealth creation system along to your kids
        and grandkids when you retire.
    - h: STAY AT HOME &amp; MAKE MONEY
      t: You can do everything from home.
---

extends ../../templates/layouts/base
include ../../templates/mixins/checklist
include ../../templates/mixins/columns
include ../../templates/mixins/header
include ../../templates/mixins/img
include ../../templates/mixins/section

mixin productLink
  a(href=`${productURL}&aff_id=${affiliateID}`)&attributes(attributes)
    block


mixin actionButton
  .has-text-centered
    +productLink(class=`button is-large is-${attributes.color||'danger'} is-rounded`)
      block

block body
  +header(
    logo='img/logo-online_commissioner_tran_wht-2x1.png'
    background-color='info'
    icon='book'
    title='eBook Giveaway'
  )

  +hero(background-color='info')
    +cols('centered')
      +col(7)
        +tt(size=1) Thank You
        +st(size=3) For downloading my e-book
        .message.is-warning
          .message-header
            | You will receive an email with the download link shortly
          .message-body.
            On the rare occasion you have not received your confirmation
            email, please check your spam folder as a precaution. Please
            mark it "not spam" if you found the email in spam folder to
            receive future emails in your inbox.

  +se
    +tt(size=1) Meanwhile...
    +st(size=3).
      Discover the time-tested system to bank an extra $10k, $50k or more per
      month from home.
    +co
      p.
        If you want to start making $10,000 a month, then scale to $50,000 a
        month &amp; then to $100,000 per month within the next 30, 60, 100
        days, then...
      p.
        This will be the most important page you'll read all year...
      p.has-text-grey.
        This is for the tremendously ambitious entrepreneurs only. Please do
        not proceed to read the rest of this page unless you have the courage
        to place a six-figure, or even a seven-figure price tag on yourself
        from this day forward
    +actionButton Yes! I Am Ready To Start Earning $10k+ A Month!
    h3.is-size-4.has-text-danger.has-text-centered ($49 Risk Free)

  +se(background-color='light')
    +tt
      | From:
      em The Desk Of Bakar Rahman The Online Commissioner
    +st(size=4)
      | Date: April 2018
    +cols('multiline')
      +col(6)
        +img(size='4by3' src=s('img/person-bakar_rahman_01-4x3.jpg'))
      +col(6)
        +co
          p.
            If you're sick and tired of chasing the "next best" thing, and if
            you’re ready to create real results, real wealth, and real freedom,
            then close the door and read every word of this page now.
          p.
            By the time you reach the end of this letter; you'll not only
            understand my system, but how you can virtually download it for
            free and use it to become one of my biggest success stories I'm
            creating by December 31st, 2020.
      +col(6)
        +co
          p.has-text-weight-bold Don't believe me?
          p.
            I'm not asking you to. If you're smart enough, you'll stick around
            and watch the irrefutable income proof below, and discover how you
            can activate it to start earning passive, consistent income
            online... Deal ?
          p.has-text-weight-bold Let's get started.
          p.
            Before I share my secret, I want to be clear that 'Easy Money' and
            'Get Rich Quick' do not exist. Most of the people who get 'creamed'
            in this business have a lottery based mentality, and suffer from
            the trappings of entitlement.
      +col(6)
        +img(size='4by3' src=s('img/person-bakar_rahman_02-4x3.jpg'))
      +col(6)
        +img(size='4by3' src=s('img/person-bakar_rahman_03-4x3.jpg'))
      +col(6)
        +co
          p.
            With that being said, I'm going to show you how to create REAL
            WEALTH using this system. This system I've shared with people to
            over 100+ countries...
          p.
            A real education based platform that offers a lucrative business
            opportunity "Online Franchise" like system...
          p.
            And... while most of the work is done for you, every smart
            entrepreneur knows that success in any business requires time,
            money and persistence.
      +col(6)
        +co
          p.
            After all this success, I'm now on a mission to give back and
            create new success stories. And, I now have a powerful secret
            formula.
          p.
            In fact I have set a goal to create 100 new online millionaires
            using this proven time tested 'insider' system. This isn't for
            everybody. Only those who are ready to play full out.
          p.has-text-weight-bold Are you game?
      +col(6)
        +img(size='4by3' src=s('img/ppl-mobe_event_hk_01-4x3.jpg'))

  +se
    +tt(size=2) $175 MILLION DOLLAR CASH COW...
    +co
      p.
        Let's be frank. You want to create cash flow on demand so you can live
        the life of your dreams, make a difference and have the location, time
        and income freedom that you truly desire, deserve and dream about.
      p.
        This system has already paid out a WHOPPING $100+ Million Dollars in
        commissions to thousands of people like you and me, in 37 countries
        around the world.
      p.
        In the next 3 years we are set to pay out another 150 Million Dollars
        in automated commissions! Don't let your piece of the pie get eaten by
        someone else.
      h4.has-text-centered Do You Want To Be Next?
    +actionButton Yes! I Am Ready To Get Started NOW!

  +se(background-color='light')
    +tt(size=2) No Technical Skills Needed
    +co
      p.
        These days it's near enough impossible for the average person to make a
        decent income online. Ineffective, outdated, and over hyped systems
        plague this industry.
      p.
        After seeing so many people getting burnt, and struggling to make real
        money, I was on a quest to find a solution that would work for the
        'little guy'. Something that works 100%.
      p.
        I had heard from a few 'insider' friends about a secret 'by application
        only' done for you marketing system they were using to generate $10,000
        - $100,000+ per month in fast automated income, just by driving simple
        leads into ready made high ticket sales funnels.
      p.
        Luckily for me I submitted my application and got accepted, and what I
        discovered blew my mind. No matter whether you are a complete newbie
        who has never made a dime online, or a seasoned vet - If you are
        accepted, you can use this system to bank big money, and it's backed by
        a very strong 100% GUARANTEE.
      p.
        Without ever needing to do anything complex:
    +cols
      +col(5)
        +cl(icon='times' icon-color='danger')
          +ci Never Create A Product
          +ci Never Build A Website
          +ci No Programming Needed
          +ci No Merchant Accounts Needed
          +ci No Customer Service Needed
          +ci No Selling Needed
          +ci No Technical Skills Needed
          +ci No Sales Funnels Needed
          +ci No Experience Needed
      +col(7)
        +img(src=s('img/ss_fb-deborah-5x3.jpg') size='5by3')
        br
        +img(src=s('img/ss_fb-adeline-2x1.png') size='2by1')

  +se
    +tt
      | We quickly became the most powerful community of internet entrepreneurs in the world
    +co
      p.
        The greatest part was, it was a COLLECTIVE VICTORY. The results were
        amazing and consistent.
      p.
        New marketers with little or no experience in this industry were
        finally seeing results. People who had NEVER achieved success in this
        industry, are now making money. Many in their first or second month!
      h4.has-text-centered You Don't Have To Struggle (Unless You Want to!)
    +cols
      +col(6)
        +cl
          +ci.
            We have a revolutionary marketing and education platform that
            eliminates most of the individual marketer's in-experience and
            abilities as variables for their success.",
          +ci.
            It teaches you how to generate the leads, then filters and
            qualifies them for you.,
          +ci.
            Highly trained professionals from our in house call center
            follow-up with your prospects on your behalf, helping to close you
            sales so you can get paid. This eliminated the most dysfunctional
            aspects of selling, telling, and explaining.,
          +ci.
            This is a revolutionary way of marketing that levels the playing
            field so that new marketers are often able to enjoy the same
            results as seasoned veterans without having to deal with many of
            the frustrations and long learning curves.,
          +ci.
            It allows you to focus on building your business while
            "outsourcing" the most difficult sales and marketing aspects to
            experienced professionals, until you become one!,
          +ci.
            This is one of the first marketing and education platforms ever
            created for the home business industry… and is no-doubt causing a
            stir!
      +col(6)
        +img(src=s('img/ppl-mobe_event_20160619_01-3x2.jpg') size='3by2')
        br
        +img(src=s('img/ppl-mobe_event_20160619_02-3x2.jpg') size='3by2')
        br
        +img(src=s('img/ppl-mobe_event_20160619_03-3x2.jpg') size='3by2')
        br
        +img(src=s('img/ppl-mobe_event_hk_01-3x2.jpg') size='3by2')
    +actionButton I Am Ready To Get Started Now

  +se(background-color='light')
    +tt(size=2)
      | MY BIG EPIPHANY
      br
      span.has-text-danger HIGH TICKET COMMISSIONS
    +st(size=3 text-color='danger')
      THE SECRET SOURCE
    +st(size=4)
      | Here Are 12 Reasons Why The Wifi Millionaire Marketing System Can Make You Set for Life:
    +cl
      each reason in content.epiphany
        +ci
          span.has-text-weight-bold= reason.h
          br
          span= reason.t

  +se
    +tt(size=2 spaced).
      The WiFi Millionaire Marketing System is making massive sums of money for
      many other people... Just like you
    +st(size=3 text-color='danger').
      "The world's only online marketing system that allows you to make 100%
      automated commissions of $1,250, $3,300, $5,500, and even $10,000 per
      sale!"
    +co
      p.
        When I first got started with internet marketing and I had my friends
        and family laughed at me, I was NOT the kinda person that just wanted
        to make $100,000 a month from the get-go.
      p.
        IN fact - the first thing I wanted to do was just make $10,000 a month.
        If I could achieve this fast, then I could tell my parents that I'm
        earning more than a company general manager.
      p.
        Funny - but that's what was my main driver.
      p.
        I immediately came across what most people do, which was to sign up for
        a clickbank account that pays you 50% of an ebook which I remember
        slogging away for 2 entire days trying to make $15 commissions...
      p.
        I quickly realised that this was not the way I was going to make BIG
        LIFE CHANGING MONEY.
      p.
        I mean - think about this, to make $10,000 a month in commissions I
        would have to sell HUNDREDS of customers, or I could just use this
        thing called "High Ticket".... and make bigger commissions per sale, I
        mean there's over 1.7 Billion people online in the world and I just
        need to know how to TAP INTO IT....
      p.
        So there was my Big-Epiphany...
      p.
        With most Internet Marketing programs and affiliate products, you’re
        looking at making minuscule commissions of $25 - $50 per sale (on
        average).
      p.
        Now let’s say your ideal income to quit your job (if you have one) or
        live your dream lifestyle is $10,000 per month.
      p.
        At $25/sale =&gt; you need 500x$25 sales = $10,000.
      p.
        At $50/sale =&gt; you need 250x$50 sales = $10,000.
      p.
        It’s safe to say, that this is way out of the reach for most people.
      p.
        As soon as you get accepted, you’ll be working with our company, and we
        know exactly how to sell in demand, expensive high ticket products and
        services.
      p.
        Products and services that would be impossible for you to create and sell on your own.
      p.
        All you have to do is follow our 21 step training program, and drive
        leads into the ready made sales funnels we will provide for you. We
        take care of the rest.
      p.
        Every time our fully trained sales team make a sale for you, we deposit
        commissions of $1,250, $3,300, $5,500, all the way up to $10,000+
        directly into your bank account.
      p.
        I wish I could make it sound more complicated than that, but I can’t.
      p.
        We show you how to get the leads, and a trained sales team turn your
        leads into high ticket sales for you.
      p.
        You point your leads towards the system, and we deposit commissions
        into your bank account every time we make a sale for you.
      p.
        With this advanced done for you system, let’s look at how it can
        accelerate your income to reach your target of $10,000 a month in
        commissions…
      p.
        At $1,250 per sale you’d need to make 8 sales per month.
      p.
        At $3,300 per sale you’d need 3 sales per month.
      p.
        At $5,500 per sale you’d need 1.8 sales per month.
      p.
        At $10,000 per sale you’d need 1 sale per month.
      p.
        Can you see now why we have complete newbies with 0 experience reaching
        multiple 6 figures a month in sales, sometimes within weeks?
      p.
        The secret is in selling high ticket products, and NOT you trying to
        sell them, but utilising systems, processes, proven-platforms that do
        all the selling, telling, convincing for you so your job is to do ONE
        thing…
      p.
        Drive Website Traffic.
      p.
        That's it, and better yet - I'll give you a special resource where you
        can get Done For You Traffic to your website.

  +se(background-color='light')
    +tt(size=2) Done For You Sales System
    +st(size=3 text-color='danger') 100% Automated
    +co
      p.
        Selling high ticket products is the first step to you making a high end
        6 - 7 figure income online. This is the 'hidden' secret behind all the
        successful earners, and millionaire Internet Gurus.
      p.
        However, selling high ticket products yourself is not an easy task, it
        takes a lot of work. When you join our system today, you will get
        access to our proprietary 'done for you' sales system that has taken
        over 5 years to develop and does all the selling for you.
      p.
        Once you join, you will be given full step by step training on how to
        implement everything. You'll have your own personal business success
        coach who will work you through all the steps.
      p.
        It's as simple as 5 easy steps:
    +cols
      +col(5)
        +img(src=s('img/product-wifi_millionaire_02-16x9.png') size='16by9')
      +col(7)
        +co
          h4.
            STEP 1 - GET YOUR OWN INTERNET MARKETING SYSTEM IN A BOX STARTER
            KIT
          p.
            Join our private invite only high converting affiliate program, and
            21 step Wifi training system.
          p.
            It's By APPLICATION ONLY. You can do that by #[+productLink clicking here]
    +cols
      +col(5)
        +img(src=s('img/ss_product-wifi_millionaire-16x9.jpg') size='16by9')
      +col(7)
        +co
          h4.
            STEP 2 - ONCE YOU'VE COMPLETED ALL STEPS, NOW START PROMOTING TO
            PROFITS.
          p.
            Select from our ever expanding library of pre built high converting
            lead capture systems, or ready made sales funnels to promote.
          p.
            Simply follow the easy step-by-step instructions to start getting
            traffic, leads and sales to your business.
    +cols
      +col(5)
        +img(src=s('img/clip-leads_prospects_customers-1x1.png') size='16by9')
      +col(7)
        +co
          h4 STEP 3 - PROSPECTS TO CUSTOMERS.
          p.
            Follow our step by step traffic training videos, and drive leads
            into the system. This automatically turns strangers and website
            visitors into red hot repeat customers and sales.
    +cols
      +col(5)
        +img(src=s('img/clip-call_center_01-3x2.jpg') size='16by9')
      +col(7)
        +co
          h4 STEP 4 - AUTOMATING SYSTEMS TO MAKE SALES.
          p.
            Our custom email campaigns will immediately start communicating
            with your leads. Our fully trained, professional telesales team
            will call up your leads, and build a relationship, deliver value,
            then sell them our high ticket programs.
    +cols
      +col(5)
        +img(src=s('img/clip-phone_team_01-5x3.jpg') size='16by9')
      +col(7)
        +co
          h4 STEP 5 - START MAKING COMMISSIONS...
          p.
            Every time we make a sale for you, you earn a massive 50%
            commission! Earn automated commissions of $1,250, $3,300, $5,500
            and $10,000 per sale!
    +actionButton I Am Ready To Get Started Now

  +se
    +tt(size=2)
      span Here's everything you will be getting
      br
      span.has-text-danger when you get started today
    +cols('multiline')
      +col(5)
        +img(src=s('img/product-wifi_millionaire_02-16x9.png') size='16x9')
      +col(7)
        +co
          h4 DONE FOR YOU DIRECT SALES SYSTEM
          p.
            Instant access to the WiFi done for you direct sales system that
            deposits $1,200, $3,300, and $5,500 into your bank account
            (complete with 21 step lead generation &amp; training program).
      +col(5)
        +img(src=s('img/clip-phone_support_01-3x2.jpg') size='3x2')
      +col(7)
        +co
          h4 DONE FOR YOU FULFILMENT, PAYMENTS AND CUSTOMER SERVICE
          p.
            You'll get done for you product fulfilment, payment solutions and
            customer service so you can focus on the easy part, placing ads
            with our steps and getting leads.
      +col(5)
        +img(src=s('img/clip-phone_support_02-3x2.jpg') size='3x2')
      +col(7)
        +co
          h4 PERSONAL BUSINESS SUCCESS COACH
          p.
            Get access to a coach who will guide you through your journey so
            you will have someone by your side whenever you get stuck.
      +col(5)
        +img(src=s('img/clip-leads_prospects_customers-1x1.png'))
      +col(7)
        +co
          h4 HIGH CONVERTING SALES FUNNELS
          p.
            You'll have insider access to the MOST effective sales funnels and
            high ticket products online. These products are and funnels are
            private, and for members only.
      +col(5)
        +img(src=s('img/clip-traffic_plan-1x1.png'))
      +col(7)
        +co
          h4 30 DAY TRAFFIC PLAN
          p.
            Access to the most cutting edge strategies to generate traffic
            online, including YouTube, Facebook and Google advertising plans to
            get the most leads, for the cheapest price.
      +col(5)
        +img(src=s('img/clip-wwn-4x3.jpg') size='4x3')
      +col(7)
        +co
          h4 DAILY VIDEOS, WEBINARS &amp; TRAINING FROM TOP EARNERS
          p.
            You'll get motivational and tactical training &amp; strategies that
            are working right NOW from the Top Earning Experts in marketing.

  +se(background-color='light')
    +tt(size=2 text-color='danger') ...Plus Special Bonus (Worth $297)!
    +st(size=3).
      FREE training to kickstart the journey of unleashing your potential of
      becoming an internet rockstar.
    +cols('centered')
      +col(8)
        +img(src=s('img/product-internet_rockstar-4x3.png') size='4by3')
    +cl
      +ci.
        How To Make Yourself Stand Out Among Your Competitors
      +ci.
        How To Tell Your Story Like A Pro
      +ci.
        How To Get Started With Digital Marketing Platforms Such As Facebook To
        Begin Your Entrepreneurial Journey
      +ci.
        Much more...
    +co
      br
      p.
        You don’t have to be an expert to make money with this system. The
        system is designed to work for anyone who puts it into action. Success
        stories continue to POUR IN, daily.
      p.
        New marketers with little or no experience in this industry are finally
        seeing results. People who had NEVER achieved success, are now making
        money. Many in their first or second week!
      p.
        You see, there’s something special about this system. It allows
        ordinary people to follow a proven process that can’t get saturated,
        and earn real high ticket commissions. It allows newbies to start
        playing on a level playing field with the gurus. It gives honest people
        like us an opportunity to create a real income, working part time from
        home.
    +actionButton I Am Ready To Get Started Now

  +se
    +tt(size=2) YOU: My next 6 or 7 figure success story?
    +co
      p.
        This is a real business with real people, real effort is required. A
        lot of the heavy lifting have been done for you - all the tech madness,
        the annoying payment processing, all the legal stuffs are taken care
        for you.
      p.
        Now, I have a secret weapon in my hand that is 1000X more powerful than
        anything I have taught before.
      p.
        It is called the 'WiFi System'. Armed with this system, I am on a mission to create 100 new online millionaires by December 31st, 2020.
      p.
        I am looking for the right committed people who are tired of their
        current way of life, and ready to follow my instructions, and take
        massive action.

  +se(background-color='light')
    +tt(size=2)
      | Why join today &amp; why join ME?
    +cl(icon-color='dark')
      +ci.
        Completely automates your online marketing and frees up your time to
        spend as you wish - with your family and loved ones, with friends,
        traveling the world, other projects, sunbathing on the beach, it’s up
        to you,
      +ci.
        Makes you more money than you ever dreamed possible. When you combine
        the credibility and conversion power, then leverage that with this
        exciting new traffic source, you’ll be astounded by the sheer volume of
        cash it pumps out,
      +ci.
        Allows you to reach your audience with laser like precision. Never
        again do you have to pay for clicks of people who aren’t interested in
        your products, or waste time emailing people who would never buy anyway
        - it gives you total efficiency,
      +ci.
        You choose the amount of traffic you want - whether you want a handful
        of people a day, or thousands per hour, you can set the level to
        whatever you are comfortable with,
      +ci.
        Allows you to sell high-ticket items. Believe it or not, it’s just as
        easy to sell a high priced product of say $2,000 or more, as it is to
        sell a $7 product. The exact same principles apply, but to get to
        $10,000 a month you only need 5 sales at $2k, but at a $7 price point
        you need a whopping 1,429 sales! This way - you get richer, quicker,
      +ci.
        Gives you sky-high conversion rates...because there’s nothing I hate
        more than driving a large amount of traffic to a page - and having it
        fall on it’s face, converting at 1%, or 5%, when the fact is this
        system converts at over 50% on a consistent basis,
      +ci.
        Super fast results! There’s no need to wait weeks or months for your
        business to take off, when we can put everything in place today and
        have you making sales in almost no time at all,
      +ci.
        Expert positioning - become the ‘guru’ in your niche or industry
        without spending decades slowly climbing the so-called ‘ladder of
        success’ - here’s how you can leapfrog the competition and become the
        go-to source in your niche
    br
    +actionButton(color='info') I Am Ready To Skyrocket My Income NOW!
    h3.is-size-4.has-text-info.has-text-centered ($49 Risk Free)

  include ../../templates/footer
