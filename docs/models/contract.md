# Contract

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **type** | [**Type**](type.md) | The type of the resource | \[optional\] |
| **properties** | [**ContractProperties**](contractproperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Contract.new(
  type: "resource",
  properties: null
)
```

