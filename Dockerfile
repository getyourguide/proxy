FROM gcr.io/istio-testing/build-tools-proxy:master-latest as builder

WORKDIR /work/

COPY . /work/

RUN bazel build envoy

FROM istio/proxyv2:1.23.3

COPY --from=builder /work/bazel-bin/envoy /usr/local/bin/
