---
layout: post
title: Do Not Pass Go
date: 2016-02-14
categories: 
- Well They Sound Harmless
---

You may have heard that Google’s DeepMind, an artificial intelligence, has mastered Go. This is a big deal, because it’s hard to build a computer that’s good at games. In video games, there’s always one particular move that confuses the AI opponent: football games fall for trick plays over and over, racing games have AIs that don’t understand how to overtake other cars safely, and so on. Games are hard, humans are smart, and computers aren’t. Note that computers were [perfectly average](https://en.wikipedia.org/wiki/Human–computer_chess_matches) at traditional games like Chess for literally decades. 

Sure, computers are great at chess now. Everyone knows that IBM’s Deep Blue supercomputer won a chess match against the reigning world champion Garry Kasparov, but that game was a rematch. The year before, Kasparov handily won his match against Deep Blue. The Deep Blue machine only won the rematch after literally doubling its computing power to improve its brute-force analysis of the outcome of nearly every possible move at once. Deep Blue was one of the the 250 most powerful supercomputers in the world at the time. A little more than a decade later, [this underwhelming smartphone](http://www.gsmarena.com/htc_touch_hd-2525.php) could run a chess program capable of trouncing all but a handful of players on the planet. Computers got way smarter in a hurry.

So what happened with this Go thing? Are we in the ‘supercomputer ekes out a win’ stage, or the ‘cellphone checkmates you in thirty seconds’ stage? And how do machines go from one stage to the other? <!--more-->

### okay go

It starts with Nature Magazine writing that a [Google AI algorithm mastered ancient game of Go](http://www.nature.com/news/google-ai-algorithm-masters-ancient-game-of-go-1.19234)

> In China, Japan and South Korea, Go is hugely popular and is even played by celebrity professionals. But the game has long interested AI researchers because of its complexity. The rules are relatively simple: the goal is to gain the most territory by placing and capturing black and white stones on a 19 × 19 grid. But the average 150-move game contains more possible board configurations — 10^170 — than there are atoms in the Universe, so it can’t be solved by algorithms that search exhaustively for the best move.

For comparison, Deep Blue beat Kasparov by looking up about 10^8 moves per second. You’d think a computer that solves Go could make Deep Blue look… well, human. DeepMind has to run on some crazy hardware, right?

That’s the funny part. DeepMind was playing Go using about 1,200 processors, which is definitely 1199 more than my computer has. But the [10th fastest supercomputer](https://en.wikipedia.org/wiki/Texas_Advanced_Computing_Center#Stampede) in the world right now runs on 102,400 processors. This is an admittedly imperfect comparison: it’s like estimating cars’ top speeds by measuring the circumference of their steering wheels. But the point is that there DeepMind isn’t an exercise in raw computing power, like Deep Blue was. But IBM hasn’t exactly been resting on its laurels: they built Watson, a computer that played the TV game show Jeopardy better than the top human champions. 

So mastering Go is just the next logical step to robot dominance, right? 

### Well, No

Even if you just read the Nature article, it would be a bit of a stretch to say DeepMind has “mastered” Go. It’s won a Go match against a player ranked in the top 700 in the world, but this wasn’t Deep Blue versus Kasparov again. The American Go Association [created a video](https://www.youtube.com/watch?v=NHRHUHW6HQE) with a top-level player, Myungwan Kim, critiquing the play of both sides during the match. This session is two hours long and filled with a good amount of jargon, but it looks like both man and machine didn’t play what you’d call a top-notch game.

If—like me—you don’t have two hours or a working knowledge of Go theory, Reddit’s machine learning community has a [great summary](https://www.reddit.com/r/MachineLearning/comments/43fl90/synopsis_of_top_go_professionals_analysis_of/?). (AlphaGo is the name of the program that the DeepMind computer runs when it’s playing Go.)

> In the first game both sides played very passively in the opening. Leisurely and gentle they say. Myungwan Kim finds that AlphaGo has a weakness here, it doesn't seem to understand the value of taking and holding initiative. Complicated to explain, but at its core it's about doing moves which force your opponent to use their turn to react to your move over doing moves which might be equally valuable to you, but leave your opponent free to do whatever they want on their turn.
>
> Important, Myungwan Kim says because of this that the first game Fan Hui was winning in the opening. He says this was the only game Fan Hui was winning after the opening. He estimates Fan Hui was about 10 points ahead, and can't see white getting back even 5 points coming out of that opening. Myungwan Kim offers some alternate moves for AlphaGo which would still have Fan Hui in the lead, but would've given AlphaGo better opportunities to comeback.

The tl;dr version the tl;dw from Reddit is that DeepMind hasn’t mastered Go. It’s really good at playing Go, but it makes some amateur mistakes from time to time; it’s fantastic at direct confrontation, but it doesn’t appear to understand the deeper, high-level strategy which underpins Go. It doesn’t take a great leap of imagination to think that such critiques were applied to early chess-playing computers, as well. DeepMind is going to beat the world champion. It might be this year or it might be next year. But the machines always win.

### generally speaking

But even if DeepMind is the best Go player in the world, that’s not a real Artificial Intelligence. It’s just a computer program that’s good at a single task. Gary Marcus, a professor of psychology and neural science at NYU, [takes a broader view](https://medium.com/backchannel/has-deepmind-really-passed-go-adc85e256bec) of the implications of DeepMind for a general AI, and says that arguing about whether or not this machine has mastered Go is pointless:

> The real question is whether the technology developed there can be taken out of the game world and into the real world. IBM has struggled to make compelling products out of DeepBlue and Watson. Part of the reason for that is that the real world is fundamentally different from the game world. In chess, there are only about 30 moves you can make at any one moment, and the rules are fixed. In Jeopardy more than 95% of the answers are titles of Wikipedia pages.

It’s a very sobering read. Also, Marcus goes into depth about the two schools of Artificial Intelligence: the machine learning type and the pre-programmed logic tree type. I always appreciate learning about turf battles between two philosophies as an outsider. What’s especially fascinating is that DeepMind is a hybrid between the two types of AI, although previous versions—which demonsrate their intelligence by mastering Atari games—were “pure” machine learning.

Historically, progress on AI has been [pretty slow](http://blog.ipsaloquitur.org/post/rise-of-machines/). The short version is that the rise of cloud computing has made machine learning viable, and now AIs are making staggering leaps forward nearly overnight. But we’ve still got those decades of experience with pre-programmed logic tree AIs, and combining the two is like a chocolate peanut butter cup, only *nerdier*.

### The Future Is Here

Back to Marcus: he’s absolutely right that being good at Go or Jeopardy or Chess or Breakout isn’t the point. The hope is that machine learning solving all these longstanding problems will lead to [more things like this](http://www.wired.com/2015/09/voice-interface-ios/):

> The prototype is called Hound, and it’s pretty incredible. Holding a black Nexus 5 smartphone, Mohajer taps a blue and white microphone icon and begins asking questions. He starts simply, asking for the time in Berlin and the population of Japan. Basic search-result stuff—followed by a twist: “What is the distance between them?” The app understands the context and fires back, “About 5,536 miles.”

It gets better:

> He asks Hound to calculate the monthly mortgage payments on a million-dollar home, and the app immediately asks him for the interest rate and the term of the loan before dishing out its answer: $4,270.84.
>
> “What is the population of the capital of the country in which the Space Needle is located?” he asks. Hound figures out that Mohajer is fishing for the population of Washington, DC, faster than I do and spits out the correct answer in its rapid-fire robotic voice. “What is the population and capital for Japan and China, and their areas in square miles and square kilometers? And also tell me how many people live in India, and what is the area code for Germany, France, and Italy?” Mohajer would keep on adding questions, but he runs out of breath. I’ll spare you the minute-long response, but Hound answers every question. Correctly.

This is definitely more complex than what the digital assistants in our phones can do today, and it’s impressive to think that our phones didn’t have any digital assitants five years ago. Like Watson and DeepMind, this technology is developing unfathomably quickly. Heck, Google’s even confident enough to use machine learning to [tweak its search algorithm](http://www.wired.com/2016/02/ai-is-changing-the-technology-behind-google-searches/) (read: that thing that drives virtually all of Google’s revenue).

### One last thing I swear

One of my favorite essays I read in 2015 was Paul Tyma’s [How Artificial Intelligence Will Really Kill Us All](http://paultyma.blogspot.com/2015/10/how-artificial-intelligence-will-really.html). If Hound is a second-generation digital assitant, Tyma’s imagining a third or fourth-generation, and he knows it’s still not intelligent. Before you read his essay, test yourself and see how you get to “AI will kill us” from here:

> What's coming next? How about: "OK Google, what's the probability my flight will crash today?" 
>
> All in an instant - It could scan existing weather reports and correlate that to weather related crashes across history. It could scan failure reports for my type of aircraft including the precise maintenance record for my plane including the careers of the exact mechanics that last serviced it. Cross-reference that with my pilot's flying record and check his credit card transactions today to make sure he's only been pounding Mountain Dew. It could scan all known terrorist databases looking for really bad guy whereabouts and guess if any might be in Detroit today and cross correlate that as to how high value a target me (hint: low) or my flight is. 
>
> Of course, the list could go on. Mind you, this whole system is not actually intelligent or conscious. It's just incredibly good at fetching, analyzing, and correlating data. It does have components of what we currently call artificial intelligence, but it's not by itself an autonomous intelligence. Fetching data is not intelligent as we'd generally consider it, but knowing how to put that data together enters the realm at least (and surely fools humans into thinking it might be). 

*Sidebar*: I’ve spent the last four years working in the open data industry, and there are a whole bunch of assumptions up there. Maintenance records for individual planes aren’t available in a public database. Neither is a pilot’s flying record, nor his or her credit card transactions. Nor are terrorist databases: the CIA doesn’t exactly put an API on its stuff. There just isn’t as much reusable data in the world as you might think. Yet.

But I take Tyma’s central point: succeeding at complicated things doesn’t necessarily make you conscious, let alone intelligent. Look, DeepMind doesn’t have to have a philosophy for maintaining initiative in a game of Go; it doesn’t have to read papers on game theory and articulate an opinion on aggressive versus defensive styles of play. It puts its little rocks on the game board one stone at a time, just like the rest of us philosophical zombies.

