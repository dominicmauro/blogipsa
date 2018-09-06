---
layout: post
title: The Loneliest Database
date: 2016-08-10 18:44
categories: 
- Procurement Hell
---

T\. Christian Miller in ProPublica: [The FBI Built a Database That Can Catch Rapists — Almost Nobody Uses It](https://www.propublica.org/article/the-fbi-built-a-database-that-can-catch-rapists-almost-nobody-uses-it). The system is called the Violent Criminal Apprehension Program, or ViCAP. While knowing that The Feds have a centralized database of crime might set your Police State Spidey Sense a-tingling, the truth is more like the year 1984 than the book *1984*:

> That’s what’s striking about ViCAP today: the paucity of information it contains. Only about 1,400 police agencies in the U.S., out of roughly 18,000, participate in the system. The database receives reports from far less than 1 percent of the violent crimes committed annually. It’s not even clear how many crimes the database has helped solve. The FBI does not release any figures. A review in the 1990s found it had linked only 33 crimes in 12 years.

Now, your honor, I'm not some fancy big-city lawyer. And I'm certainly no data scientist. But I do know that when you're talking about big data, the first part of that term is "big," and 'less than 1% of violent crimes' is not "big." In fact, you might want to call this an Anecdotabase. You can't crunch the numbers and catch the bad guys with such lousy data.

The good news is that this isn't costing us a lot of money.

> In an agency with an $8.2 billion yearly budget, ViCAP receives around $800,000 a year to keep the system going. The ViCAP program has a staff of 12. Travel and training have been cut back in recent years. Last year, the program provided analytical assistance to local cops just 220 times.

220 times! If there are 18,000 police agencies in America, it would take 81 years to provide "analytical assistance" to each local agency exactly once. Even Time Warner's customer service picks up faster than that.

You know, maybe the FBI should just scrap this thing. If it hasn't worked by now, this just might not be a system that can ever work. Who knows how many computer systems the various local police agencies use? You can't expect anyone to interface between all of those.

> The U.S. need only look north for an example of how such a system can play an important role in solving crimes. Not long after ViCAP was developed in the United States, Canadian law enforcement officials used it as a model to build their own tool, known as the Violent Criminal Linkage Analysis System, or ViCLAS. Today, the Royal Canadian Mounted Police maintains a database containing more than 500,000 criminal case profiles. The agency credits it with linking together some 7,000 unsolved crimes since 1995 – though not all of those linkages resulted in an arrest. If the FBI collected information as consistently as the Mounties, its database would contain more than 4.4 million cases, based on the greater U.S. population.
>
> Instead, the FBI has about 89,000 cases on file.

Our Northern Nemeses strike again! The most surprising thing here is that the Canadian version doesn't have an extraneous U in it somewhere. Showoffs.

Seriously, though. You get it by now. ViCAP has underwhelmed. It doesn't get results because it doesn't have enough police records to analyze, and it doesn't have enough police records in it because… the police don't put their records in it.

> As the money made its way to the bomb shelter, the FBI conducted a “business review.” It found that local cops were sending the agency only 3 to 7 percent of homicides nationwide. The miniscule staff — about 10 people — could not even handle that load, and was not entering the cases on a timely basis. Cops on the street saw the system as a “black hole,” according to “Cold Case Homicide,” a criminal investigation handbook.
>
> To get information into the database, local cops and deputies had to fill out by hand a form with 189 questions. The booklet was then sent to Quantico, where analysts hand-coded the information into the computer. It was a laborious process that flummoxed even Brooks. He had a hard time filling out the booklet, according to one account — as did officers in the field. Only a few hundred cases a year were being entered.

I bet I can tell you exactly how those 189 questions were determined. The FBI sat down every analyst they could find, and asked them what they'd like to know when solving crimes. And instead of considering local police departments as the users of ViCAP, and anticipating that *ain't nobody got time for 189 questions*, the FBI neglected to trim down that list to the top 50 or so.

The craziest part is that this process wasn't updated when it became obvious that the FBI couldn't keep up with the few police departments that participated in ViCAP. As Miller notes above, the FBI had to manually re-enter 189 answers into their computers every time a crime was reported, and they became overwhelmed almost instantly.

Still, ViCAP is a laudable attempt to eliminate data silos ([previously seen here on BL](http://blog.ipsaloquitur.org/post/open-data-elk-theory/)), despite falling way short of its goal. Here's hoping ViCAP 2.0 is a little more successful.