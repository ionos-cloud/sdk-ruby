# TargetGroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the target group. |  |
| **algorithm** | **String** | Balancing algorithm |  |
| **protocol** | **String** | Balancing protocol |  |
| **targets** | [**Array&lt;TargetGroupTarget&gt;**](TargetGroupTarget.md) | Array of items in the collection. | [optional] |
| **health_check** | [**TargetGroupHealthCheck**](TargetGroupHealthCheck.md) |  | [optional] |
| **http_health_check** | [**TargetGroupHttpHealthCheck**](TargetGroupHttpHealthCheck.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::TargetGroupProperties.new(
  name: My target group,
  algorithm: ROUND_ROBIN,
  protocol: HTTP,
  targets: null,
  health_check: null,
  http_health_check: null
)
```

