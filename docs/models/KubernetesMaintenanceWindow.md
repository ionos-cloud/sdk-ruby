# KubernetesMaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **day_of_the_week** | **String** | The weekday for a maintenance window. |  |

| **time** | **String** | The time to use for a maintenance window. Accepted formats are: HH:mm:ss; HH:mm:ss\&quot;Z\&quot;; HH:mm:ssZ. This time may vary by 15 minutes. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesMaintenanceWindow.new(
  day_of_the_week: Monday,

  time: 13:00:00
)
```

