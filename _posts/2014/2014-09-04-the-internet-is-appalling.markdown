---
layout: post
title: "The Internet is Appalling"
date: 2014-09-04 21:12:40 -0400
categories: 
- The Digital Age
---

The Internet has had, for some time,  plenty of places to find photos of naked women uploaded without their consent. The term we've settled on as a society is somehow "[revenge porn](http://www.xojane.com/list/revenge-porn)," which is absurd. Uploading photos of someone else is not *revenge* unless she uploaded photos of you first. (If you can find a single instance of that happening, I'll eat a unicorn.) It's also not *pornography* because pornography requires consent and participation and all those other considerations human beings (i.e. not A Woman On Internet) are afforded.

In my ignorance, I assumed that these kinds of photos were published by resentful exes, not organized rings of perverts. But, the Internet is always finding ways to surprise you and let you down. 

### Surprise!

Over the weekend, some celebrities had their private photos published online by creeps. This wasn't accomplished by a small army of cranky ex-boyfriends, just your run of the mill [script kiddies](http://en.wikipedia.org/wiki/Script_kiddie). Most of the coordination for this effort was apparently done on a small handful of public message boards. If you're looking for a retelling of how it happened, the [Official Lookout Blog](https://blog.lookout.com/blog/2014/09/03/uncovering-how-the-recent-celebrity-image-breach-happened/) has you covered:

> This weekend close to 700 highly personal photos of more than 25 celebrities were leaked publicly. We looked into the origins of this dump and the files inside it to shed some light into how they got there, particularly to understand how best to protect users against this sort of crime in the future. <!--more-->

On the other hand, if you're looking for a security researcher's take on what happened and what security lapses make this possible, you want to read [Nik Cubrilovic's post](https://www.nikcub.com/posts/notes-on-the-celebrity-data-theft/). It's pretty horrific in places, but it's my favorite that I've read so far. This is definitely a "how the sausage is made" story:

> What we see in the public with these hacking incidents seems to only be scratching the surface. There are entire communities and trading networks where the data that is stolen remains private and is rarely shared with the public. 
>
> The networks are broken down horizontally with specific people carrying out specific roles, loosely organized across a large number of sites (both clearnet and darknet) with most organization and communication taking place in private (email, IM).

Save your fork; there's pie!

> There is an insane amount of hacking going on. On any day there are dozens of forum and image board users offering their services. While many of those offering to rip alone based on being provided a username and password are scammers, they will still steal the data and sell it or trade it.

### The Worst Thing

Meanwhile, Wired's Threat Level has an eye-opening [piece on the software](http://www.wired.com/2014/09/eppb-icloud/) used to access these photos. It's called Elcomsoft Phone Password Breaker, and it's pretty insane:

> Elcomsoft’s program doesn’t require proof of law enforcement or other government credentials. It costs as much as $399, but bootleg copies are freely available on bittorrent sites. And the software’s marketing language sounds practically tailor-made for Anon-IB’s rippers.
>
> “All that’s needed to access online backups stored in the cloud service are the original user’s credentials including Apple ID…accompanied with the corresponding password,” the company’s website reads. “Data can be accessed without the consent of knowledge of the device owner, making Elcomsoft Phone Password Breaker an ideal solution for law enforcement and intelligence organizations.”

*Sidebar*: I'm pretty resigned to the fact that if the NSA wants to read my email, they're going to read my email. They have an annual budget larger than many armed forces, and even a number of countries. They employ people way smarter than me, and people who know more about security than I ever will. It's lousy, but there isn't really a whole lot I can do except vote for people who want to repeal the USA PATRIOT Act. 

###  Back On Topic

But this EPPB thing. This is insane. It's "[ideal for law enforcement agencies](http://www.elcomsoft.com/eppb.html)" but they'll sell it to anyone with a few hundred bucks. Or you can just download it for free in minutes if you're willing to [engage in piracy](https://www.google.com/#q=elcomsoft+filetype:torrent). Oh wait. You're illegally downloading personal photos hoping to find naked ones to share with strangers. Of course you're cool with piracy.

The software pretends to be your victim's new iPhone and then downloads the last cloud backup you made of your "old" phone. It sees everything. It downloads everything into neat little folders with text messages over here and photos over there. 

Even better: 

> Elcomsoft is just one of a number of forensics firms like Oxygen and Cellebrite that reverse engineer smartphone software to allow government investigators to dump the devices’ data. But Elcomsoft’s program seems to be the most popular […] it’s been used for months prior to the most current leaks, likely in cases where the hacker was able to obtain the target’s password […].

Okay, so the creeps out to get your stuff are well-armed. Actually, they passed well-armed a while back and now they're bristling with armaments like [suburban cops](http://nymag.com/daily/intelligencer/2014/08/behind-the-best-pictures-from-ferguson.html).

### Lousy Security

Now, there's more to this than just Apple products. In fact, the [EXIF data](http://dankaminsky.com/2014/09/03/not-safe-for-not-working-on/) on the photos indicates that some of these were even taken on a [RAZR flip-phone](http://www.theverge.com/2013/10/3/4798828/status-symbol-motorola-razr). 

Apple's advice in this whole thing has been to pick a robust password and enable 2 Factor Authentication. But as of today, September 4, 2014, you [only need to pass 2FA](http://support.apple.com/kb/ht5570) when you:

- Sign in to My Apple ID to manage your account
- Make an iTunes, App Store, or iBooks Store purchase from a new device 
- Get Apple ID related support from Apple (i.e. social-engineer your way to a password reset.)

Note that Apple *doesn't* require users to pass a 2 Factor test when downloading a perfect copy of someone else's phone from iCloud. That seems to be a bit like putting bars on all your windows but having a sliding glass back door.

Seriously, I want 2 Factor Authentication on people downloading my backups at least as much as I want it on people buying Angry Birds 5 or whatever. My credit card company reimburses me for fraudulent transactions. I don't think there's any system in place to reimburse people who've suffered this most egregious violation of their privacy. 

Oh. Right. Law blog here. Um, yes. Apple is going to get sued so hard before instantly and successfully moving for dismissal based on the [TOS of iCloud](https://www.apple.com/legal/internet-services/icloud/en/terms.html). (They have a rather broad limitation of liability clause toward the bottom there.)

The civil suit against the guys who illegally downloaded this stuff will be a slam dunk, however many of them the FBI can round up. As far as I'm concerned, the only real question is whether the victims want to relive this whole thing or settle out of court for "lifetime garnishment of wages" dollars. That's probably a real number.

