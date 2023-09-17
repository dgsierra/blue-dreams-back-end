FROM ruby:3.2.2-alpine3.18

ENV RUBY_VERSION 3.2.2
ENV APP_HOME /app
WORKDIR $APP_HOME

# Update / Install the dependencies for start the container
RUN apk update && apk add build-base postgresql-dev nodejs yarn

# Install dependencies for the our application
RUN apk --no-cache update \
    && apk --no-cache add libxml2 libxslt \
    && apk --no-cache add libc6-compat \
    && gem update --system 3.4.12 \
    && gem install nokogiri -- --use-system-libraries \
    && apk add git \
    && apk add postgresql-contrib

# For sending the logs to the docker logs manager.
RUN ln -sf /dev/bd_logs /tmp/

# Install rails for processeing the rest of the commands
RUN gem install rails

# Copy the files from the host to the container
COPY . $APP_HOME

# install the gems from the Gemfile its a separated layer to prevent rebuild the gems
# when the code changes or the Gemfile.lock changes
RUN bundle install

# This are the ports exposed by the container
EXPOSE 3000
RUN echo ${RAILS_ENV}
CMD ["rails", "server", "-b", "0.0.0.0"]
RUN echo "Dockerfile Image Creade Successfully"
