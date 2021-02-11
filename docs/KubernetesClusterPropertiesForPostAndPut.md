# Ionoscloud::KubernetesClusterPropertiesForPostAndPut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A Kubernetes Cluster Name |  |
| **k8s_version** | **String** | The kubernetes version in which a cluster is running. This imposes restrictions on what kubernetes versions can be run in a cluster&#39;s nodepools. Additionally, not all kubernetes versions are viable upgrade targets for all prior versions. | [optional] |
| **maintenance_window** | [**KubernetesMaintenanceWindow**](KubernetesMaintenanceWindow.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesClusterPropertiesForPostAndPut.new(
  name: k8s,
  k8s_version: 1.15.4,
  maintenance_window: null
)
```

