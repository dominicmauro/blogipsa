---
author: admin
comments: true
date: 2010-12-02 05:28:55+00:00
layout: post
slug: net-things-i-hate-about-you
title: Net Things I Hate About You
wordpress_id: 491
categories:
- The News
---

If there's one thing I love, it's when life imitates the Dukes of Hazzard. Whether you're [jumping cars over ravines](http://www.youtube.com/watch?v=hb7qPbvZDCM&feature=related), attempting to navigate [poorly salted roads](http://www.youtube.com/watch?v=25W908awEqg), or just raising some sort of general mischief, I appreciate some harmless jackassery. Comcast is kind of like the Dukes of Hazzard, except less "careening around rural Boondocksville, USA" and more "driving through a farmer's market in an orphanage parking lot."

That's a little unfair, actually. Comcast doesn't actively try to murder parentless children to my knowledge; I think there's very little money to be made in [that most odious of industries](http://www.google.com/finance?q=murdering+orphans), after all. (Ever since the market fell out in the great [Orphan Shortage of '02](http://angelinajolieadoptions.wordpress.com/2010/04/09/angelina-jolies-adoptions/).) But they do some really peculiar things in the name of making a buck here and there.

The latest gripe for those of us who're on the side of this whole "Net Neutrality" thing? [Comcast wants to charge Netflix](http://news.cnet.com/8301-1023_3-20024070-93.html) for the privilege of streaming movies from Netflix's servers to Comcast's customers. <!-- more -->

### Peering and Transit

Ars Technica has a comprehensive and [excellent introduction](http://arstechnica.com/old/content/2008/09/peering-and-transit.ars) to how data gets from Point A to Point Z on the internet. I suggest you read it if you're at all interested in Net Neutrality as a whole.

Briefly: the internet isn't really **the** internet. Rather, a whole bunch of companies own a whole bunch of computers on a whole bunch of networks, and everybody's computers plug into everyone else's computers. People like you and I want to download stuff (movies, MP3s, web pages) with their ISPs (Comcast, Time Warner, Verizon), and companies like Netflix, Hulu, BarelyLegally Holdings LLC have stuff they want people to download.

Now, there's a problem here. Sure, these separate networks all connect to become **the** internet, but it's more complicated than that. The computer I plug into (at Time Warner or Comcast) might not be on the same network as the computer with those awesome Hulu videos, or those hilarious BarelyLegally articles; or Netflix might not be directly connected to Comcast's network. If that's the case, Comcast's movies need to find a route to get to Verizon's network: the relationship is called **peering**. One network passes data along to another network for a nominal (or no) fee, with the expectation that the favor will be returned.

Network providers don't necessarily play nice; they can purchase **transit** to do functionally the same thing as peering. Transit is expensive, though, so everyone wants to stick with free. But it's one of the universal laws of being a grownup: if you can't be reasonable, you pay for the privilege of people pretending to find your terms reasonable.

Transit is usually done when you agree to share your peering connection with someone else. By way of example: A peers with B, and B peers with C. C will pay B for transit to A, and A will pay B for transit to C. The key to transit agreements is that they're primarily for data that's passing through on its way to someone else. B gets paid for data coming its way, but only insofar as it's going somewhere else.

### Comcast and Level 3

Again, Ars has [a great roundup](http://arstechnica.com/tech-policy/news/2010/11/how-comcast-became-a-toll-collecting-hydra-with-a-nuke.ars) of the situation so far. (Seriously, read Ars. Like, every day.) Level 3 is one of the big networks that have a peering agreement with Comcast. Level 3 just agreed to put the entire Netflix library on Level 3's servers, which means that the data going from Level 3 to Comcast is about to get skewed. It's about to get so one-sided that Comcast wants to start charging Level 3 for transit, instead of sticking with the peering agreement they had.

This is pretty lousy. Comcast's customers are the ones that are causing the spike in data flowing from Netflix (via Level 3) over Comcast's precious network. It's not as if Level 3 is taking advantage of Comcast's trust and using their current peering agreement to cut costs and cut into Comcast's bottom line. Comcast sells access to the internet. The only time Netflix data is going to flow across Comcast's network is if Comcast's customers use the internet access Comcast sells.

﻿The Wall Street Journal frames this as a question of "[who should pay for the internet?](http://online.wsj.com/article/SB10001424052748704679204575646840288688392.html)" I do. And you do. And my web site [hosting company does](http://apisnetworks.com/). And Netflix does. _Everyone already pays to get onto the internet_. Comcast already gets paid to send data back and forth to customers. Why should Comcast get paid twice for serving the same web site? If that $50 per month that Subscriber John Q. Bittorrent tosses Comcast isn't enough to cover the oppressive cost of Netflix subscriptions, Comcast can raise their rates. Then that whole competition thing will kick right in, [right](http://arstechnica.com/tech-policy/news/2010/09/broadband-duopoly-leaves-isps-competing-on-speed-not-price.ars)?

Really, this comes across as a shallow cash grab from Comcast. They may be seriously concerned about the rising bandwidth requirements of Netflix (it's now [up to 20%](http://www.pcmag.com/article2/0,2817,2371260,00.asp) of the entire country's bandwidth usage), but the solution isn't to start shaking down companies that have stuff your customers want. That's just silly.

Or is it?

### The Upshot

It's not a stupid move. It's a cunning move. Let's just pretend Comcast gets to play hardball with Level 3 (and by proxy, Netflix); Comcast subscribers can't stream Netflix movies on their computers in this scenario, because Level 3 refuses to pay Comcast.

Comcast is looking to merge with NBC Universal, which is a [major stakeholder](http://www.thebigmoney.com/blogs/hulucination/2010/02/03/nbc-officially-owns-32-percent-hulu-until-comcast-acquires-it) of Hulu, another one of those internet streaming video things. Hulu has movies and TV shows like Netflix; Comcast's subscribers are going to be a pretty captive audience if they can't stream Netflix stuff. Hell, Comcast can even start charging an equal price for a smaller library, because they've boxed out actual competition.

It's silly to think that suddenly, Comcast's costs are going to go up because Netflix downloads are showing up from Point B on the internet instead of Point A. Further, why only Netflix videos? YouTube is the [second largest search engine](http://www.businessinsider.com/youtube-2010-11) in the world; it's the third most visited site on the internet. Why doesn't Comcast want to charge Google for the cost to get Google's content to Comcast's subscribers? As Rob Frieden, a telecommunications professor at Penn State put it:

> Why would it be okay to download hundreds of gigabytes per month, provided the upstream peer is not Level 3? This does not fully pass the smell test in light of Comcast's ulterior motive to raise the cost of a competitor, Netflix, and its preferred carrier.”

I'm with Professor Frieden. This is sketchy. Comcast seems an awful lot like it's trying to set up one of those Carnegie Steel [vertical monopoly](http://en.wikipedia.org/wiki/Vertical_integration) things. You can't monopolize the entire telecommunications infrastructure ([damn activist judges](http://www.consumeraffairs.com/news04/att20.html)), so instead of owning all the cables, you just own every bit of data that people watch on them.

Dick move, guys.
