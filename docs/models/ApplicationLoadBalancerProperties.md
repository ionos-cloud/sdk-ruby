# ApplicationLoadBalancerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **ips** | **Array&lt;String&gt;** | Collection of the Application Load Balancer IP addresses. (Inbound and outbound) IPs of the &#39;listenerLan&#39; are customer-reserved public IPs for the public load balancers, and private IPs for the private load balancers. | [optional] |

| **lb_private_ips** | **Array&lt;String&gt;** | Collection of private IP addresses with the subnet mask of the Application Load Balancer. IPs must contain valid a subnet mask. If no IP is provided, the system will generate an IP with /24 subnet. | [optional] |

| **listener_lan** | **Integer** | The ID of the listening (inbound) LAN. |  |

| **name** | **String** | The Application Load Balancer name. |  |

| **target_lan** | **Integer** | The ID of the balanced private target LAN (outbound). |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ApplicationLoadBalancerProperties.new(
  ips: [81.173.1.2, 22.231.2.2, 22.231.2.3],

  lb_private_ips: [81.173.1.5/24, 22.231.2.5/24],

  listener_lan: 1,

  name: My Application Load Balancer,

  target_lan: 2
)
```

