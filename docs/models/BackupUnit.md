# BackupUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | **String** | The type of object that has been created. | [optional][readonly] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |
| **properties** | [**BackupUnitProperties**](BackupUnitProperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::BackupUnit.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: null,
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null
)
```

