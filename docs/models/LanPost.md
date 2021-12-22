# LanPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |
| **entities** | [**LanEntities**](LanEntities.md) |  | [optional] |
| **properties** | [**LanPropertiesPost**](LanPropertiesPost.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LanPost.new(
  id: 5,
  type: "lan",
  href: <RESOURCE-URI>,
  metadata: null,
  entities: null,
  properties: null
)
```

