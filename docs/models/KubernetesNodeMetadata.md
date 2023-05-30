# KubernetesNodeMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **created_date** | **Time** | The date the resource was created. | [optional][readonly] |

| **etag** | **String** | The resource entity tag as defined in http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11  Entity tags are also added as &#39;ETag&#39; response headers to requests that do not use the &#39;depth&#39; parameter. | [optional][readonly] |

| **last_modified_date** | **Time** | The date the resource was last modified. | [optional][readonly] |

| **last_software_updated_date** | **Time** | The date when the software on the node was last updated. | [optional][readonly] |

| **state** | **String** | The resource state. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodeMetadata.new(
  created_date: 2015-12-04T14:34:09.809Z,

  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,

  last_modified_date: 2015-12-04T14:34:09.809Z,

  last_software_updated_date: 2015-12-04T14:34:09.809Z,

  state: AVAILABLE
)
```

