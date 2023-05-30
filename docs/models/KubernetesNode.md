# KubernetesNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**KubernetesNodeMetadata**](KubernetesNodeMetadata.md) |  | [optional] |

| **properties** | [**KubernetesNodeProperties**](KubernetesNodeProperties.md) |  |  |

| **type** | **String** | The object type. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNode.new(
  href: https://api.ionos.com/cloudapi/v6/k8s/30f8a4f6-6515-4c34-b49d-dea807453b90/nodepools/bfdf67bd-5665-4245-8096-7c7991f02f3f/nodes/81892fdb-d97e-4919-baf9-2b3a923f5401,

  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,

  metadata: null,

  properties: null,

  type: null
)
```

