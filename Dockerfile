FROM alpine:latest

RUN apk add --no-cache openvpn
COPY ovpn-start /bin/ovpn-start
WORKDIR /etc/openvpn
EXPOSE 1194 1194/udp

CMD ovpn-start
