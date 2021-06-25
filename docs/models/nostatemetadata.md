# NoStateMetaData

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **etag** | **String** | Resource's Entity Tag as defined in [http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html\#sec3.11](http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11) . Entity Tag is also added as an 'ETag response header to requests which don't use 'depth' parameter. | \[optional\]\[readonly\] |
| **created\_date** | **Time** | The time the Resource was created | \[optional\]\[readonly\] |
| **created\_by** | **String** | The user who has created the resource. | \[optional\]\[readonly\] |
| **created\_by\_user\_id** | **String** | The user id of the user who has created the resource. | \[optional\]\[readonly\] |
| **last\_modified\_date** | **Time** | The last time the resource has been modified | \[optional\]\[readonly\] |
| **last\_modified\_by** | **String** | The user who last modified the resource. | \[optional\]\[readonly\] |
| **last\_modified\_by\_user\_id** | **String** | The user id of the user who has last modified the resource. | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NoStateMetaData.new(
  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,
  created_date: 2015-12-04T14:34:09.809Z,
  created_by: user@example.com,
  created_by_user_id: user@example.com,
  last_modified_date: 2015-12-04T14:34:09.809Z,
  last_modified_by: user@example.com,
  last_modified_by_user_id: 63cef532-26fe-4a64-a4e0-de7c8a506c90
)
```

