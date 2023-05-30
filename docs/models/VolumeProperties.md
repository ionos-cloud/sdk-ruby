# VolumeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **availability_zone** | **String** | The availability zone in which the volume should be provisioned. The storage volume will be provisioned on as few physical storage devices as possible, but this cannot be guaranteed upfront. This is uavailable for DAS (Direct Attached Storage), and subject to availability for SSD. | [optional] |

| **backupunit_id** | **String** | The ID of the backup unit that the user has access to. The property is immutable and is only allowed to be set on creation of a new a volume. It is mandatory to provide either &#39;public image&#39; or &#39;imageAlias&#39; in conjunction with this property. | [optional] |

| **boot_order** | **String** | Determines whether the volume will be used as a boot volume. Set to &#x60;NONE&#x60;, the volume will not be used as boot volume. Set to &#x60;PRIMARY&#x60;, the volume will be used as boot volume and all other volumes must be set to &#x60;NONE&#x60;. Set to &#x60;AUTO&#x60; or &#x60;null&#x60; requires all volumes to be set to &#x60;AUTO&#x60; or &#x60;null&#x60;; this will use the legacy behavior, which is to use the volume as a boot volume only if there are no other volumes or cdrom devices. | [optional][default to &#39;AUTO&#39;] |

| **boot_server** | **String** | The UUID of the attached server. | [optional][readonly] |

| **bus** | **String** | The bus type for this volume; default is VIRTIO. | [optional] |

| **cpu_hot_plug** | **Boolean** | Hot-plug capable CPU (no reboot required). | [optional] |

| **device_number** | **Integer** | The Logical Unit Number of the storage volume. Null for volumes, not mounted to a VM. | [optional][readonly] |

| **disc_virtio_hot_plug** | **Boolean** | Hot-plug capable Virt-IO drive (no reboot required). | [optional] |

| **disc_virtio_hot_unplug** | **Boolean** | Hot-unplug capable Virt-IO drive (no reboot required). Not supported with Windows VMs. | [optional] |

| **image** | **String** | Image or snapshot ID to be used as template for this volume. | [optional] |

| **image_alias** | **String** |  | [optional] |

| **image_password** | **String** | Initial password to be set for installed OS. Works with public images only. Not modifiable, forbidden in update requests. Password rules allows all characters from a-z, A-Z, 0-9. | [optional] |

| **licence_type** | **String** | OS type for this volume. | [optional] |

| **name** | **String** | The name of the  resource. | [optional] |

| **nic_hot_plug** | **Boolean** | Hot-plug capable NIC (no reboot required). | [optional] |

| **nic_hot_unplug** | **Boolean** | Hot-unplug capable NIC (no reboot required). | [optional] |

| **pci_slot** | **Integer** | The PCI slot number of the storage volume. Null for volumes, not mounted to a VM. | [optional][readonly] |

| **ram_hot_plug** | **Boolean** | Hot-plug capable RAM (no reboot required). | [optional] |

| **size** | **Float** | The size of the volume in GB. |  |

| **ssh_keys** | **Array&lt;String&gt;** | Public SSH keys are set on the image as authorized keys for appropriate SSH login to the instance using the corresponding private key. This field may only be set in creation requests. When reading, it always returns null. SSH keys are only supported if a public Linux image is used for the volume creation. | [optional] |

| **type** | **String** | Hardware type of the volume. DAS (Direct Attached Storage) could be used only in a composite call with a Cube server. | [optional] |

| **user_data** | **String** | The cloud-init configuration for the volume as base64 encoded string. The property is immutable and is only allowed to be set on creation of a new a volume. It is mandatory to provide either &#39;public image&#39; or &#39;imageAlias&#39; that has cloud-init compatibility in conjunction with this property. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::VolumeProperties.new(
  availability_zone: AUTO,

  backupunit_id: 25f67991-0f51-4efc-a8ad-ef1fb31a481c,

  boot_order: AUTO,

  boot_server: 25f67991-0f51-4efc-a8ad-ef1fb31a481c,

  bus: VIRTIO,

  cpu_hot_plug: true,

  device_number: 3,

  disc_virtio_hot_plug: true,

  disc_virtio_hot_unplug: true,

  image: d6ad1576-fde9-4696-aa41-1ebd75bdaf49,

  image_alias: null,

  image_password: mypass123,

  licence_type: LINUX,

  name: My resource,

  nic_hot_plug: true,

  nic_hot_unplug: true,

  pci_slot: 7,

  ram_hot_plug: true,

  size: 100.0,

  ssh_keys: [ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyWh6LZ7f2wxnupVgtK2096bc69Vv9uT2A58lwN3ol0A6mxqlT0f4M1NbarVUxa+MVdxBLud5PvlkbYc9mY91OyzLGZMfVWvhAYz/tJSsDtsgRUl0GFVv332zDWk0i+mAVy0N408OORm5XqV6zvIDaiB/jopyjemUp2rnP7pXU4+98ilZw6ef9DF9y4YZ64mchL5//rcrGm1Lff3pC75X/polGONHeG6m4Vs8eIu+0epJ4PJBxO+rwRYp1zMnn90UCk21KvTcYops2cte7ouXQwkGUq3vmXxnSdvuivK/4JNoFQBsaGV974hDmloS5LOvSJjKpXs8Ed437ln712345, ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyWh6LZ7f2wxnupVgtK2096bc69Vv9uT2A58lwN3ol0A6mxqlT0f4M1NbarVUxa+MVdxBLud5PvlkbYc9mY91OyzLGZMfVWvhAYz/tJSsDtsgRUl0GFVv332zDWk0i+mAVy0N408OORm5XqV6zvIDaiB/jopyjemUp2rnP7pXU4+98ilZw6ef9DF9y4YZ64mchL5//rcrGm1Lff3pC75X/polGONHeG6m4Vs8eIu+0epJ4PJBxO+rwRYp1zMnn90UCk21KvTcYops2cte7ouXQwkGUq3vmXxnSdvuivK/asdfghjkjhyutry545tgvbn76e4rf43],

  type: HDD,

  user_data: null
)
```

