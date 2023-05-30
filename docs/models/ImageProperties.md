# ImageProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **cloud_init** | **String** | Cloud init compatibility. | [optional] |

| **cpu_hot_plug** | **Boolean** | Hot-plug capable CPU (no reboot required). | [optional] |

| **cpu_hot_unplug** | **Boolean** | Hot-unplug capable CPU (no reboot required). | [optional] |

| **description** | **String** | Human-readable description. | [optional] |

| **disc_scsi_hot_plug** | **Boolean** | Hot-plug capable SCSI drive (no reboot required). | [optional] |

| **disc_scsi_hot_unplug** | **Boolean** | Hot-unplug capable SCSI drive (no reboot required). Not supported with Windows VMs. | [optional] |

| **disc_virtio_hot_plug** | **Boolean** | Hot-plug capable Virt-IO drive (no reboot required). | [optional] |

| **disc_virtio_hot_unplug** | **Boolean** | Hot-unplug capable Virt-IO drive (no reboot required). Not supported with Windows VMs. | [optional] |

| **image_aliases** | **Array&lt;String&gt;** | List of image aliases mapped for this image | [optional][readonly] |

| **image_type** | **String** | The image type. | [optional][readonly] |

| **licence_type** | **String** | The OS type of this image. |  |

| **location** | **String** | The location of this image/snapshot. | [optional][readonly] |

| **name** | **String** | The resource name. | [optional] |

| **nic_hot_plug** | **Boolean** | Hot-plug capable NIC (no reboot required). | [optional] |

| **nic_hot_unplug** | **Boolean** | Hot-unplug capable NIC (no reboot required). | [optional] |

| **public** | **Boolean** | Indicates whether the image is part of a public repository. | [optional][readonly] |

| **ram_hot_plug** | **Boolean** | Hot-plug capable RAM (no reboot required). | [optional] |

| **ram_hot_unplug** | **Boolean** | Hot-unplug capable RAM (no reboot required). | [optional] |

| **size** | **Float** | The image size in GB. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ImageProperties.new(
  cloud_init: V1,

  cpu_hot_plug: true,

  cpu_hot_unplug: true,

  description: The image/snapshot of Ubuntu ,

  disc_scsi_hot_plug: true,

  disc_scsi_hot_unplug: true,

  disc_virtio_hot_plug: true,

  disc_virtio_hot_unplug: true,

  image_aliases: null,

  image_type: HDD,

  licence_type: LINUX,

  location: us/las,

  name: My resource,

  nic_hot_plug: true,

  nic_hot_unplug: true,

  public: true,

  ram_hot_plug: true,

  ram_hot_unplug: true,

  size: 100.0
)
```

