# NetworkLoadBalancerForwardingRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Network Load Balancer forwarding rule. |  |
| **algorithm** | **String** | Balancing algorithm |  |
| **protocol** | **String** | Balancing protocol |  |
| **listener_ip** | **String** | Listening (inbound) IP |  |
| **listener_port** | **Integer** | Listening (inbound) port number; valid range is 1 to 65535. |  |
| **health_check** | [**NetworkLoadBalancerForwardingRuleHealthCheck**](NetworkLoadBalancerForwardingRuleHealthCheck.md) |  | [optional] |
| **targets** | [**Array&lt;NetworkLoadBalancerForwardingRuleTarget&gt;**](NetworkLoadBalancerForwardingRuleTarget.md) | Array of items in the collection. |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new(
  name: My Network Load Balancer forwarding rule,
  algorithm: ROUND_ROBIN,
  protocol: HTTP,
  listener_ip: 81.173.1.2,
  listener_port: 8080,
  health_check: null,
  targets: null
)
```

