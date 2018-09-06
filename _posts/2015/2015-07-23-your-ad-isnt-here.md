---
layout: post
title: "Your Ad (Isn't) Here"
date: 2015-07-23 12:09
categories: 
- "Eyeballs for Hire"
---

Joshua Benton on ad-blocking software being [built into Apple's iOS][1], and what this means for news publishers:

> For me, the arguments for using ad blockers range from the unconvincing (dude, information wants to be free) to the reasonable (I don’t need dozens of tracking beacons on every webpage) to the downright understandable (poorly built ads slow my browser to a crawl). I don’t use an ad blocker, but I do block all Flash by default for performance reasons, which accomplishes some of the same ends. The best arguments for adblocking are even stronger on mobile than they are on desktop — bandwidth and performance and battery life are all at a premium.
>
> This is worrisome. Publishers already make tiny dollars on mobile, even as their readers have shifted there in huge numbers. To take one example, The New York Times has more than 50 percent of its digital audience on mobile, but generates only 10 percent of its digital advertising revenue there. Most news outlets aren’t even at that low level.

That looks grim.

I agree with Benton. For my part, I've had Flash disabled for years; Flash runs slowly, and it's wildly insecure. There's really no good reason to use it. Up until the last few months, I've let Javascript run wild on the web. I initially installed a plugin to let me keep track of how many Javascript files each web page was loading, and was a little flabbergasted by how many dozens of Javascript files sites want to run every time you click a link.

On the one hand, I'm on these web sites, consuming the Content that some person was paid to write. If I'm reading, I should be generating money for the site, right? That's supposed to be the tradeoff.

On the other hand, these publishers have basically zero incentive to limit the number or scope of the Javascript things they're running in my browser. Publishers seemingly just rent out space on their sites (and therefore your computer) to as many advertisers as they can. Web sites take forever to load all that crap, which slows your browser to a halt, and if you're on your phone, they're killing your battery life. It's extra worse on your phone.

### That's Just Like Your Opinion

Not everyone agrees with that last point. Nilay Patel, The Verge's Editor-in-Chief, wrote an op-ed this week called "The Mobile Web Sucks." Patel thinks it's actually your web browser's fault:

> But man, the web browsers on phones are terrible. They are an abomination of bad user experience, poor performance, and overall disdain for the open web that kicked off the modern tech revolution. Mobile Safari on my iPhone 6 Plus is a slow, buggy, crashy affair, starved for the phone's paltry 1GB of memory and unable to rotate from portrait to landscape without suffering an emotional crisis. Chrome on my various Android devices feels entirely outclassed at times[…].

This goes on for a while before Patel backs himself into a corner.

> I happen to work at a media company, and I happen to run a website that can be bloated and slow. Some of this is our fault: The Verge is ultra-complicated, we have huge images, and we serve ads from our own direct sales and a variety of programmatic networks.

Yeah. You don't say. A couple months ago, The Verge's parent company [wrote a grim assessment][2] of just how "bloated and slow" their own sites are: 

> Here’s a sampling of our current performance metrics:
>
> * 4.85 seconds to first paint
> * 23.33 seconds to page complete
> * 13,406 speed index [time, in milliseconds, until most of the page is loaded]
>
> Ouch. As you can clearly see, we've got a lot of work ahead of us, so the next step is to set up a budget.

And that's not even on one of those starved or outclassed mobile browsers. That's on one of those Real Computers. The Verge has literally dozens of random web sites running random javascript files. That goes for just about any web site where folks are trying to make money. They just load it up with garbage.

### Lots and lots of Garbage

A researcher at Mozilla published a paper on this recently. As it turns out, Real Computers basically [load pages twice as fast][3] when they're not larded up with a ton of advertising javascript. Mozilla is testing a new feature which blocks ads (noticing a trend here?) called Tracking Protection on popular sites:

> Even though Tracking Protection prevents initial requests for only 4 HTML \<script\> elements, without Tracking Protection, an additional 45 domains are contacted. Of the additional resources downloaded without Tracking Protection enabled, 57% are JavaScript (as identified by the content-type HTTP header) and, 27% are images. 
>
> The largest elements appear to be JavaScript libraries with advertisement-related names, each on the order of 10 or 100 KB. Even though client-side caching can alleviate data usage, we observe high-entropy GET parameters that will cause the browser to fetch them each time.

The last bit is extra lousy: advertisers could at least save your bandwidth and let your browser cache a copy of their Javascript ad thingie. On our relatively slow mobile networks, that would help you load web sites. But instead, advertisers tell your browser to download their javascript ad thingies every single time, so they can tell where you are and when you look at each page. Hooray.

Publishers aren't solely to blame for this situation, but they're not exactly blameless. They hand the keys to advertisers and let them go nuts. [Ben Thompson has a good breakdown][4] of how we got here, how it works, and why all these sites aren't just running their own ads instead of all these crazy ad networks' ads. 

It's important to note that these ads aren't just *showing* you random things. They're built to *gathering* information about you, about what you like to read, about how long you spend reading it, and so on. The EFF has [built a tool][5] to demonstrate how this works. 

### The Broader Implications

These companies collect it and store it and use it to sell more specific ads to you. Some of them sell this information to other companies to help them fill in the gaps in what they know about you and what sites you go to.

You and I rely on all of these folks to treat our information properly and not dig through it, looking for high school exes or weird internet crushes. We rely on these folks to secure our personal information against hackers. And to keep making money; when they go out of business, their assets (our information) are sold off like desk chairs and printers. There's really no telling just how much information about us is in how many different hands.

And really, none of that information is particularly private ([big giant asterisk][6]), and so I'm usually willing to make that trade. But the terms of the tradeoff shift a little bit every year. Publishers are serving us more and more advertisers' javascript files, but publishers aren't making more money in the process. And so we just make more and more trades, and I run more and more ads on my computer. My browser moves slower and slower. This is less "let's make that tradeoff" and more "how many tradeoffs can you possibly squeeze into this space?"

It’s only going to get worse. At some point, advertisers will realize that [fraud is rampant][7] and the revenue from ads will plummet. There are entire classes of viruses which exist solely to infect users' computers and load ads in [hidden windows][8] – this keeps users from realizing their computers are infected. Heck, you might have fake ads being [loaded on your phone][9] right now. Advertisers are already catching on that these “clicks” they’re paying for are bots, not human. So how much longer do sites keep making money for showing these ads? How many more ads will publishers display when advertisers pays them half as much for each ad?

Anyone really want to bet the answer to that is "fewer ads?" 

Me neither.

[1]:	http://www.niemanlab.org/2015/06/a-blow-for-mobile-advertising-the-next-version-of-safari-will-let-users-block-ads-on-iphones-and-ipads/
[2]:	http://product.voxmedia.com/2015/5/6/8561867/declaring-performance-bankruptcy
[3]:	http://ieee-security.org/TC/SPW2015/W2SP/papers/W2SP_2015_submission_32.pdf
[4]:	https://stratechery.com/2015/why-web-pages-suck/
[5]:	https://panopticlick.eff.org
[6]:	http://motherboard.vice.com/read/looking-up-symptoms-online-these-companies-are-collecting-your-data
[7]:	http://monica-at-mozilla.blogspot.com/2015/05/advertising-sustainable-utopia.html
[8]:	http://adage.com/article/digital/inside-google-s-secret-war-ad-fraud/298652/
[9]:	https://vimeo.com/133457903