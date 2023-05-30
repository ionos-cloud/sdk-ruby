# DataCenterEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **lans** | [**Lans**](Lans.md) |  | [optional] |

| **loadbalancers** | [**Loadbalancers**](Loadbalancers.md) |  | [optional] |

| **natgateways** | [**NatGateways**](NatGateways.md) |  | [optional] |

| **networkloadbalancers** | [**NetworkLoadBalancers**](NetworkLoadBalancers.md) |  | [optional] |

| **servers** | [**Servers**](Servers.md) |  | [optional] |

| **volumes** | [**Volumes**](Volumes.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::DataCenterEntities.new(
  lans: null,

  loadbalancers: null,

  natgateways: null,

  networkloadbalancers: null,

  servers: null,

  volumes: null
)
```

