# CpuArchitectureProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpu_family** | **String** | A valid CPU family name. | [optional] |
| **max_cores** | **Integer** | The maximum number of cores available. | [optional] |
| **max_ram** | **Integer** | The maximum number of RAM in MB. | [optional] |
| **vendor** | **String** | A valid CPU vendor name. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::CpuArchitectureProperties.new(
  cpu_family: AMD_OPTERON,
  max_cores: 62,
  max_ram: 245760,
  vendor: AuthenticAMD
)
```

