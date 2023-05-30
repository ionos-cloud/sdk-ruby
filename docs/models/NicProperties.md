# NicProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **device_number** | **Integer** | The Logical Unit Number (LUN) of the storage volume. Null if this NIC was created using Cloud API and no DCD changes were performed on the Datacenter. | [optional][readonly] |

| **dhcp** | **Boolean** | Indicates if the NIC will reserve an IP using DHCP. | [optional][default to true] |

| **firewall_active** | **Boolean** | Activate or deactivate the firewall. By default, an active firewall without any defined rules will block all incoming network traffic except for the firewall rules that explicitly allows certain protocols, IP addresses and ports. | [optional] |

| **firewall_type** | **String** | The type of firewall rules that will be allowed on the NIC. If not specified, the default INGRESS value is used. | [optional] |

| **ips** | **Array&lt;String&gt;** | Collection of IP addresses, assigned to the NIC. Explicitly assigned public IPs need to come from reserved IP blocks. Passing value null or empty array will assign an IP address automatically. | [optional] |

| **lan** | **Integer** | The LAN ID the NIC will be on. If the LAN ID does not exist, it will be implicitly created. |  |

| **mac** | **String** | The MAC address of the NIC. | [optional][readonly] |

| **name** | **String** | The name of the  resource. | [optional] |

| **pci_slot** | **Integer** | The PCI slot number for the NIC. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::NicProperties.new(
  device_number: 3,

  dhcp: true,

  firewall_active: false,

  firewall_type: INGRESS,

  ips: null,

  lan: 2,

  mac: 00:0a:95:9d:68:16,

  name: My resource,

  pci_slot: 7,
```

