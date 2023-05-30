# PrivateCrossConnectProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **connectable_datacenters** | [**Array&lt;ConnectableDatacenter&gt;**](ConnectableDatacenter.md) | Read-Only attribute. Lists data centers that can be joined to this private Cross-Connect. | [optional][readonly] |

| **description** | **String** | Human-readable description. | [optional] |

| **name** | **String** | The name of the  resource. | [optional] |

| **peers** | [**Array&lt;Peer&gt;**](Peer.md) | Read-Only attribute. Lists LAN&#39;s joined to this private Cross-Connect. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::PrivateCrossConnectProperties.new(
  connectable_datacenters: { "connectableDatacenters": [ { "id": "<dc-id>", "name": "<dc-name>", "location": "<de/fra>"} ] },

  description: Private Cross-Connect between datacenter 'A' and datacenter 'B' ,

  name: My resource,

  peers: { "peers": [ { "id": "<lan-id>", "name": "<lan-name>", "datacenterId": "<dc-uuid>",  "datacenterName": "<dc-name>", "location": "<de/fra>"} ] }
)
```

