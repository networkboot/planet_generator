FROM perl

MAINTAINER Robin Smidsrød <robin@smidsrod.no>

RUN apt-get -q update \
 && apt-get -q -y -o "DPkg::Options::=--force-confold" -o "DPkg::Options::=--force-confdef" dist-upgrade

RUN cpanm Text::CSV
RUN cpanm Feed::Find
RUN cpanm LWP::Protocol::https
RUN cpanm XML::Feed
RUN cpanm File::Slurp
RUN cpanm Regexp::Assemble
RUN cpanm URI
RUN cpanm DateTime

WORKDIR /code

CMD ./find_feeds \
 && ./download_feeds \
 && ./generate_planet
