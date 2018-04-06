---
layout: post
title: Cybersecurity, One Weird Trick for
date: 2017-07-15 21:47
categories: 
- Fear of a Bot Planet
---

Last month, the WannaCry ransomware attack caused a lot of damage to computer systems worldwide, but it could have been worse. It was limited in large part because one security researcher stumbled across a web domain named in the WannaCry source code. When the researcher looked up the domain, he saw no one had registered it; and so he put down the ten bucks for it, figuring it might be important. It turns out, if there was a web site at the domain, WannaCry uninstalled itself instead of encrypting users’ files and holding them for ransom. 

A lot of outlets reported this web domain as a secret “kill switch” coded into WannaCry, but the anonymous security research wrote a fascinating essay titled  [How I accidentally stopped a global Wanna Decryptor ransomware attack](https://arstechnica.com/information-technology/2017/05/wanna-decryptor-kill-switch-analysis/):

> The reason that was suggested is that the domain is a “kill switch” in case something goes wrong, but I now believe it to be a badly thought out anti-analysis.
> 
> In certain sandbox environments traffic is intercepted by replying to all URL lookups with an IP address belonging to the sandbox rather than the real IP address the URL points to. A side effect of this is if an unregistered domain is queried it will respond as it it were registered (which should never happen).
> 
> I believe the malware creators were trying to query an intentionally unregistered domain which would appear registered in certain sandbox environments, then once they see the domain responding, they know they’re in a sandbox and the malware exits to prevent further analysis. This technique isn’t unprecedented: the Necurs trojan queries five totally random domains, and if they all return the same IP it exits.
> 
> However, because WannaCrypt used a single hardcoded domain, my registration of it caused all infections globally to believe they were inside a sandbox and exit... thus we unintentionally prevented the spread and further ransoming of computers infected with this malware.

Got that? Your computer has a special file that it uses to look up the address of a server before it checks the internet’s version of that server address. When you type barelylegally.com into your web browser, your computer first checks that special file—called a Hosts file—to see if it already knows what IP address barelylegally.com is. Spoiler alert: your Hosts file is empty by default, so unless you added something by hand, your computer will end up asking the DNS computers what this site’s IP address is.

Security researchers (like Mr. I Stopped WannaCry By Accident) use software that creates a fake computer within their computer. That way, they can get their fake computer infected with viruses in a controlled environment, and see what they do, and inspect them forensically. All this without compromising a real computer.

However, many of these fake computers—called sandboxes—come with a Hosts file that points every unregistered domain back to the sandbox. So the WannaCry author mashed his or her keyboard for a few seconds, came up with a super long and random-ish domain name, and assumed that the *only way* that domain could do anything but fail to load was if WannaCry was running in a sandbox.

Or if a security researcher registered the domain for ten bucks.
​
### One more thing

In addition to checking to see if they’re running in a sandbox, viruses usually check to see what they’re supposed to be doing once they’ve infected a computer. They need their instructions: send out millions of spam emails for one client, mine a whole bunch of bitcoins for this other client, etc. Viruses do this by talking to control servers, and [you’ll never guess where Russian spies are hiding their control servers](https://arstechnica.com/security/2017/06/russian-hackers-turn-to-britney-spears-for-help-concealing-espionage-malware/):

> According to a report published Tuesday by researchers from antivirus provider Eset, a recently discovered backdoor Trojan used comments posted to Britney Spears's official Instagram account to locate the control server that sends instructions and offloads stolen data to and from infected computers. The innovation—by a so-called advanced persistent threat group known as Turla—makes the malware harder to detect because attacker-controlled servers are never directly referenced in either the malware or in the comment it accesses.

​Basically, the people who want to control a botnet put a specially-coded comment on one of Spears’s photos. The comment looks innocuous to the human eye, but infected computers recognize it and use that to receive their instructions.
