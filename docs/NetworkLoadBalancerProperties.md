# NetworkLoadBalancerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that Network Load Balancer |  |
| **listener_lan** | **Integer** | Id of the listening LAN. (inbound) |  |
| **ips** | **Array&lt;String&gt;** | Collection of IP addresses of the Network Load Balancer. (inbound and outbound) IP of the listenerLan must be a customer reserved IP for the public load balancer and private IP for the private load balancer. | [optional] |
| **target_lan** | **Integer** | Id of the balanced private target LAN. (outbound) |  |
| **lb_private_ips** | **Array&lt;String&gt;** | Collection of private IP addresses with subnet mask of the Network Load Balancer. IPs must contain valid subnet mask. If user will not provide any IP then the system will generate one IP with /24 subnet. | [optional] |

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

