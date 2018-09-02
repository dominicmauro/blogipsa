---
author: admin
comments: true
date: 2010-11-10 18:05:55+00:00
layout: post
slug: if-you-can-read-this-im-not-using-outlook
title: If You Can Read This, I'm Not Using Outlook
wordpress_id: 393
categories:
- The News
---

I know for a fact that I'm [not the only person](http://www.esquiremac.com/) in the [legal field using a Mac](http://www.themaclawyer.com/). Until today, whenever I got email from my colleagues using Outlook, the text was so small that I had to strain to read it. It turns out there's a problem with HTML emails sent from Outlook and read in Mail.app — one of the two programs is failing to read/set a minimum font size.

I'm not optimistic on a fix from either side. Microsoft probably has more important things to do than update Outlook to add a minimum font size for the benefit of Mac users, and Apple is probable too busy trying to eliminate the buttons on their cardigans. (Zing!)

Fortunately, Mail.app has a setting to force a minimum font size for HTML emails, which can be changed in Terminal.app. The command is found in this [post from HawkWings.net](http://www.hawkwings.net/2005/10/27/setting-a-minimum-html-font-size/):

> defaults write com.apple.mail MinimumHTMLFontSize 13

I can happily report that although the HawkWings.net post is from five years ago, the command still works. Now I can spare my eyes the strain from trying to read tiny HTML, and reserve their limited ocular powers for [far more pressing matters](http://en.wikipedia.org/wiki/Dragon_Quest_IX:_Sentinels_of_the_Starry_Skies).
