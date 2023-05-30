# Labels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the collection representation (absolute path). | [optional][readonly] |

| **id** | **String** | A unique representation of the label as a resource collection. | [optional][readonly] |

| **items** | [**Array&lt;Label&gt;**](Label.md) | Array of items in the collection. | [optional][readonly] |

| **type** | **String** | The type of resource within a collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Labels.new(
  href: <RESOURCE-URI>,

  id: labels,

  items: null,

  type: collection
)
```

