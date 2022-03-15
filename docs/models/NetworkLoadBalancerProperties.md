# NetworkLoadBalancerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Network Load Balancer. |  |
| **listener_lan** | **Integer** | ID of the listening LAN (inbound). |  |
| **ips** | **Array&lt;String&gt;** | Collection of the Network Load Balancer IP addresses. (Inbound and outbound) IPs of the listenerLan must be customer-reserved IPs for public Load Balancers, and private IPs for private Load Balancers. | [optional] |
| **target_lan** | **Integer** | ID of the balanced private target LAN (outbound). |  |
| **lb_private_ips** | **Array&lt;String&gt;** | Collection of private IP addresses with subnet mask of the Network Load Balancer. IPs must contain a valid subnet mask. If no IP is provided, the system will generate an IP with /24 subnet. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NetworkLoadBalancerProperties.new(
  name: My Network Load Balancer,
  listener_lan: 1,
  ips: [81.173.1.2, 22.231.2.2, 22.231.2.3],
  target_lan: 2,
  lb_private_ips: [81.173.1.5/24, 22.231.2.5/24]
)
```

