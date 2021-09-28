# IpConsumer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** |  | [optional] |
| **mac** | **String** |  | [optional] |
| **nic_id** | **String** |  | [optional] |
| **server_id** | **String** |  | [optional] |
| **server_name** | **String** |  | [optional] |
| **datacenter_id** | **String** |  | [optional] |
| **datacenter_name** | **String** |  | [optional] |
| **k8s_node_pool_uuid** | **String** |  | [optional] |
| **k8s_cluster_uuid** | **String** |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::IpConsumer.new(
  ip: null,
  mac: null,
  nic_id: null,
  server_id: null,
  server_name: null,
  datacenter_id: null,
  datacenter_name: null,
  k8s_node_pool_uuid: null,
  k8s_cluster_uuid: null
)
```

