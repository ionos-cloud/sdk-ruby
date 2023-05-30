# TargetGroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **algorithm** | **String** | The balancing algorithm. A balancing algorithm consists of predefined rules with the logic that a load balancer uses to distribute network traffic between servers.  - **Round Robin**: Targets are served alternately according to their weighting.  - **Least Connection**: The target with the least active connection is served.  - **Random**: The targets are served based on a consistent pseudorandom algorithm.  - **Source IP**: It is ensured that the same client IP address reaches the same target. |  |

| **health_check** | [**TargetGroupHealthCheck**](TargetGroupHealthCheck.md) |  | [optional] |

| **http_health_check** | [**TargetGroupHttpHealthCheck**](TargetGroupHttpHealthCheck.md) |  | [optional] |

| **name** | **String** | The target group name. |  |

| **protocol** | **String** | The forwarding protocol. Only the value &#39;HTTP&#39; is allowed. |  |

| **targets** | [**Array&lt;TargetGroupTarget&gt;**](TargetGroupTarget.md) | Array of items in the collection. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::TargetGroupProperties.new(
  algorithm: ROUND_ROBIN,

  health_check: null,

  http_health_check: null,

  name: My target group,

  protocol: HTTP,

  targets: null
)
```

