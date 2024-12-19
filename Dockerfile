FROM gcr.io/istio-testing/build-tools-proxy:release-1.24-latest AS builder

WORKDIR /work/

COPY . /work/

RUN BAZEL_BUILD_ARGS="--config=libc++" make build_envoy

FROM istio/proxyv2:1.24.2

COPY --from=builder /work/bazel-bin/envoy /usr/local/bin/
