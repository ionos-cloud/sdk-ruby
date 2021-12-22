# Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of the resource. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **properties** | [**GroupProperties**](GroupProperties.md) |  |  |
| **entities** | [**GroupEntities**](GroupEntities.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Group.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "group",
  href: https://<API_HOST>/cloudapi/v6/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  properties: null,
  entities: null
)
```

