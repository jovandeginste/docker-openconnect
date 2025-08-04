FROM alpine:3

RUN apk add --no-cache openconnect

VOLUME /etc/openconnect
RUN touch /etc/openconnect/openconnect.conf

ENTRYPOINT ["openconnect", "--config=/etc/openconnect/openconnect.conf"]
CMD ["--help"]
