FROM ruby:3.0.0

WORKDIR /app

COPY . .

RUN bundle install

EXPOSE 3000

CMD [ "bin/rails", "s" ]