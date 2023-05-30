# PaginationLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_next** | **String** | URL (with offset and limit parameters) of the next page; only present if offset + limit is less than the total number of elements. | [optional][readonly] |

| **prev** | **String** | URL (with offset and limit parameters) of the previous page; only present if offset is greater than 0. | [optional][readonly] |

| **_self** | **String** | URL (with offset and limit parameters) of the current page. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::PaginationLinks.new(
  _next: <NEXT-PAGE-URI>,

  prev: <PREVIOUS-PAGE-URI>,

  _self: <THIS-PAGE-URI>
)
```

