# KubernetesClusters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique representation of the Kubernetes cluster as a resource collection. | [optional][readonly] |
| **type** | **String** | The type of resource within a collection. | [optional][readonly] |
| **href** | **String** | URL to the collection representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;KubernetesCluster&gt;**](KubernetesCluster.md) | Array of items in the collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesClusters.new(
  id: k8s,
  type: collection,
  href: <RESOURCE-URI>,
  items: null
)
```

