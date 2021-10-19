FROM debian:latest

RUN apt update
RUN apt install -y build-essential ruby-bundler libcurl4-openssl-dev zlib1g-dev ruby-dev libsqlite3-dev

ADD generate-posts-prs Gemfile /srv/pluto/
RUN cd /srv/pluto/ && bundle install

RUN chmod 0755 /srv/pluto/generate-posts-prs
ENTRYPOINT ["/srv/pluto/generate-posts-prs"]

