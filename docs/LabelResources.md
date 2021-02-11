# LabelResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique representation for Label as a collection on a resource. | [optional][readonly] |
| **type** | **String** | The type of resource within a collection | [optional][readonly] |
| **href** | **String** | URL to the collection representation (absolute path) | [optional][readonly] |
| **items** | [**Array&lt;LabelResource&gt;**](LabelResource.md) | Array of items in that collection | [optional][readonly] |
| **offset** | **Float** | the offset (if specified in the request) | [optional] |
| **limit** | **Float** | the limit (if specified in the request) | [optional] |
| **_links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LabelResources.new(
  id: labels,
  type: collection,
  href: &lt;RESOURCE-URI&gt;,
  items: null,
  offset: 0,
  limit: 1000,
  _links: null
)
```

