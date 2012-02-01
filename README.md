# Dev Docs

This repo contains several markdown formatted documents that detail how to manage servers, development processes, deployment tips, cheat sheets, etc. These docs are in a git repo to make it easy for everyone on the team to contribute back and help keep them up to date, please do so!

To view these files with formatting perform the following actions locally (tested on OS X)

Setup RVM:

    rvm install ruby-1.9.3-p0
    
Clone the repo:

    git clone https://github.com/j2fly/md-files.git
    
CD to the root of the repo to trigger the .rvmrc. You should have the following specified after accepting the .rvmrc:

    ruby-1.9.3-p0@docs

Bundle (from the root of the app):

    bundle install
    
Link the app to POW with powder:

    powder link
    
Start guard:

    bundle exec guard
    
Open the app:

    powder open
    
Now each time you save a file from the `markdown` directory it'll create the equivalent html output in the `html` directory.

Optionally you can install the [live-reload extension](http://help.livereload.com/kb/general-use/browser-extensions) for your browser so that the changes to the html files are immediately visible.

Note: the index.html file in the 'html' directory will be automatically populated with links to each of the html documents via guard.