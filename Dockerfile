FROM ruby:3.3.5

WORKDIR /app
COPY . /app

RUN bundle install

CMD ["ruby", "hello_world.rb", "-p", "$PORT"]
