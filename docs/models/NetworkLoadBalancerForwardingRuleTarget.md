# NetworkLoadBalancerForwardingRuleTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | IP of a balanced target VM |  |
| **port** | **Integer** | Port of the balanced target service. (range: 1 to 65535) |  |
| **weight** | **Integer** | Weight parameter is used to adjust the target VM&#39;s weight relative to other target VMs. All target VMs will receive a load proportional to their weight relative to the sum of all weights, so the higher the weight, the higher the load. The default weight is 1, and the maximal value is 256. A value of 0 means the target VM will not participate in load-balancing but will still accept persistent connections. If this parameter is used to distribute the load according to target VM&#39;s capacity, it is recommended to start with values which can both grow and shrink, for instance between 10 and 100 to leave enough room above and below for later adjustments. |  |
| **health_check** | [**NetworkLoadBalancerForwardingRuleTargetHealthCheck**](NetworkLoadBalancerForwardingRuleTargetHealthCheck.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new(
  ip: 22.231.2.2,
  port: 8080,
  weight: 123,
  health_check: null
)
```

