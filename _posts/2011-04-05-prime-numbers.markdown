---
author: admin
comments: true
date: 2011-04-05 01:27:20+00:00
layout: post
slug: prime-numbers
title: Prime Numbers
wordpress_id: 684
categories:
- A Day in the Life
---

SSL is what makes transacting business over the internet reasonably safe. However, in the last two weeks, two of the certifying authorities of SSL have been breached, and handed out fake certificates for sites like Gmail. The major web browsers have revised how they handle certificates (specifically, they now check to see if the certificate has been revoked), but if you use Mac OS, you might consider the following,

> [...] OCSP and CRL checking is disabled by default in Mac OS (except for Extended Validation "EV" certificates). You should turn it on. While I don't see a big risk to most of us from the Comodo issue, in general it is a very good idea to enable this checking. To do this on Mac OS 10.6:
>
> * Open Applications -> Utilities -> Keychain Access
> * Under Keychain Access menu, select Preferences...
> * Select the Certificates tab
> * Set "Online Certificate Status Protocol (OCSP)" to "Best Attempt"
> * Set "Certificate Revocation List (CRL)" to "Best Attempt"
> * Set "Priority" to "OCSP"

via [The Security Skeptic](http://securityskeptic.typepad.com/the-security-skeptic/2011/04/mac-users-listen-up-enable-certificate-checking.html).
