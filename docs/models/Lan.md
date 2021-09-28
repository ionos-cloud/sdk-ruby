# Lan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |
| **properties** | [**LanProperties**](LanProperties.md) |  |  |
| **entities** | [**LanEntities**](LanEntities.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Lan.new(
  id: 5,
  type: "lan",
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null,
  entities: null
)
```

