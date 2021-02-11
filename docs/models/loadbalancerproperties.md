# LoadbalancerProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | A name of that resource | \[optional\] |
| **ip** | **String** | IPv4 address of the loadbalancer. All attached NICs will inherit this IP. Leaving value null will assign IP automatically | \[optional\] |
| **dhcp** | **Boolean** | Indicates if the loadbalancer will reserve an IP using DHCP | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LoadbalancerProperties.new(
  name: My resource,
  ip: 22.231.113.64,
  dhcp: true
)
```

