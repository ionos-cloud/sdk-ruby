# RequestMetadata

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **created\_date** | **Time** | The last time the resource was created | \[optional\]\[readonly\] |
| **created\_by** | **String** | The user who created the resource. | \[optional\]\[readonly\] |
| **etag** | **String** | Resource's Entity Tag as defined in [http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html\#sec3.11](http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11) . Entity Tag is also added as an 'ETag response header to requests which don't use 'depth' parameter. | \[optional\]\[readonly\] |
| **request\_status** | [**RequestStatus**](requeststatus.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::RequestMetadata.new(
  created_date: 2015-12-04T14:34:09.809Z,
  created_by: user@example.com,
  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,
  request_status: null
)
```

