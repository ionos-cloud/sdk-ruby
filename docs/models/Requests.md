# Requests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_links** | [**PaginationLinks**](PaginationLinks.md) |  |  |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **items** | [**Array&lt;Request&gt;**](Request.md) | Array of items in the collection. | [optional][readonly] |

| **limit** | **Float** | The limit, specified in the request (if not specified, the endpoint&#39;s default pagination limit is used). |  |

| **offset** | **Float** | The offset, specified in the request (if not is specified, 0 is used by default). |  |

| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Requests.new(
  _links: null,

  href: <RESOURCE-URI>,

  id: requests,

  items: null,

  limit: 1000,

  offset: 0,

  type: "collection"
)
```

