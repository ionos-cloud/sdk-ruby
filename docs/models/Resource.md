# Resource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **entities** | [**ResourceEntities**](ResourceEntities.md) |  | [optional] |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |

| **properties** | [**ResourceProperties**](ResourceProperties.md) |  | [optional] |

| **type** | [**Type**](Type.md) | The type of the resource. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Resource.new(
  entities: null,

  href: https://<API_HOST>/cloudapi/v6/um/resources/datacenter/15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  metadata: null,

  properties: null,

  type: "group"
)
```

