# KubernetesNodes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique representation for Kubernetes Node Pool as a collection on a resource. | [optional][readonly] |
| **type** | **String** | The type of resource within a collection | [optional][readonly] |
| **href** | **String** | URL to the collection representation (absolute path) | [optional][readonly] |
| **items** | [**Array&lt;KubernetesNode&gt;**](KubernetesNode.md) | Array of items in that collection | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodes.new(
  id: 1e072e52-2ed3-492f-b6b6-c6b116907527/nodepools,
  type: collection,
  href: &lt;RESOURCE-URI&gt;,
  items: null
)
```

