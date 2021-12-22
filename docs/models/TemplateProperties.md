# TemplateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the  resource. |  |
| **cores** | **Float** | The CPU cores count. |  |
| **ram** | **Float** | The RAM size in MB. |  |
| **storage_size** | **Float** | The storage size in GB. |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::TemplateProperties.new(
  name: My resource,
  cores: 2.0,
  ram: 2048.0,
  storage_size: 10.0
)
```

