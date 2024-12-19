FROM gcr.io/istio-testing/build-tools-proxy:release-1.24-latest AS builder

WORKDIR /work/

COPY . /work/

RUN make build

FROM istio/proxyv2:1.24.2

COPY --from=builder /work/bazel-bin/envoy /usr/local/bin/
