# IpConsumer

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ip** | **String** |  | \[optional\] |
| **mac** | **String** |  | \[optional\] |
| **nic\_id** | **String** |  | \[optional\] |
| **server\_id** | **String** |  | \[optional\] |
| **server\_name** | **String** |  | \[optional\] |
| **datacenter\_id** | **String** |  | \[optional\] |
| **datacenter\_name** | **String** |  | \[optional\] |
| **k8s\_node\_pool\_uuid** | **String** |  | \[optional\] |
| **k8s\_cluster\_uuid** | **String** |  | \[optional\] |

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

