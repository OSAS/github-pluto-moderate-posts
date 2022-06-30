# Create moderated posts

This is a GitHub action that creates moderated feeds for Jekyll. Each post
is transformed into a PR that the website maintainers can then merge or
reject (close).

The feeds are taken from a Pluto feeds database that needs to be up-to-date.
You can use [this other action](https://github.com/OSAS/github-pluto-feeds.git)
to fetch the feeds and fill in the database.
