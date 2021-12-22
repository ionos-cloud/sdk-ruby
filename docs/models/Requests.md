# Requests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;Request&gt;**](Request.md) | Array of items in that collection. | [optional][readonly] |
| **offset** | **Float** | The offset specified in the request (or, if none was specified, the default offset of 0) |  |
| **limit** | **Float** | The limit specified in the request (if none was specified, use the endpoint&#39;s default pagination limit). |  |
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

