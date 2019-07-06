# Jenkins

[![](https://images.microbadger.com/badges/version/capybara1/jenkins.svg)](https://microbadger.com/images/capybara1/jenkins "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/capybara1/jenkins.svg)](https://microbadger.com/images/capybara1/jenkins "Get your own license badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/capybara1/jenkins.svg)](https://microbadger.com/images/capybara1/jenkins "Get your own image badge on microbadger.com")

## Motivation

Jenkins container with pre-installed plugins (latest version each):

- [ansible](https://plugins.jenkins.io/ansible)
- [ansicolor](https://plugins.jenkins.io/ansicolor)
- [antisamy-markup-formatter](https://plugins.jenkins.io/antisamy-markup-formatter)
- [blueocean](https://plugins.jenkins.io/blueocean)
- [build-timeout](https://plugins.jenkins.io/build-timeout)
- [cloudbees-folder](https://plugins.jenkins.io/cloudbees-folder)
- [email-ext](https://plugins.jenkins.io/email-ext)
- [git](https://plugins.jenkins.io/git)
- [github](https://plugins.jenkins.io/github)
- [greenballs](https://plugins.jenkins.io/greenballs)
- [job-dsl](https://plugins.jenkins.io/job-dsl)
- [locale](https://plugins.jenkins.io/locale)
- [matrix-auth](https://plugins.jenkins.io/matrix-auth)
- [pam-auth](https://plugins.jenkins.io/pam-auth)
- [pipeline-build-step](https://plugins.jenkins.io/pipeline-build-step)
- [pipeline-github-lib](https://plugins.jenkins.io/pipeline-github-lib)
- [timestamper](https://plugins.jenkins.io/timestamper)
- [ws-cleanup](https://plugins.jenkins.io/ws-cleanup)

## Usage

### Command Line

```sh
docker run -p --name jenkins --net host -v jenkins_home:/var/jenkins_home capybara1/jenkins:1
```
