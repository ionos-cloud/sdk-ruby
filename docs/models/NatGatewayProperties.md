# NatGatewayProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the NAT gateway |  |
| **public_ips** | **Array&lt;String&gt;** | Collection of public IP addresses of the NAT gateway. Should be customer reserved IP addresses in that location |  |
| **lans** | [**Array&lt;NatGatewayLanProperties&gt;**](NatGatewayLanProperties.md) | Collection of LANs connected to the NAT gateway. IPs must contain valid subnet mask. If user will not provide any IP then system will generate an IP with /24 subnet. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NatGatewayProperties.new(
  name: My NAT Gateway,
  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4],
  lans: null
)
```

