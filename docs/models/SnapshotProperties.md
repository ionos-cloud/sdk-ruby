# SnapshotProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the  resource. | [optional] |
| **description** | **String** | Human-readable description. | [optional] |
| **location** | **String** | Location of that image/snapshot.  | [optional][readonly] |
| **size** | **Float** | The size of the image in GB. | [optional][readonly] |
| **sec_auth_protection** | **Boolean** | Boolean value representing if the snapshot requires extra protection, such as two-step verification. | [optional] |
| **cpu_hot_plug** | **Boolean** | Hot-plug capable CPU (no reboot required). | [optional] |
| **cpu_hot_unplug** | **Boolean** | Hot-unplug capable CPU (no reboot required). | [optional] |
| **ram_hot_plug** | **Boolean** | Hot-plug capable RAM (no reboot required). | [optional] |
| **ram_hot_unplug** | **Boolean** | Hot-unplug capable RAM (no reboot required). | [optional] |
| **nic_hot_plug** | **Boolean** | Hot-plug capable NIC (no reboot required). | [optional] |
| **nic_hot_unplug** | **Boolean** | Hot-unplug capable NIC (no reboot required). | [optional] |
| **disc_virtio_hot_plug** | **Boolean** | Hot-plug capable Virt-IO drive (no reboot required). | [optional] |
| **disc_virtio_hot_unplug** | **Boolean** | Hot-unplug capable Virt-IO drive (no reboot required). Not supported with Windows VMs. | [optional] |
| **disc_scsi_hot_plug** | **Boolean** | Hot-plug capable SCSI drive (no reboot required). | [optional] |
| **disc_scsi_hot_unplug** | **Boolean** | Is capable of SCSI drive hot unplug (no reboot required). This works only for non-Windows virtual Machines. | [optional] |
| **licence_type** | **String** | OS type of this snapshot | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::SnapshotProperties.new(
  name: My resource,
  description: Image/Snapshot of Ubuntu ,
  location: us/las,
  size: 100.0,
  sec_auth_protection: true,
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
  licence_type: LINUX
)
```

