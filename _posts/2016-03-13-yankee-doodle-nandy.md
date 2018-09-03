---
layout: post
title: Yankee Doodle NANDy
date: 2016-03-13 13:09
categories: 
- Digital Forensics for Dummies
---

The American Civil Liberties Union's Daniel Kahn Gillmor on why the [FBI can easily circumvent](https://www.aclu.org/blog/free-future/one-fbis-major-claims-iphone-case-fraudulent) the "auto-erase" feature of iPhones without forcing Apple to build a custom OS:

> So the file system key (which the FBI claims it is scared will be destroyed by the phone’s auto-erase security protection) is stored in the Effaceable Storage on the iPhone in the “NAND” flash memory. … The FBI can simply remove this chip from the circuit board (“desolder” it), connect it to a device capable of reading and writing NAND flash, and copy all of its data. It can then replace the chip, and start testing passcodes. 
>
> NAND flash storage is an extremely common component. It's found in USB thumb drives, mobile phones, portable music players, low-end laptops—pretty much every portable device. Desoldering a chip from the circuitboard is straightforward enough that there are many clips on YouTube showing the practice, and reading and writing a bare NAND chip requires a minor investment in hardware and training that the FBI has probably already made.

This isn't some hypothetical "imagine if cryptography is like a bear with roller skates but your grandmother is like a boat with hands and they're having a pie-eating contest" situation. This is literally how encryption works: the FBI can copy the encrypted files (text messages, emails, etc.) from the iPhone into a NAND chip. The files aren't "locked" by encryption, they're just scrambled. You can make as many copies of the scrambled files as you want.

Gillmore explains that the FBI can put these scrambled files into a different computer as a backup, so if the FBI guesses ten times at the password and the phone erases itself, the FBI can just copy the scrambled files back into the phone. Physically prying the NAND chips out of the circuit board and making a perfect digital copy of the 1s and 0s on them means that the phone's operating system has no idea you've made backups or restored the data.

This sounds pretty obnoxious, though, right? You make ten guesses, and then you have to yank computer chips out of circuit boards and shuffle them around to make ten more? No wonder the FBI wants Apple to build them a custom OS to do all this work for them!

One last quote from Gillmore:

> If it turns out that the auto-erase feature is on, and the Effaceable Storage gets erased, they can remove the chip, copy the original information back in, and replace it. If they plan to do this many times, they can attach a “test socket” to the circuit board that makes it easy and fast to do this kind of chip swapping.
>
> If the FBI doesn't have the equipment or expertise to do this, they can hire any one of dozens of data recovery firms that specialize in information extraction from digital devices.

I would expect nothing less than a cogent analysis and impassioned defense of the Constitutional principles at stake from the ACLU. I wasn't expecting such a detailed technical breakdown of how absurd the FBI's position is. The more technologists weigh on this, the more disingenuous the government's request for help circumventing encryption becomes.