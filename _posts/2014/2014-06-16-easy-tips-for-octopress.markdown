---
layout: post
title: "Easy Tips for Octopress"
date: 2014-06-16 19:50:36 -0400
excerpt: ""
categories: 
- Jest, Mostly
published: true
---

America's preeminent legal analysis slash [BitCoin schadenfreude](http://blog.ipsaloquitur.org/post/federal-agents-seize-mt-goxs-bank-account/) clearinghouse has a bold new look, and is now built with [Octopress](http://octopress.com). As is traditional for Barely Legally, I have embraced cutting-edge trends in both design (the sidebar is back! responsive is in!) and platform (flat HTML files are back! party like it's 1999, guys!). Just call me Hacker McHackypants.

And in keeping with the most sacred aspects of this tradition, Barely Legally has adopted these cutting-edge trends years after everyone else. Next week, I'll find out all the cool blogs are doing something else, and spend the next couple of years working up the effort to implement it here. 

But we don’t have to wait for everything. You know what all the cool blogs do? One of [those](http://blog.baugues.com/moving-from-wordpress-to-octopress) [migrating](http://jason.pureconcepts.net/2013/01/migrating-wordpress-octopress/) [from](http://konradpodgorski.com/blog/2013/10/21/how-i-migrated-my-blog-from-wordpress-to-octopress/) [Wordpress](http://everythingisgray.com/2013/06/15/on-migrating-from-wordpress-to-octopress) [to](http://joelhooks.com/blog/2012/07/25/fresh-start-migrating-wordpress-octopress/) [Octopress](http://collindonnell.com/2013/06/05/migrating-from-octopress-to-wordpress/) [posts](http://www.papayasoft.com/2013/06/09/goodbye-wordpress-hello-octopress/), outlining the necessary terminal commands for shuffling your data out of one CMS and into another. 

The process is really quite simple, and it’s well worth your time. Open up your shell of choice and get those command lines interfacing or something! <!--more-->

### step one

Read an article by a tech blogger whose popularity you'll struggle to explain to "normal folks," in which you discover that renting web hosting is for suckers. The real hotness, it turns out, has been in hosting and administering your own server this entire time. 

Well, look. Some nerd who’s actually a professional nerd instead of the guy who helps his friends turn on iCloud backups when they get new iPhones just called you out. Or he would have if he knew who you were. In fact, it was probably a dickwaving post directed at some guy from his high school Unix club.

Challenge accepted.

### step two

Briefly consider using your old laptop, currently serving as a home theater PC, before remembering that Time Warner's cable is so unreliable that it regularly disconnects your SSH sessions from the office. 

Decide instead to go with a VPS. You installed Ubuntu 5.04 in college; how hard could this be?

### steps three through six

![](http://blog.ipsaloquitur.org/assets/images/success.png)

### step seven

VPS is stable. You've rerouted the secondary couplers through the firewall's deflector dish. There's only enough coolant in the nacelles to convert maybe twenty or thirty posts at a time to markdown. Set the ruby virtual environment to rotating harmonics, and that should buy us a few more posts. While all that goes on, you'll want to figure out what SCSS is, and why your CSS is scattered among two dozen different files. 

Why is there a regular version and a custom version of every SCSS file and why are they in a completely different directory from the layout files? This sucks and you're moving back to wordpress. 

### step eight

Ice cream break. 

### step nine

After an embarrassing number of hours configuring FTP, octopress is successfully publishing to your VPS. Find a Stack Overflow post about a random SSH issue that casually mentions how rsync is far superior. 

Search "what is rsync" on Google. 

The next six hours are a fugue state of Doritos and other poor life decisions. At one point, your VPS's firewall bans you because your upload script accidentally enters your Octopress directory as a password.

Note to self: a file directory would probably be a pretty robust password. 

Briefly and accidentally get rsync working, only to break it again when you try to move your passwords and directories into variables instead of directly in the command line.

### step ten

rm -rf ~/octopress

### step eleven

Download a fresh copy of Octopress. Slaughter a calf in a ring of salt. Let the blood and gore wash over your hands. Feel the eldritch words of power contained in the rakefile coursing through your veins. Those fools. You'll show them all soon. Remember to bury six crosses face down around your cable modem. That has less to do with your Faustian bargain with Cthoctopress than with improving your wi-fi throughput. Damn Time Warner.

### step twelve

Doritos and ice cream break. Wipe away those tears. You’re like Neo now. Seeing the \_source and the \_sass folders and understanding where your SCSS variables are.

You rewrite your rakefile to script your own custom tasks and deftly move your \_drafts to \_posts. You wield the power of liquid tags as Thor does Mjölnir. The warp and weft of the Rubyverse itself remake themselves in your image. You are a living god.

Oh my God why is this sidebar not floating? Float you lazy bastard! Okay fine I’m cool. I’m cool.

### step thirteen

There is no step thirteen! Octopress is just that easy and now you're rolling with the cool nerds. 