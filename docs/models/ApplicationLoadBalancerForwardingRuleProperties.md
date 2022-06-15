# ApplicationLoadBalancerForwardingRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the Application Load Balancer forwarding rule. |  |
| **protocol** | **String** | Balancing protocol |  |
| **listener_ip** | **String** | Listening (inbound) IP |  |
| **listener_port** | **Integer** | Listening (inbound) port number; valid range is 1 to 65535. |  |
| **client_timeout** | **Integer** | The maximum time in milliseconds to wait for the client to acknowledge or send data; default is 50,000 (50 seconds). | [optional] |
| **server_certificates** | **Array&lt;String&gt;** | Array of items in the collection. | [optional] |
| **http_rules** | [**Array&lt;ApplicationLoadBalancerHttpRule&gt;**](ApplicationLoadBalancerHttpRule.md) | An array of items in the collection. The original order of rules is perserved during processing, except for Forward-type rules are processed after the rules with other action defined. The relative order of Forward-type rules is also preserved during the processing. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ApplicationLoadBalancerForwardingRuleProperties.new(
  name: My Application Load Balancer forwarding rule,
  protocol: HTTP,
  listener_ip: 81.173.1.2,
  listener_port: 8080,
  client_timeout: 50,
  server_certificates: [3839d24f-57bd-408e-96ee-8da3d2db5a03, a6b4f7d5-b23a-4f53-b83e-8a6528ab4612],
  http_rules: null
)
```

