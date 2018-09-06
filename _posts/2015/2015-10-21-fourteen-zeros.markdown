---
layout: post
title: Fourteen Zeros
date: 2015-10-21 11:38
categories: 
- Legal Theory
---

Here’s a provocative title from the usually sober Ars Technica: [Secret Source Code Pronounces You Guilty As Charged](http://arstechnica.com/tech-policy/2015/10/secret-source-code-pronounces-you-guilty-as-charged/):

> Secret code now has infiltrated the criminal justice system. The latest challenge to it concerns a handyman and a convicted sex offender named Martell Chubbs, now accused of a 1977 Long Beach, California murder. Local police were investigating cold cases and arrested Chubbs after DNA taken from the crime scene long ago matched a sample in a national criminal database, the authorities said.
>
> A private company called Sorenson Forensics, testing vaginal swabs from the victim, concluded that the frequency in the profile occurrence in the general population was one in approximately 10,000 for African Americans. The same sample, when examined by Cybergenetics at the company's Pittsburgh lab, concluded that the DNA match between the vaginal sperm sample and Chubbs is "1.62 quintillion times more probable than a coincidental match to an unrelated Black person," according to court records.

Okay, both of those sound like slam dunks, right? What’s the problem with the Cybergenetics analysis if Chubbs is screwed either way? 

Well, let’s back up a bit. What exactly do those numbers mean? They’re the likelihood of some random person with the same DNA profile as the person who left their DNA at the crime scene. Take Sorenson’s one in ten thousand number. It doesn’t mean there are 10,000 to 1 odds that Chubbs did it: that’s the [prosecutor’s fallacy](https://en.wikipedia.org/wiki/Prosecutor%27s_fallacy) talking. It also doesn’t mean that if there are 20 million black men in America, that there are 20,000 people whose DNA would match the killer’s, so there’s only a 1 in 20,000 chance that Chubbs is the killer. That’s the defense attorney’s fallacy.<!--more-->

You should understand Sorenson’s one in 10,000 number to mean that every time the police compare the killer’s DNA sample to a random African American man’s DNA, there’s a 1 in 10,000 chance that they match. The test would incorrectly identify the DNA sample from those two people as having come from the same person.

### Rinse and repeat and repeat

Remember, the police tested the DNA at the crime scene against NDIS, the [National DNA Index](https://en.wikipedia.org/wiki/Combined_DNA_Index_System#Relative_size), which has about 13 million other people’s DNA in it. So there was a 1 in 10,000 chance to get a match for *each* of the African Americans in NDIS. There are more than 13 million people in NDIS, and if only a million are African Americans, *none of whom committed this crime*, there’s still a 99.999999999999999999999999999999999999999996% chance of getting at least one false positive. The Sorenson number is basically meaningless: it tells you that Chubbs is the killer and/or a black man in the NDIS database. We already knew he was a black man in the NDIS database, so this has added nothing to our knowledge.

Compare that to the Cybergenetics number, tested against a million innocent African Americans, and the chance you get at least one false positive is 0.0000000000617%. We’re still running a million comparisons, but the odds of each were one in a quintillion (a billion billions), not one in ten thousand. That makes all the difference.

That’s quite the margin of error: we’re looking at roughly fourteen orders of magnitude between the Sorenson and the Cybergenetics probabilities. For perspective, being off by just *ten* orders of magnitude is like guessing that there are three stars in our galaxy, when in fact there are hundreds of billions of them. To actually be off by fourteen orders of magnitude, you’d have to guess that there is a small fraction of one star in our galaxy, somehow missing the fact that the Sun is a whole star.

One of these DNA testing companies thinks there’s less than one star in the galaxy. How did this happen, and how do we figure out which one? 

### now we got bad blood

I can actually sum this up really quick: Cybergenetics gets a different  answer because it’s doing a different DNA test than Sorenson is. There are different techniques for examining the partial DNA you get from crime scenes. It’s hard to get a full copy of someone’s DNA unless you get them to spit on your microscope. Seasoned criminals don’t fall for that more than a few times. 

So you hopefully end up with a series of fragments of complete sets of DNA, and then take your best guess at filling in the blanks to form each set and compare them to the person on trial. You can watch a county sheriff’s crime lab director named Sarah Chenoweth talk about [how this works here](https://www.youtube.com/watch?v=vOFbPWHhVnM). Really, all you need to know for now is that (1) the traditional way to test DNA involves setting a threshold to separate the signal from the noise that happens when you make a copy of a copy of a copy of the DNA fragments found at crime scenes; and (2) computers can make probabilistic guesses about the most likely way to fill in those gaps.

As you might expect, there are lots of ways computers can do this. There’s open-source software that’ll look at some of the DNA evidence to guess how much noise to filter out, leaving just the signal for you, and there's proprietary software that’ll use something called a Markov Chain Monte Carlo (MCMC) algorithm to examine every single noise for the possibility that it could really be a signal. 

Both of these are way better than the traditional DNA analysis methods, but the MCMC technique in particular is apparently crazy accurate. It sounds like it’s bleeding-edge science (read: costs many tens of thousands of dollars) that hasn’t yet replaced the old-school forensic analysis of DNA in most police labs. Cybergenetics is doing the cool MCMC stuff: their founder’s published a paper about it in the [Public Library of Science](http://www.cybgen.com/information/publication/2014/PLoSONE/Perlin-Dormer-Hornyak-Schiermeier-Wood-Greenspoon-TrueAllele-Casework-on-Virginia-DNA-Mixture-Evidence/paper.pdf). It’s unclear what methodology Sorenson is using, but if it had a cool name like Markov Chain Monte Carlo, you can bet they’d be advertising that, too.

Cybergenetics’s software is so cutting-edge that they claim it’s a trade secret, and they’d go out of business if they open-sourced it. Other companies would look at the source code and make a copy of it and start selling the software for less. So the secret math sauce stays secret and we’re all just going to have to trust Cybergenetics that they came up with that One in a Quintillion number properly. It sure would suck if they made a mistake and sent an innocent dude to jail! But not as much as if they lost money!

That’s really what the Ars article is getting at, isn’t it? It’s crazy that Cybergenetics can send a guy to jail with a magic computer: a 1 with 18 zeroes after it? You’re adding fourteen orders of magnitude of certainty to a match! Let me see the source code if you’re going to make extraordinary claims like that. Peoples’ lives are at stake here.

### the shocking twist 

But the thing is, this discrepancy doesn’t seem very extraordinary in context. With two perfect DNA samples, the upper bound of our certainty is having a one in 1.6 x 10^23 chance of two people matching by pure chance. If you watched Chenoweth’s talk, she makes an off-hand comment about an example of using an open-source program (which isn’t quite as sophisticated as that MCMC algorithm) to analyze a tiny fragment of two DNA samples. The open-source software comes up with a probability of one in 7.3 x 10^20 of such a match. The traditional analysis in that case came up with a probability of one in 1.4 x 10^6.

That’s a margin of error of… hey, fourteen zeros. That’s a heck of a coincidence. It’s certainly not proof that Cybergenetics has avoided every possible error, but I’m going to take it to mean that modern advances in DNA analysis have improved our ability to prevent false positives by many, many orders of magnitude. I know in the Chubbs case, both Sorenson and Cybergenetics have probabilities a little lower than what Chenoweth says is routine, but this is DNA collected in 1977. It’s not difficult to imagine that DNA collection and preservation techniques have improved at some point since then.

Ars may have panicked a little bit about the combination of all those zeroes and the fact that the source code is super secret. It certainly looks fishy at first. But Cybergenetics’ claims don’t seem that impossible in the context of other kinds of DNA analysis. 

Regardless, I think we can all agree that as a policy matter, it’s naïve to pretend that we can make informed decisions about the reliability of software when we can’t see the source code. The notion that this Cybergenetics software isn’t apparently acting impossibly crazy this time in this case doesn’t mean the source code should stay closed forever. Even a broken clock is right twice a day.

### okay but this is a law blog

Right. Let’s climb ourselves out of this DNA testing rabbit hole and get back to the actual Chubbs case. 

The difference between Sorenson and Cybergenetics’s analysis is enormous and eyebrow-raising. Pretend you’re a juror here, and you know someone's science has got to be wrong. You don’t have any idea who; the new guys are saying the Old Ways were sophistry and the old guys are saying the new technology is witchcraft. If you listen to the wrong test, you set a murderer free *or* you send an innocent old man to prison for the rest of his life.

Your gut might tell you that using closed-source software is unfair here. If Cybergenetics is going to use cool-sounding algorithms and fancy technology to help put people in jail, they should have to show their work, right? It seems weird to let someone take the witness stand and say “a computer says he did it.” It’s like hearsay, but with a machine. 

And the judge is going to tell you about the Constitutional issue with that: The Sixth Amendment provides every American accused of a crime the right to confront and cross-examine witnesses against them. Cross-examination is there to give the jury a glimpse of how someone’s thinking, in the hopes that the court can uncover lies and sift through hazy memories. With source code, you can actually pull apart a computer program and see how it “thinks.” See if some programmer misplaced a decimal point or forgot to convert between milliliters and milligrams. See if it’s just making up numbers.

Looking at the source code of the Cybergenetics program is one way to have the same kind of adversarial dialogue that cross-examination is supposed to produce. But back before we fought about peeking at other peoples’ source code, we fought about stuff that was cutting-edge, like fingerprints and phrenology. So the legal system is not only prepared for this situation, it’s prepared to decide if the “cutting-edge science” card trumps the “trade secret” card. 

### what does the judge say

Well, the Ars article kind of spoiled this. You can read the [full opinion](http://www.courts.ca.gov/opinions/nonpub/B258569.PDF) of Appellate Judge Richard Romero here, but the gist is that—for our purposes—Chubbs has to show that “the source code is relevant and necessary to the defense.”

Now, I’ve read Judge Romero’s opinion, and it sounds like Cybergenetics founder Mark Perlin did a pretty good job of explaining the “relevant and necessary” bit himself. From page 18 of the opinion:

> Perlin explained that software source code is the programming language used to write a computer program. The source code “details step-by-step human-readable instructions that describe to the computer and programmers how the program operates,” and is “translated into computer-readable ‘executable’ software.” He stated that TrueAllele has about 170,000 lines of computer source code and opined that reading through the source code would not yield meaningful information.
>
> As to the proprietary nature of the source code, Perlin explained that others “can easily copy a computer program if they have its source code,” which “contains the software design, engineering know-how, and the algorithmic implementation of the entire computer program.”

It sounds like Judge Romero is pretty convinced! But here's the very next page of his opinion, where he describes the testimony of Chubbs's expert witness Allen Jamieson, a DNA analysis expert:

> Jamieson’s general statement that a criminal defendant cannot “receive a diligent and fair verification of a DNA testing or analysis method” without the source codes does not address Perlin’s explanations of what the source code actually is and why it is not needed to test the methodology or reliability of TrueAllele’s analysis. Jamieson also generally states that access to the source code is the only way to consider the validity of the [Cybergenetics's product] TrueAllele analysis in Chubbs’ case, but he does not explain how access to the source code would allow him to test the reliability of TrueAllele’s analysis.

Hang on, your honor! A minute ago, you understood that the source code “*contains the software design, engineering know-how, and the algorithmic implementation of the entire computer program*.” That makes it sound awfully useful in testing the reliability of the program’s analysis, but you ruled the defendant hasn't argued that the source code would be “relevant and necessary” to his defense. I’m reading between the lines a little here, but parts of Judge Romero’s opinion read like Chubbs’s lawyer didn’t argue certain points properly.

It’s a little confusing, but hopefully this gets raised on appeal at the California Supreme Court.

Ultimately, Judge Romero decides that Cybergenetics has provided “extensive information” about the methodology and assumptions of their software. Therefore, the judge says, Chubbs (and the court) doesn’t really need to look at the source code. The fact that this entire appeal is happening during pretrial discovery means that the stakes are way lower than they would be if the parties were fighting over whether or not to show this evidence to a jury, which means Judge Romero is okay with erring on the side of protecting the trade secrets. For now(?).

Either way, Chubbs is going to a trial eventually, and then things will get really interesting. I might even understand what a Markov Chain Monte Carlo algorithm is by then.