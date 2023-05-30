# NatGatewayProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **lans** | [**Array&lt;NatGatewayLanProperties&gt;**](NatGatewayLanProperties.md) | Collection of LANs connected to the NAT Gateway. IPs must contain a valid subnet mask. If no IP is provided, the system will generate an IP with /24 subnet. | [optional] |

| **name** | **String** | Name of the NAT Gateway. |  |

| **public_ips** | **Array&lt;String&gt;** | Collection of public IP addresses of the NAT Gateway. Should be customer reserved IP addresses in that location. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NatGatewayProperties.new(
  lans: null,

  name: My NAT Gateway,

  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4]
)
```

