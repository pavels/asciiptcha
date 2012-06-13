asciiptcha
==========

Small gem to generate and verify captcha based on ASCII Art in Rails3

Requirements
------------

### Ruby and Rails

Asciiptcha requires Ruby version **>= 1.8.7** and Rails version **>= 3.0**

Installation
------------

Asciiptcha is distributed as a gem, which is how it should be used in your app.

Include the gem in your Gemfile:

    gem "asciiptcha"

After installation run rake task to generate initializer (including random encryption key)

    rake asciiptcha:init

Quick Start
-----------

In your view, inside the form add following code: 

   <%= asciiptcha_generate %>

In the controller you can then write something like this:

   if asciiptcha_verify
      # Do something for successfull verification
   end

Usage
-----
   
To change default ids of capctha fields, use following:

    <%= asciiptcha_generate('some_different_id' %>

and

    if asciiptcha_verify('some_different_id')
       # Do something for successfull verification
    end

This way, you can have more than one capctha on single site.
        

Contributing to asciiptcha
-----
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
-----

Copyright (c) 2012 Pavel Sorejs. See LICENSE.txt for
further details.

