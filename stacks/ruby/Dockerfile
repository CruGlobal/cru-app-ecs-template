# RUBY_VERSION set by build.sh from .tool-versions
ARG RUBY_VERSION=3.4
FROM public.ecr.aws/docker/library/ruby:${RUBY_VERSION}-alpine

# DataDog logs source
LABEL com.datadoghq.ad.logs='[{"source": "ruby"}]'

# build-base is needed to compile native gem extensions (e.g. puma).
RUN apk upgrade --no-cache && apk --no-cache add build-base

WORKDIR /app

# Install gems first so this layer caches between code changes. There's no
# Gemfile.lock in a fresh template, so bundler resolves and writes one here.
COPY Gemfile ./
RUN bundle install --jobs 4 --retry 2

COPY . .

ENV RACK_ENV=production

# The app listens on $PORT (default 8080); puma binds there and serves
# config.ru.
EXPOSE 8080
CMD ["sh", "-c", "bundle exec puma -p ${PORT:-8080}"]
