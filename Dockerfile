FROM alpine:latest

ARG VCS_REF
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/chrisx8/docker-openvpn-alpine"
                
RUN apk add --no-cache openvpn
COPY ovpn-start /bin/ovpn-start
WORKDIR /etc/openvpn
EXPOSE 1194 1194/udp

CMD ovpn-start
