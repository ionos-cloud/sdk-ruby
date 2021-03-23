# ContractProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **contract\_number** | **Integer** | contract number | \[optional\]\[readonly\] |
| **owner** | **String** | owner of the contract | \[optional\]\[readonly\] |
| **status** | **String** | status of the contract | \[optional\]\[readonly\] |
| **reg\_domain** | **String** | Registration domain of the contract | \[optional\]\[readonly\] |
| **resource\_limits** | [**ResourceLimits**](resourcelimits.md) |  | \[optional\] |

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

