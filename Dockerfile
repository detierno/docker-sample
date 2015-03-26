# base on latest ruby base image
#FROM ruby:latest

# update and install dependencies
#RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

#ENV RAILS_ENV development
# setup app folders
#RUN mkdir /myapp
#WORKDIR /myapp

# copy over Gemfile and install bundle
#ADD Gemfile /myapp/Gemfile
#ADD Gemfile.lock /myapp/Gemfile.lock
#RUN bundle install

# copy over remaining app files
#EXPOSE 3000
#CMD ["bundle", "exec", "rails", "server"]
#ENV PATH /myapp/bin:$PATH
#ENTRYPOINT ["/myapp/bin/start.rb"]
#CMD ["server"]

#ADD . /myapp

FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]


