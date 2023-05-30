# ContractProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **contract_number** | **Integer** | The contract number. | [optional][readonly] |

| **owner** | **String** | The contract owner&#39;s user name. | [optional][readonly] |

| **reg_domain** | **String** | The registration domain of the contract. | [optional][readonly] |

| **resource_limits** | [**ResourceLimits**](ResourceLimits.md) |  | [optional] |

| **status** | **String** | The contract status. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ContractProperties.new(
  contract_number: 12345,

  owner: user@example.com,

  reg_domain: ionos.de,

  resource_limits: null,

  status: BILLABLE
)
```

