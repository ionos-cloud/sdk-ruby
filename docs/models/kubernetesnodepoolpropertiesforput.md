# KubernetesNodePoolPropertiesForPut

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | A Kubernetes Node Pool Name. Valid Kubernetes Node Pool name must be 63 characters or less and must be empty or begin and end with an alphanumeric character \(\[a-z0-9A-Z\]\) with dashes \(-\), underscores \(\_\), dots \(.\), and alphanumerics between. |  |
| **node\_count** | **Integer** | Number of nodes part of the Node Pool |  |
| **k8s\_version** | **String** | The kubernetes version in which a nodepool is running. This imposes restrictions on what kubernetes versions can be run in a cluster's nodepools. Additionally, not all kubernetes versions are viable upgrade targets for all prior versions. | \[optional\] |
| **maintenance\_window** | [**KubernetesMaintenanceWindow**](kubernetesmaintenancewindow.md) |  | \[optional\] |
| **auto\_scaling** | [**KubernetesAutoScaling**](kubernetesautoscaling.md) |  | \[optional\] |
| **lans** | [**Array&lt;KubernetesNodePoolLan&gt;**](kubernetesnodepoollan.md) | array of additional LANs attached to worker nodes | \[optional\] |
| **labels** | **Hash&lt;String, String&gt;** | map of labels attached to node pool | \[optional\] |
| **annotations** | **Hash&lt;String, String&gt;** | map of annotations attached to node pool | \[optional\] |
| **public\_ips** | **Array&lt;String&gt;** | Optional array of reserved public IP addresses to be used by the nodes. IPs must be from same location as the data center used for the node pool. The array must contain one extra IP than maximum number of nodes could be. \(nodeCount+1 if fixed node amount or maxNodeCount+1 if auto scaling is used\) The extra provided IP Will be used during rebuilding of nodes. | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodePoolPropertiesForPut.new(
  name: k8s-node-pool,
  node_count: 2,
  k8s_version: 1.15.4,
  maintenance_window: null,
  auto_scaling: null,
  lans: null,
  labels: null,
  annotations: null,
  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4]
)
```

