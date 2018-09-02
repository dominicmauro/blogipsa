---
layout: post
title: "How I Update Jekyll From My iPhone: Part 1"
date: 2017-02-05 17:10
categories: 
- Nobody Asked, Nerd
---

I launched this site with the name "Almost Legally" just about a decade ago, at the end of my first year of law school. I'd spent a good amount of time tinkering with WordPress in college, and I was pretty comfortable with the software systems involved. And while those were the halcyon days for sites like Tumblr and LiveJournal, I felt it was important to keep my writing on my own site, instead of joining someone else's. So I paid a small web hosting company four dollars a month for a folder to FTP into and a SQL database to point WordPress at.

WordPress is a fine platform, and it's the gold standard for user-friendly blog software, but it's overkill by a country mile for a one-man comedy law blog. WordPress has a ton of moving pieces and I really just need something to show a bunch of text. There are some philosophical arguments to be made for using a tool no more complicated than the job requires, and I generally find those convincing. 

So I rented an entire server and taught myself how to administer *that*. This was probably a net increase in work, and definitely an increase in moving pieces, but it was a great chance to learn a new set of skills.

So I [migrated this blog](http://blog.ipsaloquitur.org/post/easy-tips-for-octopress/) from WordPress to Octopress, and later to Jekyll. This meant giving up one of my favorite features in WordPress. See, WordPress has a pretty great mobile app for drafting, editing, and publishing posts on the go. Because WordPress runs on a server, you can log into the system anywhere and write new stuff or edit a typo you just found.

Jekyll, on the other hand, isn't a suite of software you run on a server. It's a series of shell scripts to which you feed a folder of text files; when it's done, you have a folder full of HTML files you upload to a web server. So there's no app for your phone or otherwise: you have to have a folder of text files and a computer to run the Jekyll command-line program. 

This creates some friction. A decade ago, I owned a flip phone and did all my computing from my laptop. Jekyll would have been a great fit. But it's 2017: I do most of my computing from my iPhone and go days or weeks without opening my laptop. So really, a central server and a slick app with which to publish posts would be great! WordPress is overkill, but some of those moving pieces come in really handy when you're trying to make writing as frictionless as possible.

So here's what I do to make sure updating my Jekyll site from my iPhone is as simple as if I still used WordPress. This is definitely not the only way to do it, it's almost certainly not the right way to do this, and it's probably not the smartest way to do this. But when I was trying to figure out how to do this, I pieced together a lot of information from a lot of different sources. Hopefully, having this all in one spot is useful for someone else. <!--more-->

### Preface

Jekyll just needs a command line and a folder full of text files, right? Nothing says that folder and that command line has to be on your laptop. Jekyll is a program built in Ruby, a programming language available on lots of platforms. So I put it on my server instead of putting it on my laptop. 

We'll start from the presumption that you've got a Jekyll blog on your local machine, and you already have a web server you're publishing it to. The server could be running Apache, running nginx, whichever. There are a thousand and one tutorials to help you figure out how to set those up. I read a dozen of them to stumble my way through configuring Apache (and then switching to nginx because hey learning is fun). 

I just tested the following instructions on Ubuntu 16.04, but I learned how to do this with 14.04.

### Step 1: Installing Jekyll on Your Server 

Installing Ruby and Jekyll was a little tougher than I expected, because the version of Ruby installed from the default Ubuntu repositories had some issues when trying to install Jekyll in the next step. On 14.04, the repository version of Ruby was too old for Jekyll. On 16.04, Ubuntu didn't "see" where Ruby ended up after installation. I also failed to teach myself enough about the other conventional ways to install Ruby, `rvm` and `rbenv`, to get Jekyll to "see" Ruby well enough to run. This step probably isn't a big hurdle for everyone else, but it tripped me up for an embarrassing length of time.

Turns out that there's a fourth avenue for installing Ruby on Ubuntu, which means 2017 is not quite the year of Linux on the desktop. There's always next year, I suppose.

I used a utility called [ruby-install](https://github.com/postmodern/ruby-install), which installs Ruby in a place that Ubuntu could find. I'm not sure why that worked when `rvm` and `rbenv` did not. I get the idea of a specific version of Ruby being available in one folder but not another—and why you'd want to do that—but it was harder than I thought to get `rvm` and `rbenv` to see Jekyll. Or vice-versa. Whichever. Minus ten nerd points from Hufflepuff. 

### Step 1 ½: Installing Ruby 

The `ruby-install` Github page features the following installation instructions:

	wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
	tar -xzvf ruby-install-0.6.1.tar.gz
	cd ruby-install-0.6.1/
	sudo make install

If you haven't compiled anything from its source code on your server before, you'll have to install `make` with `apt-get` before that fourth step works.

But after it works, the `ruby-install` script is in the `bin` folder inside the `ruby-install-0.6.1` folder.

Because of the specific server configuration (i.e. the cheapest and least-powerful computer DigitalOcean offers) onto which I was installing Ruby, I had to run `ruby-install` with the following parameters:

	ruby-install --latest ruby -- --disable-install-rdoc

Otherwise, the installation process would fail, apparently due to some memory constraints which you avoid by disabling the installation of whatever `rdoc` is. If you pay for the second-cheapest server, it might be able to run `ruby-install` with the default parameters. 

In addition, I had to install [chruby](https://github.com/postmodern/chruby) to set the system version of Ruby, likely because I had so many versions of Ruby installed from my previous failed exploits with `rbenv` and `rvm`. That's: 

	wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
	tar -xzvf chruby-0.3.9.tar.gz
	cd chruby-0.3.9/
	sudo make install

And then edit your `~/.bashrc` file to include the line:

	source /usr/local/share/chruby/chruby.sh

and either re-login or use `source ~/.profile` to reload your `.bashrc` file. At this point, there's a version of Ruby on your system in a place where Jekyll can see it. 

### Step 2: Installing Jekyll for Reals

Now, you download and install Jekyll from Ruby's built-in package manager, `gem`, just like you did on your laptop. This is the easy part. If you are one of the millions of people who have more Ruby-fu than me, you might work your way up to this step in minutes instead of hours. But once you're here, run: 

	gem install jekyll bundler

Now you've got Jekyll and all its associated pieces installed. We're firmly back in "a thousand and one tutorials for this stuff" territory, but in the interest of this being a fairly thorough guide, run:

	jekyll new YourSiteHere

And you get a blank copy of Jekyll with your standard Hello, World! placeholder post in a folder called `YourSiteHere`.

Now, because this copy of Jekyll lives on your server instead of your laptop, we take some things under consideration. First, Jekyll is a script you'll need run to add new posts to your blog, but logging into your server to manually run a script every time you upload something is kind of annoying. It's certainly not WordPress Frictionless. Fortunately there's an easy solution here. Your server already has a program called `cron` which will run any shell command you want at any interval you specify. 

There's no built-in shell command for "rebuild my Jekyll blog," but we can put the gist of that in a bash script, and have `cron` run *that*.

Here's what I came up with:

	#!/bin/bash
	
	export LANG=en_US.UTF-8
	export LANGUAGE=en_US.UTF-8
	export LC_ALL=en_US.UTF-8
	
	SHELL=/bin/bash
	HOME=/home/YourUsernameHere
	PATH=/bin:/usr/bin:/usr/local/bin
	
	cd /home/YourUsernameHere/YourSiteHere
	chruby-exec 2.X -- /home/YourUsernameHere/.gem/ruby/2.3.1/bin/jekyll build

(Where: YourUsernameHere and YourSiteHere are self-explanatory, and 2.X is the version of Ruby you installed with your `ruby-install -latest` up above. You can type `ruby --version` if you've forgotten.)

Now, there's a big caveat here: I don't know an awful lot about bash, so this is some straight-up cargo cult programming. I don't know how many of those lines are strictly necessary, but they don't appear to hurt anything. I do know that the last line is pretty important: it uses a program included with `chruby` called `chruby-exec` to execute Ruby commands with the version of Ruby installed by `ruby-install`. 

So copy and paste that block of code into a script file of your choice.

And now tell `cron` to schedule that task to run at intervals, regenerating your blog automatically, run:

	crontab -e

to get a pre-formatted `crontab` file. You want to add the following line to the end:

	*/30      *      *       *       *      /the/path/to/your/script.sh

This runs your script every 30 minutes. The tl;dr explanation is  "\*/30" schedules the script to run every minute that is divisible by 30, and then the next \* means that applies every hour (divisible by one), and the next \* means every day, etc. There are another thousand and one tutorials for setting up a `cron` job, if you want to tweak your specific settings. 

So now, we've got Jekyll churning away, rebuilding itself every 30 minutes. All you have to do is upload a properly-formatted markdown file into the Jekyll `_posts` folder and wait a few minutes.

That's it! Now you've got a `_site` folder in your YourSiteName folder that you point Apache/nginx at, just like when you were running Jekyll on your laptop and uploading the finished `_site` folder to your server.

There's one more trick here: perhaps my favorite feature in WordPress that I missed when moving to Jekyll was scheduling posts to be published at a future date. When Jekyll builds your site using the folder full of posts, you can tell it to ignore posts dated in the future by including this line in your `_config.yml` file:

	future: false

So a markdown file dated 2020-1-1 will hang out in my `_posts` folder, not being included in the index page, the archives, etc. until New Year's Day in 2020. 

In the following post, we'll examine how to quickly and easily upload valid markdown files for Jekyll from your phone.
