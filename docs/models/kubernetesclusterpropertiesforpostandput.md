# KubernetesClusterPropertiesForPostAndPut

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | A Kubernetes Cluster Name |  |
| **k8s\_version** | **String** | The kubernetes version in which a cluster is running. This imposes restrictions on what kubernetes versions can be run in a cluster's nodepools. Additionally, not all kubernetes versions are viable upgrade targets for all prior versions. | \[optional\] |
| **maintenance\_window** | [**KubernetesMaintenanceWindow**](kubernetesmaintenancewindow.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesClusterPropertiesForPostAndPut.new(
  name: k8s,
  k8s_version: 1.15.4,
  maintenance_window: null
)
```

