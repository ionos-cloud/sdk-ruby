# NetworkLoadBalancerForwardingRuleTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **health_check** | [**NetworkLoadBalancerForwardingRuleTargetHealthCheck**](NetworkLoadBalancerForwardingRuleTargetHealthCheck.md) |  | [optional] |

| **ip** | **String** | The IP of the balanced target VM. |  |

| **port** | **Integer** | The port of the balanced target service; valid range is 1 to 65535. |  |

| **weight** | **Integer** | Traffic is distributed in proportion to target weight, relative to the combined weight of all targets. A target with higher weight receives a greater share of traffic. Valid range is 0 to 256 and default is 1. Targets with weight of 0 do not participate in load balancing but still accept persistent connections. It is best to assign weights in the middle of the range to leave room for later adjustments. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new(
  health_check: null,

  ip: 22.231.2.2,

  port: 8080,

  weight: 123
)
```

