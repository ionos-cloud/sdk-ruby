# KubernetesNodePoolLanRoutes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **gateway_ip** | **String** | IPv4 or IPv6 Gateway IP for the route. | [optional] |

| **network** | **String** | IPv4 or IPv6 CIDR to be routed via the interface. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodePoolLanRoutes.new(
  gateway_ip: 10.1.5.16,

  network: 1.2.3.4/24
)
```

