---
author: admin
comments: true
date: 2011-08-07 06:04:47+00:00
layout: post
slug: mobile-kombat
title: Mobile Kombat
wordpress_id: 859
categories:
- Legal Theory
---

The [FOSS Patents blog has a great post](http://fosspatents.blogspot.com/2011/08/oracle-and-google-keep-wrangling-over.html) on the newest development continuing litigation between Oracle and Google. Google's Android operating system allegedly includes code from Oracle's Java platform, and Oracle has sued Google for copyright infringement. Google says that they really only copied Java's APIs, and functional processes aren't copyrightable; just the idiosyncratic code you wrote that accomplishes that function.

I don't want to cover the entire course of the litigation here, just an email from one of Google's engineers, Tim Lindholm in 2010:<!-- more -->
>
> "What we've actually been asked to do (by Larry and Sergey) is to investigate what technical alternatives exist to Java for Android and Chrome. We've been over a bunch of these, and think they all suck. We conclude that we need to negotiate a license for Java under the terms we need." 

While I've seen this quote making the rounds as more or less definitive proof of Google's guilt, I think it's a bad idea to read too much into this. First, this is an engineer, not a lawyer, talking about the feasibility of dropping Java from Android after five years of development. In his engineer opinion, he thinks Android should still use Java. He uses the phrase "negotiate a license" because he's presumably not stupid enough to use "infringe the copyrights" instead. (Faint praise, indeed.)

Second, this Lindholm email doesn't actually prove any copying one way or another; this statement is really meant for a jury trial. Specifically, this email lets a jury find that Google ignored basic IP rights and took what they wanted; I'm certain Oracle's lawyers will wave this email about to show a jury that Google knew they were infringing and they were trying to bail out of the trouble schooner S.S. Java on the eve of trial. So Google and Oracle are going to do some furious lawyering back and forth over this, not to prove the case, but to [increase the size of a potential judgment](http://www.copyright.gov/title17/92chap5.html#504).

### but wait there's more

FOSS Patents very astutely points out that it's even worse for Google than just one incriminating-ish email. Back in 2005, when Android was still in development, (and before dropping Java from Android would have undone five years of work,) one of the founders of Android wrote an email similar in tone:

> In that one, [Android founder Andy] Rubin outlined two options, the second one of which was apparently chosen: it amounted to going ahead with Java on an unlicensed basis, despite being fully aware of the risk of blowback at a later point in time ("Do Java anyway and defend our decision, perhaps making enemies along the way").

You can read the second [email in its entirety here](http://fosspatents.blogspot.com/2011/07/judge-orders-overhaul-of-oracles.html#sovietstyle). Again, this doesn't demonstrate copying. It does show that they were aware they didn't have licenses, but there are lots of reasons to not have licenses – probably the best one is that you didn't take any copyrighted code. Again, this is really meant to increase the stakes for Google: Oracle isn't proving infringement here, they're just proving willfulness.

### because i can't resist

As for the merits of the copyright claim, Oracle is in a silly spot. To gloss over many of [the important technical details](http://groklaw.net/article.php?story=20100915143729255), the Android OS doesn't run Java; it runs special Java-compatible programs in a special Android-only way (called "Dalvik"). Oracle tells everyone how to write Java programs – it would be the world's least successful programming language if it were secret and no one was allowed to use it. Oracle lets anyone make use of the Java APIs, but when Google starts shipping millions of Android devices running computer programs written to use some Java APIs, they start to wonder if it ought to be allowed on Dalvik at all. 

If Oracle had only made Java a little less friendly for developers (if you write Java programs, you run them with Java, not with Dalvik! Now buy a license for that, thanks!), they could be rich. Or, more likely, Android would have been built from the ground up to use a more developer-friendly language.

So Oracle has an army of next-generation programmers learning to write in Java for Android and Dalvik, and their solution isn't to court these young enthusiasts, but rather to try to extort the guys that make the phones? That strikes me as immensely short-sighted.
