FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.8

RUN gem install knjappserver --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["check_running.rb"]
CMD ["--help"]
