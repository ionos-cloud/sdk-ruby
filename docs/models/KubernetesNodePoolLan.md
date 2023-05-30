# KubernetesNodePoolLan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **datacenter_id** | **String** | The datacenter ID, requires system privileges, for internal usage only | [optional] |

| **dhcp** | **Boolean** | Specifies whether the Kubernetes node pool LAN reserves an IP with DHCP. | [optional] |

| **id** | **Integer** | The LAN ID of an existing LAN at the related data center |  |

| **routes** | [**Array&lt;KubernetesNodePoolLanRoutes&gt;**](KubernetesNodePoolLanRoutes.md) | The array of additional LANs attached to worker nodes. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodePoolLan.new(
  datacenter_id: 00000000-0000-0000-0000-000000000000,

  dhcp: true,

  id: 3,

  routes: null
)
```

