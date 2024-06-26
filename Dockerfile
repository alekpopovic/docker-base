FROM ruby:3.0.2

RUN \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \ 
    nodejs \ 
    yarn \ 
    ncftp \ 
    php \
    yara
    
RUN gem install bundler
RUN gem install rails
RUN gem install sidekiq

RUN ruby -v 
RUN php -v 
RUN node -v
