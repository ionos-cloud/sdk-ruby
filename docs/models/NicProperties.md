# NicProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **mac** | **String** | The MAC address of the NIC | [optional][readonly] |
| **ips** | **Array&lt;String&gt;** | Collection of IP addresses assigned to a nic. Explicitly assigned public IPs need to come from reserved IP blocks, Passing value null or empty array will assign an IP address automatically. | [optional] |
| **dhcp** | **Boolean** | Indicates if the nic will reserve an IP using DHCP | [optional] |
| **lan** | **Integer** | The LAN ID the NIC will sit on. If the LAN ID does not exist it will be implicitly created |  |
| **firewall_active** | **Boolean** | Activate or deactivate the firewall. By default an active firewall without any defined rules will block all incoming network traffic except for the firewall rules that explicitly allows certain protocols, ip addresses and ports. | [optional] |
| **firewall_type** | **String** | The type of firewall rules that will be allowed on the NIC. If it is not specified it will take the default value INGRESS | [optional] |
| **device_number** | **Integer** | The Logical Unit Number (LUN) of the storage volume. Null if this NIC was create from CloudAPI and no DCD changes were done on the Datacenter. | [optional][readonly] |
| **pci_slot** | **Integer** | The PCI slot number of the Nic. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::NicProperties.new(
  name: My resource,
  mac: 00:0a:95:9d:68:16,
  ips: null,
  dhcp: true,
  lan: 2,
  firewall_active: false,
  firewall_type: INGRESS,
  device_number: 3,
  pci_slot: 7
)
```

