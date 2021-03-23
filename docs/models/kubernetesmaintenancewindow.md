# KubernetesMaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **day\_of\_the\_week** | **String** | The day of the week for a maintenance window. | \[optional\] |
| **time** | **String** | The time to use for a maintenance window. Accepted formats are: HH:mm:ss; HH:mm:ss\"Z\"; HH:mm:ssZ. This time may varies by 15 minutes. | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesMaintenanceWindow.new(
  day_of_the_week: Monday,
  time: 13:00:00
)
```

