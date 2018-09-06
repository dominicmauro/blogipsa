---
layout: post
title: "Test Case, Please Ignore"
date: 2016-02-29
categories: 
- The News
---

Jonathan Zdziarski, on [how badly the FBI bungled the investigation](http://www.zdziarski.com/blog/?p=5769) into the San Bernardino shooting by (1) resetting Syed Farook’s iCloud password and (2) powering down his phone:

> 1. [It prevented the FBI from] talking directly to Siri, and asking her to display call records, contacts, email, and other information.
>
> 2. If the iOS was 9.0.1 or lower, a known lock screen bypass bug would have potentially allowed them access to a significant amount of data on the device (data that is unlocked “after first user authentication”)
>
> 3. Dozens of known vulnerabilities exist for older firmware that may have been able to penetrate the device with a PoC, that otherwise couldn’t be used if the encryption is locked. Simply reading Apple’s release notes would have provided contact information for a number of researchers and universities who likely had PoC exploit code they would have loaned to FBI.

He goes on like that for quite a while, and explains what the FBI should have done in this case. Zdziarski isn’t an armchair expert on this stuff: he literally [wrote the book](http://www.amazon.com/iPhone-Forensics-Recovering-Evidence-Corporate/dp/0596153589) on iPhone forensics back in the day, and still consults with law enforcement agencies who want to break into phones. What the FBI missed is absurd.

Look, if local police in a tiny town in the middle of nowhere had screwed up this badly, we’d wonder why the FBI wasn’t entrusted with this. But the FBI made their jobs a lot harder; this can’t be their first time at the iPhone Evidence Rodeo, so how could they have locked themselves out of the phone? <!--more-->

Let’s put that question on hold for a moment, and talk a little bit about test cases.

### Literally Black and White

In the legal world, test cases are strategic devices; the *Plessy v. Ferguson* court case—in which a man with one black great-grandparent intentionally broke a law segregating railroad cars by race, in the hopes of persuading a judge to strike it down—is probably the test case most Americans have heard of. It began in 1892, when a guy named Homer Plessy was recruited by civil rights activists to break the law. They informed the railroad company (which also opposed the law, because it required companies to purchase extra railroad cars) that he was illegally occupying a seat in a white person’s car.

The strategy: get the railroad segregation law struck down for violating the [Equal Protection Clause](http://nationalparalegal.edu/conLawCrimProc_Public/EqualProtection/HistoryOfEqualProtection.asp) of the 14th Amendment, which forbids discrimination on the basis of race. Everything went according to plan at first. While the state courts weren’t receptive to the argument, despite the 14th Amendment being pretty clear, the United States Supreme Court was definitely going to overturn that law. How could they not? Plessy had almost as many white great-grandparents as I do! It was a slam dunk case.

Except not. In a 7-1 ruling, the Supreme Court upheld the law, signaling to states that they could institutionalize racism and enforce discriminatory laws for generations. That’s one of the Supreme Court’s low points. The lesson here is that test cases can backfire very easily. (Other lesson: don’t be even remotely black in the South in 19th century America.)

### When Test Cases Go Right

But the high point, and one of the most famous Supreme Court cases in American history, is *Brown v. Board of Education*. That’s the 1954 case that held that laws keeping black kids from attending white schools were unconstitutionally discriminatory. It was a long road from *Plessy* to *Brown*, and we get there with a series of test cases coordinated by the NAACP and their attorney, (future Supreme Court Justice) Thurgood Marshall.

The first step was *Gaines v. Canada*, which happened in Missouri. Lloyd Gaines wanted to attend law school at the University of Missouri, which was a whites-only school. Missouri was—in those days—well within their rights to have “separate but equal” facilities for black people. However, they forgot to do just one tiny thing: actually have a law school for black people. With just one law school in the state, Gaines couldn’t attend a “separate but equal” school at all. (Missouri offered to send Gaines to law school in another state, but this wasn’t good enough.) Missouri lost the case.

As far as test cases go, this is a good way to start. The NAACP’s strategy in the beginning wasn’t to challenge segregation head-on; it was to force states to actually provide “equal” facilities. So after *Gaines*, the law sounds something like “separate but equal is still okay, but if you’ve only got one law school in the state, there’s nothing equal about that.” Still a ways to go to get to *Brown*.

The next big test case was *Sweatt v. Painter*, in which Heman Sweatt sued the University of Texas’s separate but equal law school for black people. Texas had paid attention to *Gaines*, and set up an entire law school for black students. Well, sort of. The “school” was a single room in the basement of the state capitol building, where UT’s law professors took turns lecturing to a single student: Sweatt was the only student in the entire class. 

Sidebar: I definitely still have nightmares about being the only student in a law school class.

The Supreme Court ruled in favor of Sweatt, finding that Texas’s law school with just one student wasn’t “equal,” either. The court noted that one of the most important parts of law school is participating in a society of almost-lawyers. Anyone who misses out on that part of law school isn’t going to have those professional connections when they graduate, and their legal careers will be worse off for it. For most people, having to hang out with a dozen lawyers sounds like a good reason to skip law school, but your state can’t make the decision for you.

### Almost there, I promise

On the same day as *Sweatt*, the Supreme Court also ruled in *McLaurin v. Oklahoma* that a black Ph.D student couldn’t be forced to study in a separate room of the library, or sit at a separate table in the cafeteria, or have a desk in the hallway outside the classroom. 

So it’s 1950, and we’re down to “separate but equal is still mostly okay, but segregating law students and graduate students is discriminatory.” All those test cases set the stage for *Brown v. Board of Education*, which—spoilers—ends with the Supreme Court ruling that regardless of whether the separate facilities are “equal,” the fact that they’re separate at all is inherently unconstitutional. 

The moral of the story, apart from “holy cow it took our ancestors a long time to get this right,” is that test cases are how organized and well-funded advocates chip away at laws. You can see the same strategy applied to… modify campaign finance laws, starting with *[Randall v. Sorell](https://en.wikipedia.org/wiki/Randall_v._Sorrell)*, *[Citizens United](https://en.wikipedia.org/wiki/Citizens_United_v._Federal_Election_Commission)*, and *[McCutcheon](https://en.wikipedia.org/wiki/McCutcheon_v._FEC)*.

### Would You Like to Phone a Fed

Hey, so, remember that guy Farook and his phone that the FBI really really wants to unlock and poke around in? Sure is funny how the FBI was hilariously inept in their investigation, and now the only way they can get into the phone is by having Apple build a tool to circumvent its own security measures, right? 

After all, if you were the FBI, and you wanted a test case, this whole “real live radicalized Muslim terrorist committing an act of war on American soil with pipe bombs and assault rifles before dying in a glorious shootout with the police” thing would be, like, the *perfect* test case. It sure would be a shame if the traditional investigation went awry, and the only way to get access to the phone was filing a completely novel test case.

But this inclined plane is notable for its low coefficient of friction. Today, it’s software to let the FBI brute-force the passcode on the phone of a confirmed terrorist; tomorrow, it’s suspected terrorists; and [next week it’s a criminal suspect](http://www.dailydot.com/politics/cy-vance-da-apple-google-encryption-fight/). Today, it’s software to circumvent the passcode restrictions on a phone, tomorrow it’s the phone’s GPS, and the day after that, it’s leaving the microphone on all the time.

And look, the FBI’s job is to investigate crimes and keep us safe. It’s natural for them to want better tools. Heck, *I* want them to have better tools. They catch criminals, which is A Good Thing. But there’s simply no arguing that if the FBI compels Apple to circumvent iPhone security today, they will resist the temptation to use Apple’s tool on another phone tomorrow. They’ll use it like any other tool. 

You don’t even have to imagine, just look at the Patriot Act. It was passed to give law enforcement new powers to fight terrorism. The full name of the law is the Uniting and Strengthening America by Providing Appropriate Tools Required to Intercept and Obstruct *Terrorism* Act, which spells USA PATRIOT Act because the country kind of lost its mind after September 11. And do you know what the FBI does today with the Appropriate Tools that help them Intercept and Obstruct Terrorism? [Bust drug dealers](https://www.eff.org/deeplinks/2014/10/peekaboo-i-see-you-government-uses-authority-meant-terrorism-other-uses).

> Out of the 3,970 total requests from October 1, 2009 to September 30, 2010, 3,034 were for narcotics cases and only 37 for terrorism cases (about .9%). Since then, the numbers get worse. The 2011 report reveals a total of 6,775 requests. 5,093 were used for drugs, while only 31 (or .5%) were used for terrorism cases. The 2012 report follows a similar pattern: Only .6%, or 58 requests, dealt with terrorism cases. The 2013 report confirms the incredibly low numbers. Out of 11,129 reports only 51, or .5%, of requests were used for terrorism.

If you’re the FBI, and you’ve got broad, maybe-unconstitutional search powers thanks to the Patriot Act, the temptation to use them in every case is just too hard to resist. The FBI is the good guys in these cases, investigating drug dealers, sex offenders, racketeers, and killers; all people who should be caught. Using the Patriot Act or Apple’s new tool is a great way to catch this bad guy quickly and move on to the next bad guy. 

### Here’s The Thing Though

Remember when I said that the FBI found the perfect test case for getting the court to give them a cool new search power? I’m not convinced that it is.

Guy buys a couple of rifles, walks into his workplace, and shoots a few dozen people. If you close your eyes, this sounds like your run of the mill, garden variety workplace shooting. It’s awful how numb to this kind of horror most Americans are by now, but the fact is that this villainy is pretty vanilla. Mass shootings are almost a daily occurrence in America, so while this is tragic, you’re not doing anything to us that we’re not doing to ourselves. You’re just the asshole who brought a gun to work. We’ve got thousands of those.

The whole idea fails the straight face test: that Farook and his wife were in communication with ISIS, and that all parties involved agreed that the best way to wage violent jihad against The Great Satan was a county health department’s Christmas party. What, they wanted to strike at our ability to regulate taco trucks? To take away office Christmas parties? Look, watching YouTube videos of guys in masks is a good way to get on a watch list, but it doesn’t make a guy with a gun a terrorist mastermind.

Don’t take my word for it. [The FBI and NSA have already weighed in on this](http://www.slate.com/articles/technology/future_tense/2016/02/the_apple_fbi_encryption_battle_is_over_an_iphone_unlikely_to_yield_critical.single.html):

> National Security Agency Director Mike Rogers told Yahoo last week that metadata obtained from Farook and Malik’s communication revealed they “didn’t find any direct overseas connections.”
>
> So this appears to be a situation where the FBI has already answered the terrorist question: whether the couple took instructions from a foreign terrorist organization. The FBI has repeatedly said they did not.

But all right. Say, for the sake of argument that this particular workplace shooting is actually terrorism. The FBI needs to investigate the terrorist. But why this phone, exactly? Remember, this is Farook’s work phone; he destroyed his personal phone, and his wife’s phone. This phone was “found” on the front seat of his Lexus, parked in his garage. Draw your own conclusions about what phones had what evidence on them, and what phone had emails from Bob in Accounting.

Perhaps this is the terrorist mastermind’s final bluff: a gambit that the phone with all the evidence, left in plain sight, will seem too innocuous to investigate. Or that the Americans’ Constitution will prevent Apple from having to help subvert the encryption. It’s definitely *possible* that the FBI will find some evidence on this phone, but… that’s a lousy legal standard for a search warrant, let alone a case this monumental, let alone one perched over a slope so slippery.

The FBI has probably waited for a test case like this to fall in their laps for a long time. But if this is the best they’ve got, maybe we should take that as a sign that this isn’t a tradeoff that’s ever a good idea.