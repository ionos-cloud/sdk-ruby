# TargetPortRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_end** | **Integer** | Target port range end associated with the NAT Gateway rule. | [optional] |

| **start** | **Integer** | Target port range start associated with the NAT Gateway rule. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::TargetPortRange.new(
  _end: 20000,

  start: 10000
)
```

