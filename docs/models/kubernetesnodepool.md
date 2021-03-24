# KubernetesNodePool

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier. | \[optional\]\[readonly\] |
| **type** | **String** | The type of object | \[optional\]\[readonly\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **properties** | [**KubernetesNodePoolProperties**](kubernetesnodepoolproperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodePool.new(
  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,
  type: null,
  href: &lt;RESOURCE-URI&gt;,
  metadata: null,
  properties: null
)
```
