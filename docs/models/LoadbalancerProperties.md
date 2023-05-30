# LoadbalancerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **dhcp** | **Boolean** | Indicates if the loadbalancer will reserve an IP using DHCP. | [optional] |

| **ip** | **String** | IPv4 address of the loadbalancer. All attached NICs will inherit this IP. Leaving value null will assign IP automatically. | [optional] |

| **name** | **String** | The name of the  resource. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::LoadbalancerProperties.new(
  dhcp: true,

  ip: 22.231.113.64,

  name: My resource
)
```

