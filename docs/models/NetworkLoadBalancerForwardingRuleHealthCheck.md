# NetworkLoadBalancerForwardingRuleHealthCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_timeout** | **Integer** | The maximum time in milliseconds to wait for the client to acknowledge or send data; default is 50,000 (50 seconds). | [optional] |
| **connect_timeout** | **Integer** | The maximum time in milliseconds to wait for a connection attempt to a target to succeed; default is 5000 (five seconds). | [optional] |
| **target_timeout** | **Integer** | The maximum time in milliseconds that a target can remain inactive; default is 50,000 (50 seconds). | [optional] |
| **retries** | **Integer** | The maximum number of attempts to reconnect to a target after a connection failure. Valid range is 0 to 65535 and default is three reconnection attempts. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NetworkLoadBalancerForwardingRuleHealthCheck.new(
  client_timeout: 50,
  connect_timeout: 5000,
  target_timeout: 50000,
  retries: 3
)
```

