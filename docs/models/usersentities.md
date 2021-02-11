# UsersEntities

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **owns** | [**ResourcesUsers**](resourcesusers.md) |  | \[optional\] |
| **groups** | [**GroupUsers**](groupusers.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::UsersEntities.new(
  owns: null,
  groups: null
)
```

