# KubernetesClusters

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | Unique representation for Kubernetes Cluster as a collection on a resource. | \[optional\]\[readonly\] |
| **type** | **String** | The type of object that has been created | \[optional\]\[readonly\] |
| **href** | **String** | URL to the collection representation \(absolute path\) | \[optional\]\[readonly\] |
| **items** | [**Array&lt;KubernetesCluster&gt;**](kubernetescluster.md) | Array of items in that collection | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesClusters.new(
  id: k8s,
  type: collection,
  href: &lt;RESOURCE-URI&gt;,
  items: null
)
```

