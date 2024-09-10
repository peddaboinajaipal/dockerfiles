FROM jenkins/jenkins:lts
USER root
RUN apk update && \
    apk add openjdk11 && \
    rm -rf /var/cache/apk/*
USER jenkins
EXPOSE 8080
CMD ["/usr/local/bin/jenkins.sh"]
