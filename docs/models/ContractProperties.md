# ContractProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_number** | **Integer** | contract number | [optional][readonly] |
| **owner** | **String** | owner of the contract | [optional][readonly] |
| **status** | **String** | status of the contract | [optional][readonly] |
| **reg_domain** | **String** | Registration domain of the contract | [optional][readonly] |
| **resource_limits** | [**ResourceLimits**](ResourceLimits.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ContractProperties.new(
  contract_number: null,
  owner: null,
  status: null,
  reg_domain: null,
  resource_limits: null
)
```
