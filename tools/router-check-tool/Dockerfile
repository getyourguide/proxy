FROM gcr.io/istio-testing/build-tools-proxy:master-latest as builder

WORKDIR /work/

COPY . /work/

RUN bazel build //:router_check_tool

FROM ubuntu

COPY --from=builder /work/bazel-bin/router_check_tool /usr/local/bin/

USER nobody:nogroup

ENTRYPOINT [ "/usr/local/bin/router_check_tool"]
