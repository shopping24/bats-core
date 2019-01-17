ARG bashver=latest

FROM bash:${bashver}

RUN apk add bind-tools jq curl wget ncurses

RUN ln -s /opt/bats/bin/bats /usr/sbin/bats

COPY . /opt/bats/
