# Ionoscloud::ImageProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **description** | **String** | Human readable description | [optional] |
| **location** | **String** | Location of that image/snapshot.  | [optional][readonly] |
| **size** | **Float** | The size of the image in GB | [optional][readonly] |
| **cpu_hot_plug** | **Boolean** | Is capable of CPU hot plug (no reboot required) | [optional] |
| **cpu_hot_unplug** | **Boolean** | Is capable of CPU hot unplug (no reboot required) | [optional] |
| **ram_hot_plug** | **Boolean** | Is capable of memory hot plug (no reboot required) | [optional] |
| **ram_hot_unplug** | **Boolean** | Is capable of memory hot unplug (no reboot required) | [optional] |
| **nic_hot_plug** | **Boolean** | Is capable of nic hot plug (no reboot required) | [optional] |
| **nic_hot_unplug** | **Boolean** | Is capable of nic hot unplug (no reboot required) | [optional] |
| **disc_virtio_hot_plug** | **Boolean** | Is capable of Virt-IO drive hot plug (no reboot required) | [optional] |
| **disc_virtio_hot_unplug** | **Boolean** | Is capable of Virt-IO drive hot unplug (no reboot required). This works only for non-Windows virtual Machines. | [optional] |
| **disc_scsi_hot_plug** | **Boolean** | Is capable of SCSI drive hot plug (no reboot required) | [optional] |
| **disc_scsi_hot_unplug** | **Boolean** | Is capable of SCSI drive hot unplug (no reboot required). This works only for non-Windows virtual Machines. | [optional] |
| **licence_type** | **String** | OS type of this Image |  |
| **image_type** | **String** | This indicates the type of image | [optional][readonly] |
| **public** | **Boolean** | Indicates if the image is part of the public repository or not | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ImageProperties.new(
  name: My resource,
  description: Image/Snapshot of Ubuntu ,
  location: us/las,
  size: 100.0,
  cpu_hot_plug: true,
  cpu_hot_unplug: true,
  ram_hot_plug: true,
  ram_hot_unplug: true,
  nic_hot_plug: true,
  nic_hot_unplug: true,
  disc_virtio_hot_plug: true,
  disc_virtio_hot_unplug: true,
  disc_scsi_hot_plug: true,
  disc_scsi_hot_unplug: true,
  licence_type: LINUX,
  image_type: HDD,
  public: true
)
```

