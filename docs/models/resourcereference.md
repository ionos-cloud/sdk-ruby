# ResourceReference

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier |  |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ResourceReference.new(
  id: null,
  type: "resource",
  href: <RESOURCE-URI>
)
```

