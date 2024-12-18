FROM istio/proxyv2:1.23.3

COPY ./bazel-bin/envoy /usr/local/bin/
