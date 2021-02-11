# BackupUnit

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | **String** | The type of object that has been created | \[optional\]\[readonly\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **properties** | [**BackupUnitProperties**](backupunitproperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::BackupUnit.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: null,
  href: &lt;RESOURCE-URI&gt;,
  metadata: null,
  properties: null
)
```

