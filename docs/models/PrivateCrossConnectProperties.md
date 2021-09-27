# PrivateCrossConnectProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **description** | **String** | Human readable description | [optional] |
| **peers** | [**Array&lt;Peer&gt;**](Peer.md) | Read-Only attribute. Lists LAN&#39;s joined to this private cross connect | [optional][readonly] |
| **connectable_datacenters** | [**Array&lt;ConnectableDatacenter&gt;**](ConnectableDatacenter.md) | Read-Only attribute. Lists datacenters that can be joined to this private cross connect | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::PrivateCrossConnectProperties.new(
  name: My resource,
  description: Private Cross-Connect between datacenter 'A' and datacenter 'B' ,
  peers: { "peers": [ { "id": "<lan-id>", "name": "<lan-name>", "datacenterId": "<dc-uuid>",  "datacenterName": "<dc-name>", "location": "<de/fra>"} ] },
  connectable_datacenters: { "connectableDatacenters": [ { "id": "<dc-id>", "name": "<dc-name>", "location": "<de/fra>"} ] }
)
```

