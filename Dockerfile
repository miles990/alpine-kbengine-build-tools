FROM alpine:3.4

MAINTAINER AlexLee <alexlee7171@gmail.com>

# Installing required package
# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk upgrade --update && \
	apk add --update curl wget ca-certificates gcc g++ make perl openssl-dev mariadb mariadb-client python git tmux

# Installing glibc
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk && \
	apk add glibc-2.23-r3.apk

# Remove chche files
RUN rm -rf /var/cache/apk/*

EXPOSE 80
