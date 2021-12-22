# TargetPortRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Target port range start associated with the NAT Gateway rule. | [optional] |
| **_end** | **Integer** | Target port range end associated with the NAT Gateway rule. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::TargetPortRange.new(
  start: 10000,
  _end: 20000
)
```

