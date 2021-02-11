# Contract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**Type**](Type.md) | The type of the resource | [optional] |
| **properties** | [**ContractProperties**](ContractProperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Contract.new(
  type: &quot;resource&quot;,
  properties: null
)
```

