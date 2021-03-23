# RequestStatusMetadata

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **status** | **String** |  | \[optional\] |
| **message** | **String** |  | \[optional\] |
| **etag** | **String** | Resource's Entity Tag as defined in [http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html\#sec3.11](http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11) . Entity Tag is also added as an 'ETag response header to requests which don't use 'depth' parameter. | \[optional\]\[readonly\] |
| **targets** | [**Array&lt;RequestTarget&gt;**](requesttarget.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::RequestStatusMetadata.new(
  status: null,
  message: null,
  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,
  targets: null
)
```

