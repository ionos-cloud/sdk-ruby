# KubernetesNodePoolLanRoutes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network** | **String** | IPv4 or IPv6 CIDR to be routed via the interface. | [optional] |
| **gateway_ip** | **String** | IPv4 or IPv6 Gateway IP for the route. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodePoolLanRoutes.new(
  network: 1.2.3.4/24,
  gateway_ip: 10.1.5.16
)
```

