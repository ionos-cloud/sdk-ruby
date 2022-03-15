# Requests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;Request&gt;**](Request.md) | Array of items in the collection. | [optional][readonly] |
| **offset** | **Float** | The offset, specified in the request (if not is specified, 0 is used by default). |  |
| **limit** | **Float** | The limit, specified in the request (if not specified, the endpoint&#39;s default pagination limit is used). |  |
| **_links** | [**PaginationLinks**](PaginationLinks.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Requests.new(
  id: requests,
  type: "collection",
  href: <RESOURCE-URI>,
  items: null,
  offset: 0,
  limit: 1000,
  _links: null
)
```

