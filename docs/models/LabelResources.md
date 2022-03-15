# LabelResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique representation of the label as a resource collection. | [optional][readonly] |
| **type** | **String** | The type of resource within a collection. | [optional][readonly] |
| **href** | **String** | URL to the collection representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;LabelResource&gt;**](LabelResource.md) | Array of items in the collection. | [optional][readonly] |
| **offset** | **Float** | The offset (if specified in the request). | [optional] |
| **limit** | **Float** | The limit (if specified in the request). | [optional] |
| **_links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LabelResources.new(
  id: labels,
  type: collection,
  href: <RESOURCE-URI>,
  items: null,
  offset: 0,
  limit: 1000,
  _links: null
)
```

