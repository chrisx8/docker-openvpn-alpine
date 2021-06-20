# docker-openvpn-alpine

[![build](https://github.com/chrisx8/docker-openvpn-alpine/actions/workflows/build.yml/badge.svg)](https://github.com/chrisx8/docker-openvpn-alpine/actions/workflows/build.yml)

Run OpenVPN in a Docker container. The Docker image is updated weekly.

> **Note: `chrisx8/openvpn-alpine` on Docker Hub is DEPRECATED. While it is still updated regularly, it will be removed in the near future.**  
> **Please switch to `ghcr.io/chrisx8/openvpn-alpine` as soon as possible.**

## Set up

### Use default parameters

- This will start OpenVPN with `--config server.conf`. If you want to use custom parameters, see [Use custom parameters](#use-custom-parameters).
- Replace `<OPENVPN_DATA>` with name of Docker volume or absolute path to OpenVPN config directory

```bash
docker run -v <OPENVPN_DATA>:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN ghcr.io/chrisx8/openvpn-alpine
```

### Use custom parameters

- Replace `<OPENVPN_DATA>` with name of Docker volume or absolute path to OpenVPN config directory
- Replace `<PARAM>` with OpenVPN parameters

```bash
docker run -v <OPENVPN_DATA>:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN ghcr.io/chrisx8/openvpn-alpine ovpn-start <PARAM>
```
