# NatGatewayProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the NAT Gateway. |  |
| **public_ips** | **Array&lt;String&gt;** | Collection of public IP addresses of the NAT Gateway. Should be customer reserved IP addresses in that location. |  |
| **lans** | [**Array&lt;NatGatewayLanProperties&gt;**](NatGatewayLanProperties.md) | Collection of LANs connected to the NAT Gateway. IPs must contain a valid subnet mask. If no IP is provided, the system will generate an IP with /24 subnet. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NatGatewayProperties.new(
  name: My NAT Gateway,
  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4],
  lans: null
)
```

