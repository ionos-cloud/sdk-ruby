# TargetGroupHealthCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **check_interval** | **Integer** | The interval in milliseconds between consecutive health checks; the default value is &#39;2000&#39;. | [optional] |

| **check_timeout** | **Integer** | The maximum time in milliseconds is to wait for a target to respond to a check. For target VMs with a &#39;Check Interval&#39; set, the smaller of the two values is used once the TCP connection is established. | [optional] |

| **retries** | **Integer** | The maximum number of attempts to reconnect to a target after a connection failure. The valid range is &#39;0 to 65535&#39;; the default value is &#39;3&#39;. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::TargetGroupHealthCheck.new(
  check_interval: 2000,

  check_timeout: 2000,

  retries: 3
)
```

