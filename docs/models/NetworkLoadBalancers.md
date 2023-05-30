# NetworkLoadBalancers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **items** | [**Array&lt;NetworkLoadBalancer&gt;**](NetworkLoadBalancer.md) | Array of items in the collection. | [optional][readonly] |

| **limit** | **Float** | The limit (if specified in the request). | [optional] |

| **offset** | **Float** | The offset (if specified in the request). | [optional] |

| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NetworkLoadBalancers.new(
  _links: null,

  href: <RESOURCE-URI>,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  items: null,

  limit: 1000,

  offset: 0,

  type: "collection"
)
```

