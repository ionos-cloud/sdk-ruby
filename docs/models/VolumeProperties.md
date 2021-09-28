# VolumeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **type** | **String** | Hardware type of the volume. DAS (Direct Attached Storage) could be used only in a composite call with a Cube server | [optional] |
| **size** | **Float** | The size of the volume in GB |  |
| **availability_zone** | **String** | The availability zone in which the volume should exist. The storage volume will be provisioned on as less physical storages as possible but cannot guarantee upfront. It is not available for DAS (Direct Attached Storage) and subject of availability for SSD. | [optional] |
| **image** | **String** | Image or snapshot ID to be used as template for this volume | [optional] |
| **image_password** | **String** | Initial password to be set for installed OS. Works with public images only. Not modifiable, forbidden in update requests. Password rules allows all characters from a-z, A-Z, 0-9 | [optional] |
| **image_alias** | **String** |  | [optional] |
| **ssh_keys** | **Array&lt;String&gt;** | Public SSH keys are set on the image as authorized keys for appropriate SSH login to the instance using the corresponding private key. This field may only be set in creation requests. When reading, it always returns null. SSH keys are only supported if a public Linux image is used for the volume creation. | [optional] |
| **bus** | **String** | The bus type of the volume. Default is VIRTIO | [optional] |
| **licence_type** | **String** | OS type of this volume | [optional][readonly] |
| **cpu_hot_plug** | **Boolean** | Is capable of CPU hot plug (no reboot required) | [optional] |
| **ram_hot_plug** | **Boolean** | Is capable of memory hot plug (no reboot required) | [optional] |
| **nic_hot_plug** | **Boolean** | Is capable of nic hot plug (no reboot required) | [optional] |
| **nic_hot_unplug** | **Boolean** | Is capable of nic hot unplug (no reboot required) | [optional] |
| **disc_virtio_hot_plug** | **Boolean** | Is capable of Virt-IO drive hot plug (no reboot required) | [optional] |
| **disc_virtio_hot_unplug** | **Boolean** | Is capable of Virt-IO drive hot unplug (no reboot required). This works only for non-Windows virtual Machines. | [optional] |
| **device_number** | **Integer** | The Logical Unit Number of the storage volume. Null for volumes not mounted to any VM | [optional][readonly] |
| **pci_slot** | **Integer** | The PCI slot number of the storage volume. Null for volumes not mounted to any VM | [optional][readonly] |
| **backupunit_id** | **String** | The uuid of the Backup Unit that user has access to. The property is immutable and is only allowed to be set on a new volume creation. It is mandatory to provide either &#39;public image&#39; or &#39;imageAlias&#39; in conjunction with this property. | [optional] |
| **user_data** | **String** | The cloud-init configuration for the volume as base64 encoded string. The property is immutable and is only allowed to be set on a new volume creation. It is mandatory to provide either &#39;public image&#39; or &#39;imageAlias&#39; that has cloud-init compatibility in conjunction with this property. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::VolumeProperties.new(
  name: My resource,
  type: HDD,
  size: 100.0,
  availability_zone: AUTO,
  image: d6ad1576-fde9-4696-aa41-1ebd75bdaf49,
  image_password: mypass123,
  image_alias: null,
  ssh_keys: [ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyWh6LZ7f2wxnupVgtK2096bc69Vv9uT2A58lwN3ol0A6mxqlT0f4M1NbarVUxa+MVdxBLud5PvlkbYc9mY91OyzLGZMfVWvhAYz/tJSsDtsgRUl0GFVv332zDWk0i+mAVy0N408OORm5XqV6zvIDaiB/jopyjemUp2rnP7pXU4+98ilZw6ef9DF9y4YZ64mchL5//rcrGm1Lff3pC75X/polGONHeG6m4Vs8eIu+0epJ4PJBxO+rwRYp1zMnn90UCk21KvTcYops2cte7ouXQwkGUq3vmXxnSdvuivK/4JNoFQBsaGV974hDmloS5LOvSJjKpXs8Ed437ln712345, ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyWh6LZ7f2wxnupVgtK2096bc69Vv9uT2A58lwN3ol0A6mxqlT0f4M1NbarVUxa+MVdxBLud5PvlkbYc9mY91OyzLGZMfVWvhAYz/tJSsDtsgRUl0GFVv332zDWk0i+mAVy0N408OORm5XqV6zvIDaiB/jopyjemUp2rnP7pXU4+98ilZw6ef9DF9y4YZ64mchL5//rcrGm1Lff3pC75X/polGONHeG6m4Vs8eIu+0epJ4PJBxO+rwRYp1zMnn90UCk21KvTcYops2cte7ouXQwkGUq3vmXxnSdvuivK/asdfghjkjhyutry545tgvbn76e4rf43],
  bus: VIRTIO,
  licence_type: LINUX,
  cpu_hot_plug: true,
  ram_hot_plug: true,
  nic_hot_plug: true,
  nic_hot_unplug: true,
  disc_virtio_hot_plug: true,
  disc_virtio_hot_unplug: true,
  device_number: 3,
  pci_slot: 7,
  backupunit_id: 25f67991-0f51-4efc-a8ad-ef1fb31a481c,
  user_data: null
)
```

