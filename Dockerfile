FROM alpine:3

LABEL description="Ansistrano deploy and rollback, based on Alpine 3.9"

RUN apk update && \
	apk add --no-cache ansible && \
	ansible-galaxy install ansistrano.deploy ansistrano.rollback && \
	rm -rf /tmp/* && \
	rm -rf /var/cache/apk/*
