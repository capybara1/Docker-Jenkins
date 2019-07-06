FROM jenkins/jenkins:lts-alpine
ARG VERSION
ARG VCS_REF
ARG BUILD_DATE
ARG ARG_ATTEMPTS
ARG ARG_TIMEOUT
ARG ARG_SUCCESS_TIMEOUT
ARG ARG_SUCCESS_ATTEMPTS
ARG ARG_CURL_RETRY
ARG ARG_CURL_OPTIONS
ARG ARG_CURL_CONNECTION_TIMEOUT
ARG ARG_CURL_RETRY
ARG ARG_CURL_RETRY_DELAY
ARG ARG_CURL_RETRY_MAX_TIME
ENV ATTEMPTS ${ARG_ATTEMPTS}
ENV TIMEOUT ${ARG_TIMEOUT}
ENV SUCCESS_TIMEOUT ${ARG_SUCCESS_TIMEOUT}
ENV SUCCESS_ATTEMPTS ${ARG_SUCCESS_ATTEMPTS}
ENV CURL_RETRY ${ARG_CURL_RETRY}
ENV CURL_OPTIONS ${ARG_CURL_OPTIONS}
ENV CURL_CONNECTION_TIMEOUT ${ARG_CURL_CONNECTION_TIMEOUT}
ENV CURL_RETRY ${ARG_CURL_RETRY}
ENV CURL_RETRY_DELAY ${ARG_CURL_RETRY_DELAY}
ENV CURL_RETRY_MAX_TIME ${ARG_CURL_RETRY_MAX_TIME}
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
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
