# ApplicationLoadBalancerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Application Load Balancer. |  |
| **listener_lan** | **Integer** | ID of the listening (inbound) LAN. |  |
| **ips** | **Array&lt;String&gt;** | Collection of the Application Load Balancer IP addresses. (Inbound and outbound) IPs of the listenerLan are customer-reserved public IPs for the public Load Balancers, and private IPs for the private Load Balancers. | [optional] |
| **target_lan** | **Integer** | ID of the balanced private target LAN (outbound). |  |
| **lb_private_ips** | **Array&lt;String&gt;** | Collection of private IP addresses with the subnet mask of the Application Load Balancer. IPs must contain valid a subnet mask. If no IP is provided, the system will generate an IP with /24 subnet. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ApplicationLoadBalancerProperties.new(
  name: My Application Load Balancer,
  listener_lan: 1,
  ips: [81.173.1.2, 22.231.2.2, 22.231.2.3],
  target_lan: 2,
  lb_private_ips: [81.173.1.5/24, 22.231.2.5/24]
)
```

