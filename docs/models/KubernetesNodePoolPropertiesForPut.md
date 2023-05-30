# KubernetesNodePoolPropertiesForPut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **annotations** | **Hash&lt;String, String&gt;** | The annotations attached to the node pool. | [optional] |

| **auto_scaling** | [**KubernetesAutoScaling**](KubernetesAutoScaling.md) |  | [optional] |

| **k8s_version** | **String** | The Kubernetes version running in the node pool. Note that this imposes restrictions on which Kubernetes versions can run in the node pools of a cluster. Also, not all Kubernetes versions are suitable upgrade targets for all earlier versions. | [optional] |

| **labels** | **Hash&lt;String, String&gt;** | The labels attached to the node pool. | [optional] |

| **lans** | [**Array&lt;KubernetesNodePoolLan&gt;**](KubernetesNodePoolLan.md) | The array of existing private LANs to attach to worker nodes. | [optional] |

| **maintenance_window** | [**KubernetesMaintenanceWindow**](KubernetesMaintenanceWindow.md) |  | [optional] |

| **name** | **String** | A Kubernetes node pool name. Valid Kubernetes node pool name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. | [optional] |

| **node_count** | **Integer** | The number of worker nodes of the node pool. |  |

| **public_ips** | **Array&lt;String&gt;** | Optional array of reserved public IP addresses to be used by the nodes. The IPs must be from the exact location of the node pool&#39;s data center. If autoscaling is used, the array must contain one more IP than the maximum possible number of nodes (nodeCount+1 for a fixed number of nodes or maxNodeCount+1). The extra IP is used when the nodes are rebuilt. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodePoolPropertiesForPut.new(
  annotations: null,

  auto_scaling: null,

  k8s_version: 1.15.4,

  labels: null,

  lans: null,

  maintenance_window: null,

  name: k8s-node-pool,

  node_count: 2,

  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4]
)
```

