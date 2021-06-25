# Location

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **properties** | [**LocationProperties**](locationproperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Location.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "location",
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null
)
```

