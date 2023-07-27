FROM alpine:3.18

MAINTAINER Rob Sternberg

ARG VERSION=2.3.0

RUN apk --no-cache add tar gzip curl python3 py-dateutil 
RUN curl -OL https://github.com/s3tools/s3cmd/releases/download/v${VERSION}/s3cmd-${VERSION}.tar.gz
RUN tar -zxf s3cmd-${VERSION}.tar.gz --strip 1 -C /usr/local/bin

ENTRYPOINT ["s3cmd"]

CMD ["--help"]
