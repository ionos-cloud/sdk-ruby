# Group

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of the resource | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **properties** | [**GroupProperties**](groupproperties.md) |  |  |
| **entities** | [**GroupEntities**](groupentities.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Group.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "group",
  href: https://<API_HOST>/cloudapi/v5/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  properties: null,
  entities: null
)
```

