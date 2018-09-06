---
author: admin
comments: true
date: 2011-07-27 01:06:38+00:00
layout: post
slug: the-indictment-of-aaron-swartz
title: The Indictment of Aaron Swartz
wordpress_id: 849
categories:
- The News
---

Noted internet activist [Aaron Swartz](http://www.aaronsw.com/) has been indicted on a number of federal crimes, and I thought it would be fun to run through the accusations against him, to preview what the trial looks like. In a subsequent post, I'll discuss the actual charges and how screwed Swartz is. MIT has[ a copy of the indictment in PDF form](http://web.mit.edu/bitbucket/Swartz,%20Aaron%20Indictment.pdf), which is probably ironic, but prolonged exposure to Brooklyn has rendered me incapable of detecting irony anymore.<!-- more -->

Very briefly, a non-profit called JSTOR has spent a lot of money buying tons of academic journals every month. They charge universities (and by extension, the students of said universities) as much as $50,000 a year for Netflix-style access to the JSTOR library. JSTOR also allow purchase of individual articles, at the publishers' option.

Aaron Swartz has been accused by a federal grand jury of writing a computer program to download millions of JSTOR's articles, and tampering with MIT's network to do it. He's been charged with a number of federal anti-hacking crimes, which I'll cover in a separate post. Today, I just want to go over the indictment.

One last thing: as a nerd reading this indictment, I can't help but notice areas where MIT is awfully inept. I'll be keeping a scorecard through this post: sketchy things Swartz did, and inept things MIT did. These aren't legal standards (doing something "sketchy" is definitely not a federal crime), but keeping score in these terms will be helpful in piecing together the overall narrative of the indictment; "Swartz deliberately crossed the line over and over again."

### Federal Anti-Hacking Law

Paragraph 8 mentions that "MIT also allowed guests of the Institute to have the same access as its students, faculty, and employees **for short periods of time** while they were on campus." This is important, because Swartz plugged a computer into the MIT network for days at a time, and one of the key elements to most of the charges is "unauthorized access" -- that Swartz exceeded his authority in accessing MIT's network, and through it, JSTOR's.

This is because the crimes he's charged with forbid unauthorized access of a computer [when x happens after y and z, etc]. Over and over, the indictment makes the case that 'Swartz understood that MIT and JSTOR wanted him to knock off the downloading; he used his technical expertise to access the networks against the wishes of MIT and JSTOR.'

In that same vein, paragraph 9 reads:

> JSTOR’s computers were located outside the Commonwealth of Massachusetts, and thus any communications between JSTOR’s computers and MIT’s computers in Massachusetts crossed state boundaries. JSTOR’s computers were also used in and affected interstate and foreign commerce.

This tracks the language of the **Computer Fraud & Abuse Act**'s definition of Protected Computer in 18 U.S.C. 1030 (e)(2). Virtually every computer (and most cell phones) fits this definition by now, but it's one of those things that still has to be recited. Don't read too much into the "commerce" bit; when the CFAA was passed into law in 1986, the Internet wasn't quite as ubiquotous as it is 25 years on. Most anything connected to the internet is used in interstate commerce these days.

I think this is a silly paragraph with which to take exception with the indictment. [The ](http://www.newyorker.com/online/blogs/newsdesk/2011/07/jstor-aaron-swartz.html)[New Yorker](http://www.newyorker.com/online/blogs/newsdesk/2011/07/jstor-aaron-swartz.html), however, thinks this is the part of the CFAA that courts have struggled to define. Longtime readers of Barely Legally will recall that it's not "interstate commerce" that has been expansively defined, it's "unauthorized access" – a good example is my [first post on the Lori Drew case](http://blog.ipsaloquitur.org/post/terms-of-service/). Again, the narrative is 'Swartz knew he was supposed to stop, but he kept pushing,' not 'MIT's network is used in interstate commerce.'

Anyway, on to the good stuff.

### Trapped in the Closet

Right off the bat, Paragraph 11a accuses Swartz of "breaking into a restricted computer wiring closet at MIT," and 11b says he plugged directly into an internal network switch [instead of into one of the plugs in the library]. I'm struck by the bit about the closet; the indictment drops that accusation quickly, and moves along. If Swartz had actually picked a lock or something, it would certainly would have been mentioned. As it is, it seems like MIT forgot to lock their expensive network bits up.

<sidebar> For those that aren't giant nerds like me, a network switch is kind of like a power strip, but for networks. So if you have a lot of things to plug in all over a campus, you can plug switches into switches, kind of like how [Uncle Clark](http://www.youtube.com/watch?v=ian6NyXpszw) plugs power strips into power strips every Christmas to wire the entire house with festive lights. </sidebar>

As I said, this indictment is full of things that Swartz did that seem pretty sketchy, and things that MIT did that seem pretty inept. Do note that regardless of whether or not MIT locked the closet with its expensive network bits, "breaking into" opening and walking through a door without permission. This one ends up a push. 

**Swartz: 1, MIT: 1**.

### With Intent To Harvest

Paragraph 13 accuses Swartz of buying an Acer laptop "with the intent of using it to automatically and systematically harvest JSTOR’s archive of digitized journal articles." Swartz plugged the laptop in the closet and registered it under the name "Gary Host" - Swartz/Mr. Host combined his first initial with his last name to designate the laptop "Ghost Laptop." Swartz/Mr. G. Host also provided a fake email address. I don't think it's a stretch to think that he's trying to hide something already. 

**Swartz: 2, MIT: 1**.

Swartz then ran a program from his laptop within MIT that automated the process of downloading as many articles from JSTOR as possible; the indictment says this program was "designed to sidestep or confuse JSTOR’s efforts to prevent this behavior." This phrase comes up a few times, but the indictment never explains exactly how this program sidestepped or confused anyone.

Beginning with paragraph 18, the indictment explains the game of cat and mouse that Swartz, MIT, and JSTOR played to keep the former's laptop(s) off the latter's network(s).

September 2010:

* September 24, Swartz installs an Acer laptop in the MIT storage closet.
* September 25, Swartz downloads "an extraordinary volume of articles from JSTOR."
* September 25, JSTOR blocks the Acer laptop's IP address.
* September 26, Swartz obtains a new IP address from the MIT network.
* September 26, JSTOR blocks the Acer laptop's new IP address.
* September 26, JSTOR also blocks the entire octet of IP addresses of 18.55.6.*, which knocks 255 legitimate MIT users off JSTOR. This ban lasts for three days.
* September 27, JSTOR notifies MIT that someone is downloading tons of articles using MIT's network. MIT blocks the Acer laptop's MAC address. (Despite what the indictment says, a laptop's MAC address is absurdly easy to change.)

This is a lot to unpack so far. Crawling the JSTOR web site and downloading everything you find is quite specifically forbidden in the JSTOR [Terms and Conditions of Use](http://www.jstor.org/page/info/about/policies/terms.jsp), under 2.2(f). That raises our scorecard of sketchy things to **Swartz: 3, MIT: 1**. When JSTOR blocks the Acer laptop's IP address, Swartz just requests a new IP address from MIT and carries on. 

**Swartz: 4, MIT: 1**.

MIT apparently only figures out there's a problem when JSTOR bans Swartz's laptop along with 255 others at MIT. Then, MIT bans the Acer laptop's MAC address. (An IP address indicates a computer's location on a network. The MAC address is like a serial number that uniquely identifies a device.) I don't think it's fair to say that's as inept as leaving server closets unlocked, because it's not necessarily a knock against MIT that they don't police JSTOR's network for them.

October 2010:

* October 2, Swartz changes the Acer laptop's MAC address and gets a new IP address.
* October 8, Swartz connects an Apple laptop to MIT's network under the name Grace Host, calling it "ghost macbook" with another fake email.
* October 9, Swartz uses both laptops in concert to download so many articles that some of JSTOR's servers go down.
* October 9, JSTOR blocks the entire MIT network from access to JSTOR's network, "for several days."

After Swartz changes the MAC address on his Acer laptop, adds a second laptop to MIT's network, and accidentally brings down parts of JSTOR's network, I have it as **Swartz: 5, MIT: 1**. I'd like to think that at some point in all this, MIT would have been more aggressive in kicking Gary and Grace Host off the network. I don't know what MIT's network looks like, but if they really have no filtering other than by MAC address, all their server closets might as well be unlocked.

**Swartz: 5, MIT: 2**.

### Download 2: Electric Boogaloo

During November and December of 2010, Swartz uses his two laptops to download more than **two million articles** from JSTOR. The indictment notes that this is more than one hundred times the number of downloads by all legitimate MIT JSTOR users** combined**. Swartz is familiar enough with the network architecture at MIT by this point that he assigns his laptops their own IP addresses. 

This means he gets to skip the Guest Registration process entirely, because his computers tell the MIT network that they're supposed to be online at 18.55.6.whatever, _and MIT's network is perfectly okay with this_. He goes from "Hi, I'm Gary Host, using Ghost Laptop, and I'd like an IP address, please" to "I'll be using 18.55.6.117, thanks. Hold all my calls."

Now, my network at home is set to allow self-assigned IP addresses. But I also keep my front door locked, and my wi-fi behind a password. MIT just leaves the server closet door unlocked. The mind boggles. Either lock up your network switches, or don't configure them to let every Tom, Dick, and Gary [Host] self-assign an IP address. **Swartz: 6, MIT: 3**.

According to Paragraph 26 of the indictment, Swartz also hid his laptop (and its many external hard drives that hold the JSTOR articles) under a box in the closet, which is probably no sketchier than self-assigning an IP address and plugging into a server closet, but it's yet another step he took to maintain his access to MIT's network, and through that, JSTOR's. **Swartz: 7, MIT: 3**.

In January, Swartz removed his computer equipment from the server closet, entering the basement while holding his bike helmet over his face like a mask. Swartz is pretty clearly aware that he's crossing a line here: I don't imagine most MIT students walk around campus like that. Later that day, he connected the Acer laptop to the MIT network in a different building, with a new MAC address. This time, he went through the guest authorization process, again with a fake name, though probably not from a server closet. **Swartz: 8, MIT: 3**.

### The Loose Ends

Altogether, Swartz downloaded approximately 4.8 million articles, of which 1.7 million were available for sale. The indictment says he "stole" 4.8 million, but stealing is the act of taking something away from something else. Really, he accessed a network and made copies he didn't have permission to make.

The grand jury also found that Swartz intended to distribute these files, but this doesn't have anything to do with the unauthorized access charges, or his purported "stealing." I think this is meant to add to the parade of sketchy things the jury is supposed to consider, but frankly, it's not relevant to any of the charges.

In my next post, I'll review what crimes Swartz is charged with, as well as my two cents about the merits. Spoiler: the first one's a laugher!
