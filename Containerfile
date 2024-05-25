FROM alpine:latest

RUN apk update && apk upgrade && apk add gcompat && \
    wget -O /usr/bin/p4d "https://ftp.perforce.com/perforce/r24.1/bin.linux26x86_64/p4d" && \
    wget -O /usr/bin/p4 "https://ftp.perforce.com/perforce/r24.1/bin.linux26x86_64/p4" && \
    chmod +x /usr/bin/p4d && \
    chmod +x /usr/bin/p4 && \
    mkdir /perforce

ENV P4ROOT=/perforce

EXPOSE 1666/tcp
EXPOSE 80/tcp

CMD ["p4d"]
