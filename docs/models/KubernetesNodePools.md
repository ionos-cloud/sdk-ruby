# KubernetesNodePools

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The URL to the collection representation (absolute path). | [optional][readonly] |

| **id** | **String** | A unique representation of the Kubernetes node pool as a resource collection. | [optional][readonly] |

| **items** | [**Array&lt;KubernetesNodePool&gt;**](KubernetesNodePool.md) | Array of items in the collection. | [optional][readonly] |

| **type** | **String** | The resource type within a collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodePools.new(
  href: https://api.ionos.com/cloudapi/v6/k8s/30f8a4f6-6515-4c34-b49d-dea807453b90/nodepools,

  id: 1e072e52-2ed3-492f-b6b6-c6b116907527/nodepools,

  items: null,

  type: collection
)
```

