# NetworkLoadBalancerEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flowlogs** | [**FlowLogs**](FlowLogs.md) |  | [optional] |
| **forwardingrules** | [**NetworkLoadBalancerForwardingRules**](NetworkLoadBalancerForwardingRules.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NetworkLoadBalancerEntities.new(
  flowlogs: null,
  forwardingrules: null
)
```

