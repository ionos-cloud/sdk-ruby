# Info

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The API entry point. | [optional][readonly] |

| **name** | **String** | The API name. | [optional][readonly] |

| **version** | **String** | The API version. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Info.new(
  href: https://api.ionos.com/cloudapi/v6/,

  name: CLOUD API,

  version: 6.0
)
```

