# ResourceReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. |  |

| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ResourceReference.new(
  href: <RESOURCE-URI>,

  id: null,

  type: "resource"
)
```

