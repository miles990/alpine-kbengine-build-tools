FROM alpine:3.4

MAINTAINER AlexLee <alexlee7171@gmail.com>

# Installing required package
# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk upgrade --update && \
	apk add --update curl wget ca-certificates gcc g++ openssl-dev mariadb mariadb-client python git tmux && \
    rm -rf /var/cache/apk/*

EXPOSE 80
