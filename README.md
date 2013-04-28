Planet Generator
----------------

Easily create a blog roll or planet out of multiple feeds on a similar
subject.

How to use
----------

Change the `$csv_url` in `find_feeds` to point to a CSV file that lists the
sites you want to aggregate.  If you don't want to download blogs.csv from
somewhere, just put it in the work dir as blogs.csv and disable the
`fetch_csv` function call.

Run `download_feeds` to actually download the content of each feed in
`feeds.csv`, the file that was generated by `find_feeds`.

Edit the `$planet_XXX` and `@keywords` variables in `generate_planet` to
your needs.  The `@keywords` array are words the feed items must match to be
included (at least one).  Run the script to create `planet.xml` in the work
dir.  Symlink this file into your website somewhere.

Install appropriate entries in your crontab to make it run on a regular
basis.

Copyright
---------

Robin Smidsrød <robin@smidsrod.no> 2013

License
-------

Same as Perl 5.
