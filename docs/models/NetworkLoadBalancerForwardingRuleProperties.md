# NetworkLoadBalancerForwardingRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **algorithm** | **String** | Balancing algorithm |  |

| **health_check** | [**NetworkLoadBalancerForwardingRuleHealthCheck**](NetworkLoadBalancerForwardingRuleHealthCheck.md) |  | [optional] |

| **listener_ip** | **String** | Listening (inbound) IP. |  |

| **listener_port** | **Integer** | Listening (inbound) port number; valid range is 1 to 65535. |  |

| **name** | **String** | The name of the Network Load Balancer forwarding rule. |  |

| **protocol** | **String** | Balancing protocol |  |

| **targets** | [**Array&lt;NetworkLoadBalancerForwardingRuleTarget&gt;**](NetworkLoadBalancerForwardingRuleTarget.md) | Array of items in the collection. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new(
  algorithm: ROUND_ROBIN,

  health_check: null,

  listener_ip: 81.173.1.2,

  listener_port: 8080,

  name: My Network Load Balancer forwarding rule,

  protocol: HTTP,

  targets: null
)
```

