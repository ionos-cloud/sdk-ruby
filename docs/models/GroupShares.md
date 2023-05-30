# GroupShares

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **items** | [**Array&lt;GroupShare&gt;**](GroupShare.md) | Array of items in the collection. | [optional][readonly] |

| **type** | [**Type**](Type.md) | Share representing groups and resource relationship | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::GroupShares.new(
  href: https://<API_HOST>/cloudapi/v6/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c/shares,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  items: null,

  type: "shares"
)
```

