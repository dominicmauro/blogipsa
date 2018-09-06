---
layout: post
title: "How I Update Jekyll From My iPhone: Part 2"
date: 2017-02-06 17:10
categories:
- Nobody Asked, Nerd
---

[Previously, on Barely Legally](http://blog.ipsaloquitur.org/how-update-jekyll-iphone-1), I ran a lengthy blog post describing how to install and configure Jekyll on your server instead of using it on a desktop. This post describes how I publish blog posts from my iPhone.

### Part 3: Setting up your iPhone

Honestly, setting up Jekyll is the tough part. The easy part is putting stuff online. You can get any FTP app to send any text file from your phone to your server, and then just walk away. I try to make this part of the process as frictionless as possible, and here's how I do it:

First, by using a specific app to generate the markdown files Jekyll's going to be looking for. I use [Ulysses.app](https://ulyssesapp.com), and I can't recommend it enough. Ulysses works on my phone and my computer, and it's designed to organize lots of text files. There are thousands of text editing apps, and while you can probably just use the built-in Notes.app to generate markdown files, I like the way Ulysses works.

In particular, Ulysses on iOS supports [TextExpander](https://smilesoftware.com/textexpander) shortcuts, and I have a shortcut set up to pre-format a markdown file for Jekyll when I start writing.

When I type `jjyaml`, I get:

	%Y-%m-%d-title.markdown
	---
	layout: post
	title: %|
	date: %Y-%m-%d %H:%M
	categories:
	-
	---

Ulysses uses the first line as the file name, so I end up with a file named something like YYYY-MM-DD-title.markdown as Jekyll is expecting. This works on both the Mac and iOS.

Second, I use [Transmit.app](https://panic.com/transmit-ios/) to send the finished blog post to my server, into the `\_posts` folder. But there's a twist.

If you just use the Share Sheet in Ulysses to send a finished blog post to Transmit, Jekyll has a fit because the first line of the markdown file is not ---, [as expected](http://jekyllrb.com/docs/frontmatter/). This is because Ulysses on iOS uses the first line of a document as the filename, *but keeps the first line of the document in the file*. Twistier: if you manually delete the "YYYY-MM-DD-file.markdown" from the first line, Transmit will name the uploaded file `---.markdown`, because *that* is the first line now. Either way, Jekyll is unhappy either because of a non-standard first line or a non-standard file name.

As I recall, you used to be able to start the first line of a document with `@:` and Ulysses on the Mac would treat whatever followed as the filename. A first line that started with `@:` would be excluded from the actual finished document if you exported it. But on iOS, Ulysses started including the `@:` in the filename, which was a giant hassle to try to parse out. I ended up dropping the `@:` from the TextExpander shortcut.

So I don't send the file directly from Ulysses to Transmit anymore. I send it from Ulysses to [Workflow.app](https://workflow.is), using a workflow that makes sure Transmit receives a file with an actual name apart from the first line. This workflow solves the "first line or file name" problem from the previous paragraph by naming the file for the contents of the first line, and then erasing the first line. You can see this workflow [here](https://workflow.is/workflows/f428bb1cf86f475bab065a764a8dd9e9).

After all this, I can upload a blog post from Ulysses on iOS by tapping Share at the top of any document. It's a lot easier than bringing my laptop everywhere I go.

### Part 4: Setting Up Your Mac

With one-button publishing on my iOS devices, I wanted to see if I could come up with a similarly frictionless way to publish a Jekyll post on my Mac. Unsurprisingly, the answer is yes, and it's a lot easier on a computer because macOS is more flexible than iOS.

I set up [Hazel](https://www.noodlesoft.com) on my laptop, with a folder monitored for any new files with the `.markdown` extension. If a markdown file shows up in that folder, Hazel strips out the first line by running a quick shell script:

	/usr/bin/sed -i .deletethis '1d' $1

Which removes the first line of the file. On macOS, this does not rename the file to `---.markdown` like it does on iOS. Then Hazel uploads the file to my FTP server and deletes the backup version `sed` made with the .deletethis extension. I really, *really* appreciate how Hazel has built-in support for the SFTP protocol, and even supports using key-based authentication for the connection instead of a password. That alone is worth the purchase price.

And one last Hazel rule: I set up an External Folder in Ulysses to hold all my old blog posts. Every day, Hazel uses `rsync` to download any new blog post from my server's `\_posts` folder into my laptop's External Folder in Ulysses. The command looks like this:

	rsync -avz ServerName:/path/to/server/blog/posts /path/to/local/copy/of/posts

This is great, because if I notice a typo on a blog post, I use Ulysses on my phone to login my server with Transmit and [directly edit](https://brooksreview.net/2017/02/ulysses-does-it-too/) that post's markdown source file. Jekyll will automatically regenerate a few minutes later, and the next time I open my laptop, I'll have a copy of that error-free blog post in the External Folder available in Ulysses.

Note: this is separate from the CloudKit-synced Ulysses Library, so I would recommend storing your External Folder in an iCloud, Dropbox, or Google Drive folder. That way, you can get at your latest blog posts from your phone, even if you haven't kept a copy in your proper Ulysses Library; this is in keeping with the whole "phone first" philosophy that started this quixotic misadventure.

### Conclusion

This setup isn't perfect. I would really love to have a script to download blog posts from the server directly into my Ulysses Library. That Library gets automatically synced to every iOS device I own. But Ulysses on macOS doesn't allow other programs direct access to the files in its Library, so I have to use the External Folder workaround. This, in turn, means I don't really have one canonical folder full of markdown files. I have the one in the iCloud Ulysses Library, and one in an External Folder library with a few more posts than in the Ulysses Library. Not a dealbreaker, but I do have to remember to reconcile those two periodically.

Realistically, adding support for AppleScript on macOS would be a huge improvement for Ulysses. I'd use it to move newly-downloaded blog posts from the External Folder into the iCloud Library in Ulysses, eliminating the two folders business.

I'd also like the iOS versions of Ulysses and/or Transmit to be a little more flexible with the way they handled files passing from one to the other. It's a little ridiculous to have to use a third app just to solve the "first line or filename" problem, and even more ridiculous when one of them updates and I have to tinker with the workflow to accomodate the change.

For my part, nothing in this workflow handles the embedding of images, which Ulysses supports beautifully in both iOS and macOS. I can include all the images I want in the post, but they'd get stripped out by Workflow.app during the upload process. I don't generally include images in blog posts, so it's not a huge problem to upload and manually link those when they come up.

Overall, I'm very pleased with how frictionless my workflow is at this point, even if I spent an inordinate amount of time tinkering to set this whole Rube Goldberg system up. And hopefully, writing this all out helps someone with their blogging setup at some point down the road.
