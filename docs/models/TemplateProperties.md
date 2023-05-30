# TemplateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **cores** | **Float** | The CPU cores count. |  |

| **name** | **String** | The resource name. |  |

| **ram** | **Float** | The RAM size in MB. |  |

| **storage_size** | **Float** | The storage size in GB. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::TemplateProperties.new(
  cores: 2.0,

  name: My resource,

  ram: 2048.0,

  storage_size: 10.0
)
```

