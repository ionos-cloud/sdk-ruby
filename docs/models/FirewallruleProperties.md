# FirewallruleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the  resource. | [optional] |
| **protocol** | **String** | The protocol for the rule. Property cannot be modified after it is created (disallowed in update requests). |  |
| **source_mac** | **String** | Only traffic originating from the respective MAC address is allowed. Valid format: aa:bb:cc:dd:ee:ff. Value null allows traffic from any MAC address. | [optional] |
| **source_ip** | **String** | Only traffic originating from the respective IPv4 address is allowed. Value null allows traffic from any IP address. | [optional] |
| **target_ip** | **String** | If the target NIC has multiple IP addresses, only the traffic directed to the respective IP address of the NIC is allowed. Value null Value null allows traffic to any target IP address. | [optional] |
| **icmp_code** | **Integer** | Defines the allowed code (from 0 to 254) if protocol ICMP is chosen. Value null allows all codes. | [optional] |
| **icmp_type** | **Integer** | Defines the allowed type (from 0 to 254) if the protocol ICMP is chosen. Value null allows all types. | [optional] |
| **port_range_start** | **Integer** | Defines the start range of the allowed port (from 1 to 65534) if protocol TCP or UDP is chosen. Leave portRangeStart and portRangeEnd value null to allow all ports. | [optional] |
| **port_range_end** | **Integer** | Defines the end range of the allowed port (from 1 to 65534) if the protocol TCP or UDP is chosen. Leave portRangeStart and portRangeEnd null to allow all ports. | [optional] |
| **type** | **String** | The type of the firewall rule. If not specified, the default INGRESS value is used. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::FirewallruleProperties.new(
  name: My resource,
  protocol: TCP,
  source_mac: 00:0a:95:9d:68:16,
  source_ip: 22.231.113.64,
  target_ip: 22.231.113.64,
  icmp_code: 0,
  icmp_type: 8,
  port_range_start: 8,
  port_range_end: 8,
  type: INGRESS
)
```

