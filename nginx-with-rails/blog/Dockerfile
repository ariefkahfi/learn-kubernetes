FROM ruby:3.0-bullseye

WORKDIR /app

COPY . .

RUN bundle install
RUN apt update
RUN apt -yqq install libpq-dev

EXPOSE 3000

CMD [ "bin/rails", "s" , "-b", "0.0.0.0" ]