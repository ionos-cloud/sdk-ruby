# KubernetesNodePoolProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **annotations** | **Hash&lt;String, String&gt;** | The annotations attached to the node pool. | [optional] |

| **auto_scaling** | [**KubernetesAutoScaling**](KubernetesAutoScaling.md) |  | [optional] |

| **availability_zone** | **String** | The availability zone in which the target VM should be provisioned. |  |

| **available_upgrade_versions** | **Array&lt;String&gt;** | The list of available versions for upgrading the node pool. | [optional] |

| **cores_count** | **Integer** | The total number of cores for the nodes. |  |

| **cpu_family** | **String** | The CPU type for the nodes. |  |

| **datacenter_id** | **String** | The unique identifier of the VDC where the worker nodes of the node pool are provisioned.Note that the data center is located in the exact place where the parent cluster of the node pool is located. |  |

| **k8s_version** | **String** | The Kubernetes version running in the node pool. Note that this imposes restrictions on which Kubernetes versions can run in the node pools of a cluster. Also, not all Kubernetes versions are suitable upgrade targets for all earlier versions. | [optional] |

| **labels** | **Hash&lt;String, String&gt;** | The labels attached to the node pool. | [optional] |

| **lans** | [**Array&lt;KubernetesNodePoolLan&gt;**](KubernetesNodePoolLan.md) | The array of existing private LANs to attach to worker nodes. | [optional] |

| **maintenance_window** | [**KubernetesMaintenanceWindow**](KubernetesMaintenanceWindow.md) |  | [optional] |

| **name** | **String** | A Kubernetes node pool name. Valid Kubernetes node pool name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. |  |

| **node_count** | **Integer** | The number of worker nodes of the node pool. |  |

| **public_ips** | **Array&lt;String&gt;** | Optional array of reserved public IP addresses to be used by the nodes. The IPs must be from the exact location of the node pool&#39;s data center. If autoscaling is used, the array must contain one more IP than the maximum possible number of nodes (nodeCount+1 for a fixed number of nodes or maxNodeCount+1). The extra IP is used when the nodes are rebuilt. | [optional] |

| **ram_size** | **Integer** | The RAM size for the nodes. Must be specified in multiples of 1024 MB, with a minimum size of 2048 MB. |  |

| **storage_size** | **Integer** | The allocated volume size in GB. The allocated volume size in GB. To achieve good performance, we recommend a size greater than 100GB for SSD. |  |

| **storage_type** | **String** | The storage type for the nodes. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodePoolProperties.new(
  annotations: null,

  auto_scaling: null,

  availability_zone: AUTO,

  available_upgrade_versions: [1.16.4, 1.17.7],

  cores_count: 4,

  cpu_family: AMD_OPTERON,

  datacenter_id: 1e072e52-2ed3-492f-b6b6-c6b116907521,

  k8s_version: 1.15.4,

  labels: null,

  lans: null,

  maintenance_window: null,

  name: K8s-node-pool,

  node_count: 2,

  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4],

  ram_size: 2048,

  storage_size: 100,

  storage_type: HDD
)
```

