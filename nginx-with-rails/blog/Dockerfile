FROM ruby:3.0.0

WORKDIR /app

COPY . .

RUN bundle install
RUN bundle config set force_ruby_platform true

EXPOSE 3000

CMD [ "bin/rails", "s" ]