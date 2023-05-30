# LabelResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

| **href** | **String** | URL to the collection representation (absolute path). | [optional][readonly] |

| **id** | **String** | A unique representation of the label as a resource collection. | [optional][readonly] |

| **items** | [**Array&lt;LabelResource&gt;**](LabelResource.md) | Array of items in the collection. | [optional][readonly] |

| **limit** | **Float** | The limit (if specified in the request). | [optional] |

| **offset** | **Float** | The offset (if specified in the request). | [optional] |

| **type** | **String** | The type of resource within a collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::LabelResources.new(
  _links: null,

  href: <RESOURCE-URI>,

  id: labels,

  items: null,

  limit: 1000,

  offset: 0,

  type: collection
)
```

