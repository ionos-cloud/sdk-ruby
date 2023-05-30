# KubernetesAutoScaling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **max_node_count** | **Integer** | The maximum number of worker nodes that the managed node pool can scale in. Must be &gt;&#x3D; minNodeCount and must be &gt;&#x3D; nodeCount. Required if autoScaling is specified. |  |

| **min_node_count** | **Integer** | The minimum number of working nodes that the managed node pool can scale must be &gt;&#x3D; 1 and &gt;&#x3D; nodeCount. Required if autoScaling is specified. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesAutoScaling.new(
  max_node_count: 3,

  min_node_count: 1
)
```

