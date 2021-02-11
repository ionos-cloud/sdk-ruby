# Ionoscloud::GroupEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**GroupMembers**](GroupMembers.md) |  | [optional] |
| **resources** | [**ResourceGroups**](ResourceGroups.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupEntities.new(
  users: null,
  resources: null
)
```

