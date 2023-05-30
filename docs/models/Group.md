# Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **entities** | [**GroupEntities**](GroupEntities.md) |  | [optional] |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **properties** | [**GroupProperties**](GroupProperties.md) |  |  |

| **type** | [**Type**](Type.md) | The type of the resource. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Group.new(
  entities: null,

  href: https://<API_HOST>/cloudapi/v6/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  properties: null,

  type: "group"
)
```

