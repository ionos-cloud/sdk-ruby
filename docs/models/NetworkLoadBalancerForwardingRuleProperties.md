# NetworkLoadBalancerForwardingRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Network Load Balancer forwarding rule. |  |
| **algorithm** | **String** | Algorithm for the balancing. |  |
| **protocol** | **String** | Protocol of the balancing. |  |
| **listener_ip** | **String** | Listening IP. (inbound) |  |
| **listener_port** | **Integer** | Listening port number. (inbound) (range: 1 to 65535) |  |
| **health_check** | [**NetworkLoadBalancerForwardingRuleHealthCheck**](NetworkLoadBalancerForwardingRuleHealthCheck.md) |  | [optional] |
| **targets** | [**Array&lt;NetworkLoadBalancerForwardingRuleTarget&gt;**](NetworkLoadBalancerForwardingRuleTarget.md) | Array of items in that collection. |  |

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

