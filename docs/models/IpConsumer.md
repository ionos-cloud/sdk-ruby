# IpConsumer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **datacenter_id** | **String** |  | [optional] |

| **datacenter_name** | **String** |  | [optional] |

| **ip** | **String** |  | [optional] |

| **k8s_cluster_uuid** | **String** |  | [optional] |

| **k8s_node_pool_uuid** | **String** |  | [optional] |

| **mac** | **String** |  | [optional] |

| **nic_id** | **String** |  | [optional] |

| **server_id** | **String** |  | [optional] |

| **server_name** | **String** |  | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::IpConsumer.new(
  datacenter_id: null,

  datacenter_name: null,

  ip: null,

  k8s_cluster_uuid: null,

  k8s_node_pool_uuid: null,

  mac: null,

  nic_id: null,

  server_id: null,

  server_name: null
)
```

