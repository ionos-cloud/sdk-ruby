# LabelResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Label on a resource is identified using label key. | [optional][readonly] |
| **type** | **String** | The type of object that has been created | [optional][readonly] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **metadata** | [**NoStateMetaData**](NoStateMetaData.md) |  | [optional] |
| **properties** | [**LabelResourceProperties**](LabelResourceProperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LabelResource.new(
  id: environment,
  type: null,
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null
)
```

