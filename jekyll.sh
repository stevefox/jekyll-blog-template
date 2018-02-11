#!/bin/bash

cd /srv/jekyll/src && bundle install
cd /srv/jekyll
jekyll $@
