# Labels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique representation of the label as a resource collection. | [optional][readonly] |
| **type** | **String** | The type of resource within a collection. | [optional][readonly] |
| **href** | **String** | URL to the collection representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;Label&gt;**](Label.md) | Array of items in that collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Labels.new(
  id: labels,
  type: collection,
  href: <RESOURCE-URI>,
  items: null
)
```

