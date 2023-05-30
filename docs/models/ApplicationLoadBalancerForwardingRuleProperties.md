# ApplicationLoadBalancerForwardingRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **client_timeout** | **Integer** | The maximum time in milliseconds to wait for the client to acknowledge or send data; default is 50,000 (50 seconds). | [optional] |

| **http_rules** | [**Array&lt;ApplicationLoadBalancerHttpRule&gt;**](ApplicationLoadBalancerHttpRule.md) | An array of items in the collection. The original order of rules is preserved during processing, except that rules of the &#39;FORWARD&#39; type are processed after the rules with other defined actions. The relative order of the &#39;FORWARD&#39; type rules is also preserved during the processing. | [optional] |

| **listener_ip** | **String** | The listening (inbound) IP. |  |

| **listener_port** | **Integer** | The listening (inbound) port number; the valid range is 1 to 65535. |  |

| **name** | **String** | The name of the Application Load Balancer forwarding rule. |  |

| **protocol** | **String** | The balancing protocol. |  |

| **server_certificates** | **Array&lt;String&gt;** | Array of items in the collection. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ApplicationLoadBalancerForwardingRuleProperties.new(
  client_timeout: 50,

  http_rules: null,

  listener_ip: 81.173.1.2,

  listener_port: 8080,

  name: My Application Load Balancer forwarding rule,

  protocol: HTTP,

  server_certificates: [3839d24f-57bd-408e-96ee-8da3d2db5a03, a6b4f7d5-b23a-4f53-b83e-8a6528ab4612]
)
```

