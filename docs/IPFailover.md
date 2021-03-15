# IPFailover

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** |  | [optional] |
| **nic_uuid** | **String** |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::IPFailover.new(
  ip: 192.18.2.231,
  nic_uuid: 3c11273c-b3e1-4ca3-8134-84fd2dd4ebec
)
```

