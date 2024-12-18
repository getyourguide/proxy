FROM istio/proxyv2:1.23.3

COPY ./out/linux_amd64/envoy /usr/local/bin/
