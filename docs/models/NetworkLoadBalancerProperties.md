# NetworkLoadBalancerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **ips** | **Array&lt;String&gt;** | Collection of the Network Load Balancer IP addresses. (Inbound and outbound) IPs of the listenerLan must be customer-reserved IPs for public Load Balancers, and private IPs for private Load Balancers. | [optional] |

| **lb_private_ips** | **Array&lt;String&gt;** | Collection of private IP addresses with subnet mask of the Network Load Balancer. IPs must contain a valid subnet mask. If no IP is provided, the system will generate an IP with /24 subnet. | [optional] |

| **listener_lan** | **Integer** | ID of the listening LAN (inbound). |  |

| **name** | **String** | The name of the Network Load Balancer. |  |

| **target_lan** | **Integer** | ID of the balanced private target LAN (outbound). |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NetworkLoadBalancerProperties.new(
  ips: [81.173.1.2, 22.231.2.2, 22.231.2.3],

  lb_private_ips: [81.173.1.5/24, 22.231.2.5/24],

  listener_lan: 1,

  name: My Network Load Balancer,

  target_lan: 2
)
```

