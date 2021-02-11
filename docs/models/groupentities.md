# GroupEntities

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **users** | [**GroupMembers**](groupmembers.md) |  | \[optional\] |
| **resources** | [**ResourceGroups**](resourcegroups.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupEntities.new(
  users: null,
  resources: null
)
```

