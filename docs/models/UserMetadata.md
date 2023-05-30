# UserMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **created_date** | **Time** | The time the user was created. | [optional][readonly] |

| **etag** | **String** | Resource&#39;s Entity Tag as defined in http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11  Entity Tag is also added as an &#39;ETag response header to requests which don&#39;t use &#39;depth&#39; parameter.  | [optional][readonly] |

| **last_login** | **Time** | The time of the last login by the user. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::UserMetadata.new(
  created_date: 2015-12-04T14:34:09.809Z,

  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,

  last_login: 2015-12-04T14:34:09.809Z
)
```

