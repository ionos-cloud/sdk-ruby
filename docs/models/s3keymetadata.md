# S3KeyMetadata

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **etag** | **String** | Resource's Entity Tag as defined in [http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html\#sec3.11](http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11) . Entity Tag is also added as an 'ETag response header to requests which don't use 'depth' parameter. | \[optional\]\[readonly\] |
| **created\_date** | **Time** | The time the S3 key was created | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::S3KeyMetadata.new(
  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,
  created_date: 2015-12-04T14:34:09.809Z
)
```

