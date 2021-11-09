FROM alpine:3.13

RUN apk add --no-cache bash postfix postfix-pcre
COPY conf /etc/postfix
COPY run-postfix /run-postfix
VOLUME ["/var/spool/postfix"]
EXPOSE 25
ENTRYPOINT ["/run-postfix"]
