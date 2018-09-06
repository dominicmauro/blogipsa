---
layout: post
title: Open The iPhone, Siri
date: 2015-06-10
categories: 
 - "Scimitar Golems Have 10 Hit Dice"
---

Robert Graham of Errata Security on [cracking iPhone PIN codes][1]:

> All the data (on the internal flash drive) is encrypted with a random AES key that nobody, not even the NSA, can crack. This random AES key is stored on the crypto-chip. Thus, if your phone is stolen, the robbers cannot steal the data from it -- as long as your phone is locked properly. To unlock your phone, you type in a 4 digit passcode. This passcode gets sent to the crypto-chip, which verifies the code, then gives you the AES key needed to decrypt the flash drive. This is all invisible, of course, but that's what's going on underneath the scenes. Since the NSA can't crack the AES key on the flash drive, they must instead get it from the crypto-chip.
>
> Thus, unlocking the phone means guessing your 4 digit PIN. This seems easy. After all, it's only 4 digits. However, offline cracking is impossible. The only way to unlock the phone is to send guesses to the crypto-chip (a form of online cracking). This can be done over the USB port, so they (the NSA) don't need to sit there trying to type every possible combination -- they can simply write a little script to send commands over USB.
>
> To make this more difficult, the crypto-chip will slow things down. After 6 failed guesses, the iPhone temporarily disables itself for 1-minute. Thus, it'll take the NSA a week (6.9 days), trying all 10,000 combinations, once per minute.

I really enjoy the Errata guys' walkthroughs of these kinds of topics. This one is a little scarier than most, as the tools that the NSA and law enforcement use are [readily available][2] to the sufficiently motivated.

[1]:	http://blog.erratasec.com/2015/06/whats-state-of-iphone-pin-guessing.html
[2]:	http://blog.ipsaloquitur.org/post/the-internet-is-appalling/