# UserMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **etag** | **String** | Resource&#39;s Entity Tag as defined in http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11 . Entity Tag is also added as an &#39;ETag response header to requests which don&#39;t use &#39;depth&#39; parameter.  | [optional][readonly] |
| **created_date** | **Time** | time of creation of the user | [optional][readonly] |
| **last_login** | **Time** | time of last login by the user | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::UserMetadata.new(
  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,
  created_date: 2015-12-04T14:34:09.809Z,
  last_login: 2015-12-04T14:34:09.809Z
)
```

