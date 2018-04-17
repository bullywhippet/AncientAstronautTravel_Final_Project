# Base the image on an official, minimal image of preferred Ruby
FROM ruby:2.5.0

# Create application home
RUN mkdir -p /usr/src/app

# Set working directory inside the image
WORKDIR /usr/src/app

# expose the port that server is configured to
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

# Install essential packages
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

COPY Gemfile /usr/src/app/

# Uncomment the line below if Gemfile.lock is maintained outside of build process
COPY Gemfile.lock /usr/src/app/

# Finish establishing our Ruby enviornment
RUN bundle install

# Copy Rails app into place
COPY . /usr/src/app
