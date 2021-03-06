# LanPost

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **entities** | [**LanEntities**](lanentities.md) |  | \[optional\] |
| **properties** | [**LanPropertiesPost**](lanpropertiespost.md) |  |  |

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

