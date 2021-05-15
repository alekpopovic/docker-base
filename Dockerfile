FROM ruby:3.0.1
RUN \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y --force-yes --no-install-recommends nodejs yarn ncftp
    
RUN gem install bundler
RUN gem install rails
RUN gem install sidekiq
