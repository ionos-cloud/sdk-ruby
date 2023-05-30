# BackupUnits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **items** | [**Array&lt;BackupUnit&gt;**](BackupUnit.md) | Array of items in the collection. | [optional][readonly] |

| **type** | **String** | The type of object that has been created. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::BackupUnits.new(
  href: <RESOURCE-URI>,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  items: null,

  type: collection
)
```

