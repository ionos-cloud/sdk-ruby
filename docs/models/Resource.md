# Resource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of the resource | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |
| **properties** | [**ResourceProperties**](ResourceProperties.md) |  | [optional] |
| **entities** | [**ResourceEntities**](ResourceEntities.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Resource.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "group",
  href: https://<API_HOST>/cloudapi/v5/um/resources/datacenter/15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  metadata: null,
  properties: null,
  entities: null
)
```

