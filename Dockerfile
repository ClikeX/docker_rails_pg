ARG RUBY_VERSION=2.7
ARG PG_VERSION=13

FROM ruby:${RUBY_VERSION}

# Get basic development tools
RUN apt-get update -qq && apt-get install -y build-essential

# For Postgres
RUN apt-get install -y libpq-dev

# For mysql
RUN apt-get install -y libmariadb-dev

# For imagemagick
RUN apt-get install -y imagemagick

# For nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# For a JS runtime
RUN apt-get install -y nodejs yarn

# Turn of documentation for gems
RUN echo 'gem: --no-document' >> /etc/.gemrc

#  Update bundler and install basic gems
RUN gem update --system
RUN gem install bundler
RUN gem install rails
RUN gem install pg

# Create basic app directory
RUN mkdir -p /var/app