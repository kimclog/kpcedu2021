FROM ubuntu:16.04
MAINTAINER Foo Bar <foo@bar.com>
RUN apt-get -y update
RUN apt-get -y install ruby
RUN gem install bundler
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN bundle install
EXPOSE 4567
CMD bundle exec ruby app.rb -o 0.0.0.0
