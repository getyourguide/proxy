FROM gcr.io/istio-testing/build-tools-proxy:release-1.23-latest AS builder

WORKDIR /work/

COPY . /work/

RUN ./common/scripts/run.sh env CC=clang CXX=clang++

RUN bazel build --config=libc++ //:envoy

FROM istio/proxyv2:1.23.3

COPY --from=builder /work/bazel-bin/envoy /usr/local/bin/
