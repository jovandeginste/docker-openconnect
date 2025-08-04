Weekly build of the openconnect docker image, on Alpine

Pull image:

```bash
docker pull ghcr.io/jovandeginste/docker-openconnect:main
```

Usage:

```bash
VPN_USER="your-username"
VPN_IP="10.0.0.1"
VPN_DOMAIN="example.com"
VPN_INTERFACE="vpn0"
VPN_URL="https://${VPN_DOMAIN}:443/"

docker run -i \
  --name vpn \
  --net=host \
  --userns=host \
  --privileged \
  "${IMAGE}" \
  --resolve=${VPN_DOMAIN}:${VPN_IP} \
  --timestamp \
  --user="${VPN_USER}" \
  --no-dtls \
  --disable-ipv6 \
  --interface="${VPN_INTERFACE}" \
  --protocol=nc \
  --reconnect-timeout=1 \
  --useragent="Pulse-Secure/9.1.15.15819" \
  "${VPN_URL}"
```
