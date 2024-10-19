
FROM ruby:3.0.0
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn postgresql-client netcat

ADD . /quiz_app
WORKDIR /quiz_app
RUN rm -rf node_modules vendor
RUN gem install rails bundler
RUN bundle install
RUN yarn install
ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]