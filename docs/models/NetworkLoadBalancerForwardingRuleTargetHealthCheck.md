# NetworkLoadBalancerForwardingRuleTargetHealthCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check** | **Boolean** | Makes the target available only if it accepts periodic health check TCP connection attempts; when turned off, the target is considered always available. The health check only consists of a connection attempt to the address and port of the target. | [optional] |
| **check_interval** | **Integer** | The interval in milliseconds between consecutive health checks; default is 2000. | [optional] |
| **maintenance** | **Boolean** | Maintenance mode prevents the target from receiving balanced traffic. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NetworkLoadBalancerForwardingRuleTargetHealthCheck.new(
  check: null,
  check_interval: 2000,
  maintenance: null
)
```

