# docker-openvpn-alpine

[![build](https://github.com/chrisx8/docker-openvpn-alpine/actions/workflows/build.yml/badge.svg)](https://github.com/chrisx8/docker-openvpn-alpine/actions/workflows/build.yml)

Run OpenVPN in a Docker container. The Docker image is updated weekly.

## ⚠ IMPORTANT

**If you're using `chrisx8/openvpn-alpine` or `docker.io/chrisx8/openvpn-alpine` now, please switch to `ghcr.io/chrisx8/openvpn-alpine`!**

- `chrisx8/openvpn-alpine` on Docker Hub HAS BEEN REMOVED.
- GitHub Container Registry is now generally available. Going forward, new container images will be available there EXCLUSIVELY.

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
