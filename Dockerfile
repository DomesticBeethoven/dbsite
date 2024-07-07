# Use the official Ruby image as the base image
FROM ruby:2.7

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set the working directory
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the working directory
COPY Gemfile* ./

# Install the required gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 4000 to the outside world
EXPOSE 4000

# Set the command to run the Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
