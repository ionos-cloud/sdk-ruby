# ApplicationLoadBalancerHttpRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The unique name of the Application Load Balancer HTTP rule. |  |
| **type** | **String** | Type of the HTTP rule. |  |
| **target_group** | **String** | The ID of the target group; mandatory and only valid for FORWARD actions. | [optional] |
| **drop_query** | **Boolean** | Default is false; valid only for REDIRECT actions. | [optional] |
| **location** | **String** | The location for redirecting; mandatory and valid only for REDIRECT actions. | [optional] |
| **status_code** | **Integer** | Valid only for REDIRECT and STATIC actions. For REDIRECT actions, default is 301 and possible values are 301, 302, 303, 307, and 308. For STATIC actions, default is 503 and valid range is 200 to 599. | [optional] |
| **response_message** | **String** | The response message of the request; mandatory for STATIC actions. | [optional] |
| **content_type** | **String** | Valid only for STATIC actions. | [optional] |
| **conditions** | [**Array&lt;ApplicationLoadBalancerHttpRuleCondition&gt;**](ApplicationLoadBalancerHttpRuleCondition.md) | An array of items in the collection.The action is only performed if each and every condition is met; if no conditions are set, the rule will always be performed. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ApplicationLoadBalancerHttpRule.new(
  name: My Application Load Balancer HTTP rule,
  type: FORWARD,
  target_group: 96e514d0-73e4-4abd-8fbc-c0f53b79bfae,
  drop_query: true,
  location: www.ionos.com,
  status_code: 301,
  response_message: Application Down,
  content_type: text/html,
  conditions: null
)
```

