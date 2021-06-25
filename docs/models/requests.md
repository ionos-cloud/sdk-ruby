# Requests

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **items** | [**Array&lt;Request&gt;**](request.md) | Array of items in that collection | \[optional\]\[readonly\] |
| **offset** | **Float** | the offset specified in the request \(or, if none was specified, the default offset of 0\) |  |
| **limit** | **Float** | the limit specified in the request \(or, if none was specified, the default limit of 0\) |  |
| **\_links** | [**PaginationLinks**](paginationlinks.md) |  |  |

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

