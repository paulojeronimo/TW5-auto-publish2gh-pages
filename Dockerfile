FROM node:alpine

ENV TIDDLYWIKI_VERSION=5.1.19

RUN apk add --no-cache tini
RUN npm install -g tiddlywiki@${TIDDLYWIKI_VERSION}

VOLUME /tiddlywiki
WORKDIR /tiddlywiki

EXPOSE 8080

ENTRYPOINT ["/sbin/tini", "--", "tiddlywiki"]
CMD ["--help"]
