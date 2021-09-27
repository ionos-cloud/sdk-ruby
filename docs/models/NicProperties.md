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
| **nat** | **Boolean** | Indicates if NAT is enabled on this NIC. This is now deprecated. | [optional] |

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
  nat: true
)
```

