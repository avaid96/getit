FROM alpine:3.3
MAINTAINER Avi Vaid (@avaid96)
ENV EDGE_REPOSITORY=http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN apk update --repository $EDGE_REPOSITORY \
	&& apk add py-pip ca-certificates \
	&& apk add ffmpeg --repository $EDGE_REPOSITORY \
	&& rm -rf /var/cache/apk/*
RUN pip install -U pip
RUN pip install validators
RUN pip install youtube-dl
COPY remDup.py /remDup.py
COPY ./dwn /dwn
COPY links.txt /links.txt
