# NatGatewayLanProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **gateway_ips** | **Array&lt;String&gt;** | Collection of gateway IP addresses of the NAT Gateway. Will be auto-generated if not provided. Should ideally be an IP belonging to the same subnet as the LAN | [optional] |

| **id** | **Integer** | Id for the LAN connected to the NAT Gateway |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NatGatewayLanProperties.new(
  gateway_ips: [10.12.1.2/24, 10.11.2.5/24, 10.11.2.4],

  id: 3
)
```

