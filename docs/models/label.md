# Label

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | Label is identified using standard URN. | \[optional\]\[readonly\] |
| **type** | **String** | The type of object that has been created | \[optional\]\[readonly\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**NoStateMetaData**](nostatemetadata.md) |  | \[optional\] |
| **properties** | [**LabelProperties**](labelproperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Label.new(
  id: urn:label:datacenter:700e1cab-99b2-4c30-ba8c-1d273ddba022:environment,
  type: null,
  href: &lt;RESOURCE-URI&gt;,
  metadata: null,
  properties: null
)
```

