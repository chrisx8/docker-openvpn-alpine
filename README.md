# docker-openvpn-alpine

## ⚠ Important

This repository is NO LONGER MAINTAINED and the Docker image is no longer built. The image, `ghcr.io/chrisx8/openvpn-alpine`, will be removed. **You should switch to a supported alternative.**

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
