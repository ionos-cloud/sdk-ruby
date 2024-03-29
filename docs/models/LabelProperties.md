# LabelProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **key** | **String** | A label key | [optional] |

| **resource_href** | **String** | URL to the Resource (absolute path) on which the label is applied. | [optional] |

| **resource_id** | **String** | The ID of the resource. | [optional] |

| **resource_type** | **String** | The type of the resource on which the label is applied. | [optional] |

| **value** | **String** | A label value | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::LabelProperties.new(
  key: environment,

  resource_href: https://<hostname>/datacenters/700e1cab-99b2-4c30-ba8c-1d273ddba022,

  resource_id: 700e1cab-99b2-4c30-ba8c-1d273ddba022,

  resource_type: datacenter,

  value: production
)
```

