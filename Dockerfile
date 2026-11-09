FROM cgr.dev/chainguard/wolfi-base:latest

LABEL description="Ansistrano deploy and rollback, based on Wolfi (Chainguard)"

RUN apk upgrade --no-cache && \
	apk add --no-cache py3-ansible-core openssh-client sshpass && \
	ansible-galaxy install ansistrano.deploy ansistrano.rollback && \
	rm -rf /tmp/* /root/.ansible/tmp
