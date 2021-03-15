# KubernetesNodePoolLan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The LAN ID of an existing LAN at the related datacenter | [optional] |
| **dhcp** | **Boolean** | Indicates if the Kubernetes Node Pool LAN will reserve an IP using DHCP | [optional] |
| **routes** | [**Array&lt;KubernetesNodePoolLanRoutes&gt;**](KubernetesNodePoolLanRoutes.md) | array of additional LANs attached to worker nodes | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodePoolLan.new(
  id: 3,
  dhcp: true,
  routes: null
)
```

