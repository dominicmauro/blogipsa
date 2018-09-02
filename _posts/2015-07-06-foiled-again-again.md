---
layout: post
title: "FOILed Again and Again"
date: 2015-07-06 01:48
categories: 
- "We Can't Have Nice Things"
---

*Update July 29, 2015: One of the RecordTrac folks has reached out, and I'm pretty badly mistaken on a number of fundamental premises about this. The good news is that the universe is not as bad as I thought. The bad news is that I have added to the number of idiots writing incorrect things on the Internet. Your move, universe.*

I spend a lot of time at my day job researching freedom of information laws around the country. I look for the best practices in other states (or cities, I'm not picky), and then try to get those adopted here in New York. Now, I'm not just looking at the text of the laws – those take a long time to change – I'm also looking at the way those laws are implemented.

You know how freedom of information (FOI) laws work, right? You send an FOI request to a government agency for a record in their possession, and they have to give it to you. There are exceptions for medical information and other private stuff, like your cell phone number and so on. But that's the gist. 

One day in my research, I came across this website built by the city of Oakland, California. They've got a [portal called RecordTrac][1] which people can use to send FOI requests to any agency in the city. City agencies can respond to the FOI requests and send the documents to the user. Most importantly, each request and its response are public by default and searchable. This saves people and agencies the time of re-asking and re-answering the same questions over and over again.

*Sidebar*: the nerds in the audience are screaming "it's a [bug tracker][2]" at the tops of their lungs. And yeah, this is exactly what RecordTrac is. Smart managers track issues with their projects. Open source projects track their issues out in the open, so they don't get a thousand emails with "it doesn't work" in the subject line every day. A freedom of information request is a request to provide data that the government isn't providing on its own. It's left as an exercise to the reader to determine whether government should publish this information or not. (Hint: yes.)

### Code for America

So Oakland didn't invent this RecordTrac software themselves; it was built by a team of fellows working for Code for America. Code for America hires nerds and sends them to work in government offices around the country, to show how much better government could work if it had more nerds. 

At the time, Code for America fellows were expected to take what they learned the government needs and… start a company to sell that service to governments everywhere. I'm decidedly ambivalent about this model. There are worse things than making a buck from a good idea, and I'm sure plenty of governments would be happy to pay for a service that directly addresses their biggest obstacles on a day to day basis. And government still gets free nerds for a year. That's a win-win!

But startup culture. I just… I'm as bemused as anyone by the fetishization of start-up culture and the social class of entrepreneurs among my nerdy peers. [It's a joke][3], and some people make a [staggering amount][4] of money on it while most don't. That makes it no better or worse than starting your own restaurant or lottery collective.

Apparently, Code for America has suspended the practice of embedding nerds for the purpose of creating startups. However, this was its practice for [most of its existence][5], including the Oakland fellows' time.

### Back to Oakland

I've had the good fortune to interact to one degree or another with some of the fellows who built RecordTrac. They seem like great folks.

But, uh, they reinvented the wheel. A free and [open source][6] software system called Alaveteli has been in use in the United Kingdom since about [2007][7]. It does exactly the same thing that RecordTrac does. It has dozens of contributors and is in extremely active development. Alaveteli had been used for [hundreds of thousands][8] of successful requests in the UK before Oakland ever got its Code For America fellows.

The fellows made RecordTrac despite the fact that there was already great FOIL software out there. Instead of taking an afternoon to install and customize Alaveteli, the Code For America fellows wanted to make their own software platform so they could kick off their own startup later.

The fellows had one year to spend on using technology to solve problems, and they spent most of it reinventing a wheel instead of making it go further. 

As an intellectual property attorney, there are some grey areas about who specifically owns the code for RecordTrac. I haven't seen the contracts that the fellows signed with Code For America, or that Code For America signed with Oakland, or Oakland signed with the fellows. Any one of those parties could own the copyright to the source code. According to the [source code][9], Code For America owns at least some of it. Also, given that it's open source, it might be hard to sell that software to folks when they can install it themselves.

### Re-reinventing the Wheel

So the other day, I saw a [press release on GovTech][10] from the Oakland Code For America fellows. They’ve *rewritten their software from scratch* and call it NextRequest. They've solved the messy problem of selling open source software by rebranding it as a hosted service. 

So they reinvented the wheel once as RecordTrac, and now they’ve re-reinvented it again as NextRequest. 

Look, I want smart civic-minded nerds to make a living. There aren't enough people doing this kind of work in this kind of space, and I firmly believe the world will be a better place for it. But I wish they would have become America’s top Alaveteli platform instead of spending all this time getting to this point. We could have been here years ago, right?

And hey, lest you think I'm picking on these folks, the field of FOI portals seems to be particularly popular for wheel-reinvention. You've got [FOIA Machine][11] and [MuckRock][12], and the most successful one in the US: [FOIA Online][13], built by the US Environmental Protection Agency for a cool $1.1 million.

Because we're all friends here: even I was on a hackathon team that build a [rudimentary FOIL portal][14] back in 2012. How the time does fly. In forty-eight hours, we reinvented the Alavateli wheel because fixing the actual problem (i.e. solutions for agencies deluged with FOI requests) is much harder than fixing the superficial problem (i.e. it can be a little daunting to make an FOI request for non-lawyers). This sentence represents me waving at everyone from inside my glass house. 

It's just a little bit deflating to know that rather than run this race, we're all trying on different pairs of shoes at the starting line. Come on, civic technologists. We can do better.

[1]:	http://records.oaklandnet.com
[2]:	https://bugzilla.mozilla.org/buglist.cgi?quicksearch=address
[3]:	http://www.metafilter.com/143956/How-to-Win-the-Lottery
[4]:	http://www.bloomberg.com/news/articles/2015-03-17/the-fuzzy-insane-math-that-s-creating-so-many-billion-dollar-tech-companies
[5]:	http://www.codeforamerica.org/companies/incubator-accelerator/
[6]:	https://github.com/mysociety/alaveteli
[7]:	https://www.whatdotheyknow.com/request/refuse_and_recycling_collection#incoming-7
[8]:	https://www.whatdotheyknow.com/list/successful
[9]:	https://github.com/codeforamerica/recordtrac
[10]:	http://www.govtech.com/data/NextRequest-Record-App-Supercharges-Transparency.html
[11]:	http://techpresident.com/news/24187/foia-machine-exceeds-kickstarter-funding-goal
[12]:	http://www.niemanlab.org/2010/10/muckrock-makes-foia-requests-easy-but-will-reporters-use-it/
[13]:	https://foiaonlina.regulations.gov
[14]:	http://challengepost.com/software/openup-nyc