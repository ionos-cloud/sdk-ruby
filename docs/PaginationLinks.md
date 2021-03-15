# PaginationLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prev** | **String** | URL (with offset and limit parameters) of the previous page; only present if offset is greater than 0 | [optional][readonly] |
| **_self** | **String** | URL (with offset and limit parameters) of the current page | [optional][readonly] |
| **_next** | **String** | URL (with offset and limit parameters) of the next page; only present if offset + limit is less than the total number of elements | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::PaginationLinks.new(
  prev: <PREVIOUS-PAGE-URI>,
  _self: <THIS-PAGE-URI>,
  _next: <NEXT-PAGE-URI>
)
```

