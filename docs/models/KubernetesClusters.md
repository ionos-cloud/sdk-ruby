# KubernetesClusters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The URL to the collection representation (absolute path). | [optional][readonly] |

| **id** | **String** | The unique representation of the K8s cluster as a resource collection. | [optional][readonly] |

| **items** | [**Array&lt;KubernetesCluster&gt;**](KubernetesCluster.md) | Array of K8s clusters in the collection. | [optional][readonly] |

| **type** | **String** | The resource type within a collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesClusters.new(
  href: https://api.ionos.com/cloudapi/v6/k8s,

  id: k8s,

  items: null,

  type: collection
)
```

