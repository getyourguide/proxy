# Envoy Router Check Tool

Istio compatible [Route Table Check Tool](https://www.envoyproxy.io/docs/envoy/latest/configuration/operations/tools/router_check).

- [Patches](../../external/router_check.patch) needed to work with Istio.
- [BUILD](../../BUILD) with configuration to build `router_check_tool` using Istio's filters.
- [Dockerfile](./Dockerfile) to build the image.
