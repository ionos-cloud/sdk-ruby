# KubernetesNodePoolProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A Kubernetes Node Pool Name. Valid Kubernetes Node Pool name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. |  |
| **datacenter_id** | **String** | A valid uuid of the datacenter on which user has access |  |
| **node_count** | **Integer** | Number of nodes part of the Node Pool |  |
| **cpu_family** | **String** | A valid cpu family name |  |
| **cores_count** | **Integer** | Number of cores for node |  |
| **ram_size** | **Integer** | RAM size for node, minimum size is 2048MB. Ram size must be set to multiple of 1024MB. |  |
| **availability_zone** | **String** | The availability zone in which the target VM should exist |  |
| **storage_type** | **String** | Hardware type of the volume |  |
| **storage_size** | **Integer** | The size of the volume in GB. The size should be greater than 10GB. |  |
| **k8s_version** | **String** | The kubernetes version in which a nodepool is running. This imposes restrictions on what kubernetes versions can be run in a cluster&#39;s nodepools. Additionally, not all kubernetes versions are viable upgrade targets for all prior versions. | [optional] |
| **maintenance_window** | [**KubernetesMaintenanceWindow**](KubernetesMaintenanceWindow.md) |  | [optional] |
| **auto_scaling** | [**KubernetesAutoScaling**](KubernetesAutoScaling.md) |  | [optional] |
| **lans** | [**Array&lt;KubernetesNodePoolLan&gt;**](KubernetesNodePoolLan.md) | array of additional LANs attached to worker nodes | [optional] |
| **labels** | **Hash&lt;String, String&gt;** | map of labels attached to node pool | [optional] |
| **annotations** | **Hash&lt;String, String&gt;** | map of annotations attached to node pool | [optional] |
| **public_ips** | **Array&lt;String&gt;** | Optional array of reserved public IP addresses to be used by the nodes. IPs must be from same location as the data center used for the node pool. The array must contain one extra IP than maximum number of nodes could be. (nodeCount+1 if fixed node amount or maxNodeCount+1 if auto scaling is used) The extra provided IP Will be used during rebuilding of nodes. | [optional] |
| **available_upgrade_versions** | **Array&lt;String&gt;** | List of available versions for upgrading the node pool | [optional] |
| **gateway_ip** | **String** | Public IP address for the gateway performing source NAT for the node pool&#39;s nodes belonging to a private cluster. Required only if the node pool belongs to a private cluster. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodePoolProperties.new(
  name: k8s-node-pool,
  datacenter_id: 1e072e52-2ed3-492f-b6b6-c6b116907521,
  node_count: 2,
  cpu_family: AMD_OPTERON,
  cores_count: 4,
  ram_size: 2048,
  availability_zone: AUTO,
  storage_type: HDD,
  storage_size: 100,
  k8s_version: 1.15.4,
  maintenance_window: null,
  auto_scaling: null,
  lans: null,
  labels: null,
  annotations: null,
  public_ips: [81.173.1.2, 82.231.2.5, 92.221.2.4],
  available_upgrade_versions: [1.16.4, 1.17.7],
  gateway_ip: 198.51.100.100
)
```

