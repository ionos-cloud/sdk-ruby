# ServerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **availability_zone** | **String** | The availability zone in which the server should be provisioned. | [optional] |

| **boot_cdrom** | [**ResourceReference**](ResourceReference.md) |  | [optional] |

| **boot_volume** | [**ResourceReference**](ResourceReference.md) |  | [optional] |

| **cores** | **Integer** | The total number of cores for the enterprise server. | [optional] |

| **cpu_family** | **String** | CPU architecture on which server gets provisioned; not all CPU architectures are available in all datacenter regions; available CPU architectures can be retrieved from the datacenter resource; must not be provided for CUBE servers. | [optional] |

| **name** | **String** | The name of the  resource. | [optional] |

| **ram** | **Integer** | The memory size for the enterprise server in MB, such as 2048. Size must be specified in multiples of 256 MB with a minimum of 256 MB; however, if you set ramHotPlug to TRUE then you must use a minimum of 1024 MB. If you set the RAM size more than 240GB, then ramHotPlug will be set to FALSE and can not be set to TRUE unless RAM size not set to less than 240GB. | [optional] |

| **template_uuid** | **String** | The ID of the template for creating a CUBE server; the available templates for CUBE servers can be found on the templates resource. | [optional] |

| **type** | **String** | Server type: CUBE or ENTERPRISE. | [optional] |

| **vm_state** | **String** | Status of the virtual machine. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ServerProperties.new(
  availability_zone: AUTO,

  boot_cdrom: null,

  boot_volume: null,

  cores: 4,

  cpu_family: AMD_OPTERON,

  name: My resource,

  ram: 4096,

  template_uuid: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  type: CUBE,

  vm_state: RUNNING
)
```

