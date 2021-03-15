# DataCenterEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | [**Servers**](Servers.md) |  | [optional] |
| **volumes** | [**Volumes**](Volumes.md) |  | [optional] |
| **loadbalancers** | [**Loadbalancers**](Loadbalancers.md) |  | [optional] |
| **lans** | [**Lans**](Lans.md) |  | [optional] |
| **networkloadbalancers** | [**NetworkLoadBalancers**](NetworkLoadBalancers.md) |  | [optional] |
| **natgateways** | [**NatGateways**](NatGateways.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::DataCenterEntities.new(
  servers: null,
  volumes: null,
  loadbalancers: null,
  lans: null,
  networkloadbalancers: null,
  natgateways: null
)
```

