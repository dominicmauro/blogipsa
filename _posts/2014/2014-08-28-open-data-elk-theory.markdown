---
layout: post
title: "Open Data and Elk Theory"
date: 2014-08-28 07:10:40 -0400
categories: 
- The Digital Age
---

In my day job, I've researched and written a lot about data sharing by governments, or "[open data](http://opengovdata.io)". The "how" is pretty well-settled. If you're an agency and you want to share data with the public, you either get yourself a nice [open data portal](http://data.gov), or maybe you just have a page on your web site with a bunch of CSV files. Doesn't really matter, to be honest.

As for the "why," well, the important part of open data (and management generally) is that you, as an agency or department or bureau or city or whatever, have access to this data in a form that is useful to you. Yes, releasing it so [nerds can make apps](http://nycbigapps.com) is nice. 

But frankly, I care more about the governments' nerds having meaningful access to this information than nerds hunting for the next big startup. Open data is information that you've busted out of some [vendor-locked-in silo](http://www.businessweek.com/managing/content/feb2010/ca2010025_358633.htm) is information that everyone at your agency can use. 

If only one person in your office can actually access that information, your institutional wisdom suffers. Your agency's ability to improve its performance suffers, as does your ability to manage (read: regulate) what you're supposed to be managing; that can mean potholes or crime or bank loans or anything.

### What? Why? Elk?

So the "why" is almost as straightforward as the "how." But there's a bit of a struggle when government agencies are deciding the "what" in open data. It's complicated and inextricably linked with the "why" from above.

What do we publish on our open data portal? Why do we publish it? It's the most important data, right? But what's important? How do we know? What data do we even have? 

And that last one is the biggest question. If you don't have a clear view of your institutional knowledge when you're deciding what to publish, how are you even doing your day job? Are you hoping that the right people have access to the right information? Are you assuming that spreadsheets migrate from desktop to desktop as they're needed? Are they like elk?

The idea here is that open data is perhaps most useful as an exercise in institutional epistemological self-reflection. What do you know, how do you know it, where is it written down, and why is it known? What is unknown? Why don't you know it? You cannot manage what you do not measure. If you can't produce a list of what you measure, or what you know (i.e. what data your agency collects), you're not *managing* so much as *guessing*.

### A Vivid Example

A recent [article in The Atlantic](http://www.theatlantic.com/features/archive/2014/07/why-poor-schools-can-t-win-at-standardized-testing/374287/) delves into this kind of scenario. It starts out kind of puffy, as a parent attempts to use Big Data Analytics to help her child overachieve on standardized tests. It sounded pretty comical. 

In order to crunch the numbers to game those tests, the author and data whiz Meredith Broussard needs to know the names of the curricula to put into her spreadsheets.

That's where things go pretty spectacularly wrong:

> The first challenge came when I asked the School District of Philadelphia for a list of which curricula were being used at which schools. If you want to know which books should be in a school, you need to know the name of the curriculum the school uses. (Using a branded curriculum like Everyday Math allows a school to place its orders more efficiently and negotiate a bulk discount.)
>
> “We don’t have that list,” an administrator at the Philadelphia Office of Curriculum and Development told me. “It doesn’t exist.”
>
> “How do you know what curriculum each school is using?” I asked.
>
> “We don’t.”
>
> There was silence on the phone for a moment.
>
> “How do you know if the schools have all the books they need?”
>
> “We don’t.”

Okay. Pause. Time out. Wow. The article covers how standardized tests are basically asking students to regurgitate answers from specific textbooks. The same companies that make the tests make the books. Seems like a nice racket if you can get it.

And Philadelphia (and virtually every other large urban school district) doesn't know what books what schools are using. They don't know what each school is studying.

So you can figure out the implications of this pretty quickly. Test scores are inextricably linked to access to specific textbooks. The school doesn't measure (and therefore cannot manage) what books go where. Fill in the blanks.

### Even worse implications

It actually gets a lot worse than that in the article. It's simply horrifying. Of course, in the absence of anything resembling effective management, teachers do what teachers do best:

> Urban teachers have a kind of underground economy, [math teacher] Cohen explained. Some teachers hustle and negotiate to get books and paper and desks for their students. They spend their spare time running campaigns on fundraising sites like [Donors Choose](http://donorschoose.org), and they keep an eye out for any materials they can nab from other schools. 
>
> Philadelphia teachers spend an average of $300 to $1,000 of their own money each year to supplement their $100 annual budget for classroom supplies, according to a Philadelphia Federation of Teachers survey.

For the last decade, federal funding for school districts has been based on [standardized test scores](http://archives.republicans.edlabor.house.gov/archive/issues/109th/education/nclb/nclbfunded.htm). So here's how it works. If your kids don't get the books, they don't pass the tests. If they don't pass the tests, your district doesn't get the money to buy the books so next year's kids can pass next year's tests.

### Okay, This Looks Bad

What happens when the school district runs out of money? If your soul hasn't been ground into dust and ashes by reading the article already, I guess one more look can't hurt.

Take a deep breath. We're going back in.

> The Elements of Literature textbook costs $114.75. However, in 2012–2013, Tilden (like every other middle school in Philadelphia) was only allocated $30.30 per student to buy books—and that amount, which was **barely a quarter the price of one textbook**, was supposed to cover every subject, not just one. 
>
> My own calculations show that the average Philadelphia school had only 27 percent of the books required to teach its curriculum in 2012-2013, and it would have cost $68 million to pay for all the books schools need.

Oh. Well, the Philadelphia school system actually has a [$2.4 billion budget](http://webgui.phila.k12.pa.us/uploads/D-/Da/D-DathqgMoEcPdXEk1Dn2A/Budget-Presentation-June-30-2014.pdf). $68 million for books is nothing. It's less than 3% of your total budget, and this is obviously an essential part of a budget. I mean, I'm just some guy with a law blog. Surely they know they have to buy textbo-

> Philadelphia schools were allotted $0 per student for textbooks. The 2015 budget likewise features no funding for books.

**OH COME ON**. 

Are you people even trying? Your entire school district is run on some guy's overworked copy of Excel, and your funding depends on kids guessing the right answers from textbooks their teachers have never even *seen*. Frankly, it's surprising that only [one school](http://www.cnn.com/2014/05/09/justice/philadelphia-school-cheating/) has taken matters into its own hands and started cheating like crazy.

And apparently, this isn't a sign that Philadelphia is some anomalously abysmal school system. This is just how most urban school districts go. They're gigantic and they're not getting the funds they need to implement the kind of systems to manage the textbooks they need to get the funds they need to etc etc. It's beyond sad.

### The Moral

What have we learned? If you're not measuring it, you can't manage it. If you're collecting data but it's not in useful formats, you're not measuring it. If you're sharing data as part of an open data initiative, you are by definition keeping data in a useful format.

Oh, and our schools are screwed and this is is un-American and it's just bad policy because kids eventually become adults and if you completely neglected their development you stole their opportunity to participate in society and that seems horrifying and *wrong* and how is this not a giant problem for everyone.

But also spreadsheets.