# TargetGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |
| **properties** | [**TargetGroupProperties**](TargetGroupProperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::TargetGroup.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "target-group",
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null
)
```
