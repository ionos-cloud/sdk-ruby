# KubernetesClusterForPost

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier. | \[optional\]\[readonly\] |
| **type** | **String** | The type of object | \[optional\]\[readonly\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **properties** | [**KubernetesClusterPropertiesForPost**](kubernetesclusterpropertiesforpost.md) |  |  |
| **entities** | [**KubernetesClusterEntities**](kubernetesclusterentities.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesClusterForPost.new(
  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,
  type: null,
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null,
  entities: null
)
```

