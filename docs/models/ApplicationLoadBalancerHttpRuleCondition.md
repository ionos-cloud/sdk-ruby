# ApplicationLoadBalancerHttpRuleCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the HTTP rule condition. |  |
| **condition** | **String** | Matching rule for the HTTP rule condition attribute; mandatory for HEADER, PATH, QUERY, METHOD, HOST, and COOKIE types; must be null when type is SOURCE_IP. |  |
| **negate** | **Boolean** | Specifies whether the condition is negated or not; the default is False. | [optional] |
| **key** | **String** | Must be null when type is PATH, METHOD, HOST, or SOURCE_IP. Key can only be set when type is COOKIES, HEADER, or QUERY. | [optional] |
| **value** | **String** | Mandatory for conditions CONTAINS, EQUALS, MATCHES, STARTS_WITH, ENDS_WITH; must be null when condition is EXISTS; should be a valid CIDR if provided and if type is SOURCE_IP. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ApplicationLoadBalancerHttpRuleCondition.new(
  type: HEADER,
  condition: STARTS_WITH,
  negate: false,
  key: forward-at,
  value: Friday
)
```

