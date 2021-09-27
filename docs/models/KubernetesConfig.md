# KubernetesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | **String** | The type of object | [optional][readonly] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **properties** | [**KubernetesConfigProperties**](KubernetesConfigProperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesConfig.new(
  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,
  type: null,
  href: <RESOURCE-URI>,
  properties: null
)
```

