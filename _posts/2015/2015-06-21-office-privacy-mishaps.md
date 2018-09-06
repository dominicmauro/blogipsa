---
layout: post
title: "Office of Privacy Mishaps"
date: 2015-06-21 11:30
categories: 
- "Gov 2 Dot 0"
---

Last week, at a House Oversight and Government Reform Committee hearing, the director of the Office of Personnel Management said that their network breach was so complete, that [encryption wouldn't have helped][1]. This wasn't just peeking into one corner of the network; the attackers had free run of every bit of information, apparently.

Also, some of the systems are so old that they don't support meaningful encryption schemes, or two factor authentication, or really any security: much of the code is written in COBOL, a computer language first developed in the 1950s. 

Between this and the [Healthcare.gov][2] failure to launch, it's becoming apparent that the federal government lacks the IT capability to do its job in the digital age. But remember that Healthcare.gov wasn't done in-house, it was done by contractors. And when agencies attempt to outsource their work, it doesn't exactly go well: 

> Until recently, Federal agents carried out background investigations for OPM. Then Congress cut the budget for investigations, and they were outsourced to USIS, which consisted, as one person familiar with OPM’s investigation process told Ars, essentially was a company made up of “some OPM people who quit the agency and started up USIS on a shoestring.” 
>
> When USIS was breached and most of its data (if not all of it) was stolen, the company lost its government contracts, and was replaced by KeyPoint—”a bunch of people on an even thinner shoestring. Now if you get investigated it’s by a person with a personal Gmail account, because the company that does the investigation literally has no IT infrastructure. And this Gmail account is not one of those where a company contracts with Google for business services. It is a personal Gmail account.”

Well, at least a personal Gmail account offers better support for two factor authentication than COBOL mainframes do.

But, uh, yeah. Government IT is broken, and government IT procurement is broken. Government (like any modern institution) needs nerds. The UK has a [good template][3] for solving this problem. Our [own implementation][4] is a couple years behind, but we're throwing a lot more bodies into it. Colossal screwups like this can only emphasize the need for IT reform. I'm actually optimistic about the future of government IT – just not the extremely near-future.

[1]:	http://arstechnica.com/security/2015/06/encryption-would-not-have-helped-at-opm-says-dhs-official/
[2]:	http://blog.ipsaloquitur.org/post/procurement-hell
[3]:	https://gds.blog.gov.uk/about/
[4]:	https://www.whitehouse.gov/digital/united-states-digital-service