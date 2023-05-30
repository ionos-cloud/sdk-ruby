# Contracts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **items** | [**Array&lt;Contract&gt;**](Contract.md) | Array of items in the collection. | [optional][readonly] |

| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Contracts.new(
  href: https://api.ionos.com/cloudapi/v6/contracts,

  id: contracts,

  items: null,

  type: "collection"
)
```

