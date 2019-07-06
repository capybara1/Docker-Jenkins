FROM jenkins/jenkins:lts-alpine
ARG VERSION
ARG VCS_REF
ARG BUILD_DATE
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.version="$VERSION" \
      org.label-schema.maintainer="https://github.com/capybara1/" \
      org.label-schema.url="https://github.com/capybara1/Docker-Jenkins" \
      org.label-schema.name="jenkins" \
      org.label-schema.license="MIT" \
      org.label-schema.vcs-url="https://github.com/capybara1/Docker-Jenkins" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.dockerfile="/Dockerfile"
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN ATTEMPTS=4 CURL_RETRY=5 CURL_RETRY_DELAY=3 /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
