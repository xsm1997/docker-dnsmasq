FROM alpine:3.11

LABEL maintainer "opsxcq@strm.sh"

RUN apk --no-cache add dnsmasq

ADD ./dnsmasq /usr/sbin/dnsmasq

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k", "--filter-aaaa", "--filter-https", "--filter-unknown"]
