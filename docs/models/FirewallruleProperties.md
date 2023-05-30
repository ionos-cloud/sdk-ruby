# FirewallruleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **icmp_code** | **Integer** | Defines the allowed code (from 0 to 254) if protocol ICMP or ICMPv6 is chosen. Value null allows all codes. | [optional] |

| **icmp_type** | **Integer** | Defines the allowed type (from 0 to 254) if the protocol ICMP or ICMPv6 is chosen. Value null allows all types. | [optional] |

| **ip_version** | **String** | The IP version for this rule. If sourceIp or targetIp are specified, you can omit this value - the IP version will then be deduced from the IP address(es) used; if you specify it anyway, it must match the specified IP address(es). If neither sourceIp nor targetIp are specified, this rule allows traffic only for the specified IP version. If neither sourceIp, targetIp nor ipVersion are specified, this rule will only allow IPv4 traffic. | [optional] |

| **name** | **String** | The name of the  resource. | [optional] |

| **port_range_end** | **Integer** | Defines the end range of the allowed port (from 1 to 65534) if the protocol TCP or UDP is chosen. Leave portRangeStart and portRangeEnd null to allow all ports. | [optional] |

| **port_range_start** | **Integer** | Defines the start range of the allowed port (from 1 to 65534) if protocol TCP or UDP is chosen. Leave portRangeStart and portRangeEnd value null to allow all ports. | [optional] |

| **protocol** | **String** | The protocol for the rule. Property cannot be modified after it is created (disallowed in update requests). |  |

| **source_ip** | **String** | Only traffic originating from the respective IP address (or CIDR block) is allowed. Value null allows traffic from any IP address (according to the selected ipVersion). | [optional] |

| **source_mac** | **String** | Only traffic originating from the respective MAC address is allowed. Valid format: aa:bb:cc:dd:ee:ff. Value null allows traffic from any MAC address. | [optional] |

| **target_ip** | **String** | If the target NIC has multiple IP addresses, only the traffic directed to the respective IP address (or CIDR block) of the NIC is allowed. Value null allows traffic to any target IP address (according to the selected ipVersion). | [optional] |

| **type** | **String** | The type of the firewall rule. If not specified, the default INGRESS value is used. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::FirewallruleProperties.new(
  icmp_code: 0,

  icmp_type: 8,

  ip_version: IPv4,

  name: My resource,

  port_range_end: 8,

  port_range_start: 8,

  protocol: TCP,

  source_ip: 22.231.113.64,

  source_mac: 00:0a:95:9d:68:16,

  target_ip: 22.231.113.64,

  type: INGRESS
)
```

