# DatacenterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **cpu_architecture** | [**Array&lt;CpuArchitectureProperties&gt;**](CpuArchitectureProperties.md) | Array of features and CPU families available in a location | [optional][readonly] |

| **description** | **String** | A description for the datacenter, such as staging, production. | [optional] |

| **features** | **Array&lt;String&gt;** | List of features supported by the location where this data center is provisioned. | [optional][readonly] |

| **location** | **String** | The physical location where the datacenter will be created. This will be where all of your servers live. Property cannot be modified after datacenter creation (disallowed in update requests). |  |

| **name** | **String** | The name of the  resource. | [optional] |

| **sec_auth_protection** | **Boolean** | Boolean value representing if the data center requires extra protection, such as two-step verification. | [optional] |

| **version** | **Integer** | The version of the data center; incremented with every change. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::DatacenterProperties.new(
  cpu_architecture: null,

  description: My Production Datacenter,

  features: [SSD],

  location: us/las,

  name: My resource,

  sec_auth_protection: true,

  version: 8
)
```

