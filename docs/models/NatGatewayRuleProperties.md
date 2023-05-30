# NatGatewayRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **name** | **String** | The name of the NAT Gateway rule. |  |

| **protocol** | [**NatGatewayRuleProtocol**](NatGatewayRuleProtocol.md) | Protocol of the NAT Gateway rule. Defaults to ALL. If protocol is &#39;ICMP&#39; then targetPortRange start and end cannot be set. | [optional] |

| **public_ip** | **String** | Public IP address of the NAT Gateway rule. Specifies the address used for masking outgoing packets source address field. Should be one of the customer reserved IP address already configured on the NAT Gateway resource |  |

| **source_subnet** | **String** | Source subnet of the NAT Gateway rule. For SNAT rules it specifies which packets this translation rule applies to based on the packets source IP address. |  |

| **target_port_range** | [**TargetPortRange**](TargetPortRange.md) |  | [optional] |

| **target_subnet** | **String** | Target or destination subnet of the NAT Gateway rule. For SNAT rules it specifies which packets this translation rule applies to based on the packets destination IP address. If none is provided, rule will match any address. | [optional] |

| **type** | [**NatGatewayRuleType**](NatGatewayRuleType.md) | Type of the NAT Gateway rule. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NatGatewayRuleProperties.new(
  name: My NAT Gateway rule,

  protocol: "TCP",

  public_ip: 192.18.7.17,

  source_subnet: 10.0.1.0/24,

  target_port_range: null,

  target_subnet: 10.0.1.0/24,

  type: "SNAT"
)
```

