# docker-openvpn-alpine

[![Buld status](https://github.com/chrisx8/docker-openvpn-alpine/workflows/build/badge.svg?branch=master)](https://github.com/chrisx8/docker-openvpn-alpine/actions?query=workflow%3Abuild)

Run OpenVPN in a Docker container.

**[chrisx8/openvpn-alpine on Docker Hub](https://hub.docker.com/r/chrisx8/openvpn-alpine)**

## Set up

### Use default parameters

- This will start OpenVPN with `--config server.conf`. If you want to use custom parameters, see [Use custom parameters](#use-custom-parameters).
- Replace `<OPENVPN_DATA>` with name of Docker volume or absolute path to OpenVPN config directory

```bash
docker run -v <OPENVPN_DATA>:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN chrisx8/openvpn-alpine
```

### Use custom parameters

- Replace `<OPENVPN_DATA>` with name of Docker volume or absolute path to OpenVPN config directory
- Replace `<PARAM>` with OpenVPN parameters

```bash
docker run -v <OPENVPN_DATA>:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN chrisx8/openvpn-alpine ovpn-start <PARAM>
```
