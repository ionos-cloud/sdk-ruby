# RequestMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_date** | **Time** | The last time the resource was created | [optional][readonly] |
| **created_by** | **String** | The user who created the resource. | [optional][readonly] |
| **etag** | **String** | Resource&#39;s Entity Tag as defined in http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11 . Entity Tag is also added as an &#39;ETag response header to requests which don&#39;t use &#39;depth&#39; parameter.  | [optional][readonly] |
| **request_status** | [**RequestStatus**](RequestStatus.md) |  | [optional] |

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
