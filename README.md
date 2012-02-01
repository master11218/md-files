# Dev Docs

This repo contains several markdown formatted documents that detail how to manage servers, development processes, deployment tips, cheat sheets, etc. These docs are in a git repo to make it easy for everyone on the team to contribute back and help keep them up to date, please do so!

To view these files with formatting, perform the following actions locally (tested on OS X).

Setup RVM w/ ruby 1.9.3:
    
    rvm install ruby-1.9.3-p0
    
Clone the repo:

    git clone https://github.com/j2fly/md-files.git
    
CD to the root of the repo to trigger the .rvmrc file. If your ZSH or Bash theme supports it, you should have the following specified after accepting the .rvmrc:

    ruby-1.9.3-p0@docs

Bundle (from the root of the app):

    bundle install
    
Link the app to POW with powder:

    bundle exec powder link
    
Start guard:

    bundle exec guard
    
Open the app:

    bundle exec powder open
    

# Adding / Editing Files

Each time a file in the 'markdown' directory is saved, it'll create the equivalent html file in the 'html' directory.

The index.html file in the 'html' directory will be automatically populated with links to each of the html documents (except itself) via [guard-toc](http://rubygems.org/gems/guard-toc).

Optionally you can install the [live-reload extension](http://help.livereload.com/kb/general-use/browser-extensions) for your browser so that the changes to the html files are immediately visible.


# Screenshots

Here are a few images of how the html output files appear:

<img src='http://cl.ly/Dotg/docs.dev.jpg' title='Index file list' width='800px' />

<img src='http://cl.ly/Doqw/docs.dev_html_postgresql_cheatsheet.html.jpg' width='800px' />