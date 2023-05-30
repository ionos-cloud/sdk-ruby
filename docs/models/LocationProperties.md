# LocationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **cpu_architecture** | [**Array&lt;CpuArchitectureProperties&gt;**](CpuArchitectureProperties.md) | A list of available CPU types and related resources available in the location. | [optional][readonly] |

| **features** | **Array&lt;String&gt;** | A list of available features in the location. | [optional][readonly] |

| **image_aliases** | **Array&lt;String&gt;** | A list of image aliases available in the location. | [optional][readonly] |

| **name** | **String** | The location name. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::LocationProperties.new(
  cpu_architecture: null,

  features: [cloud-init-private-image, ssd, vnf-nat],

  image_aliases: [windows:2012r2_iso, windows:2019_iso, ubuntu:18.04_iso],

  name: berlin
)
```

