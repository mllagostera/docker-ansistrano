FROM alpine:3

LABEL description="Ansistrano deploy and rollback, based on Alpine 3.9"

RUN apk update && \
	apk add --no-cache ansible openssh-client sshpass py3-pip && \
	pip3 install --upgrade --break-system-packages 'ansible-core>=2.15' && \
	ansible-galaxy install ansistrano.deploy ansistrano.rollback && \
	rm -rf /tmp/* && \
	rm -rf /var/cache/apk/*
