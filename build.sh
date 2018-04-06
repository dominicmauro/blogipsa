#!/bin/bash

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

SHELL=/bin/bash
HOME=/home/hemingway
PATH=/bin:/usr/bin:/usr/local/bin

cd /home/hemingway/bl/jekyll
chruby-exec 2.3.1 -- /home/hemingway/.gem/ruby/2.3.1/bin/jekyll build