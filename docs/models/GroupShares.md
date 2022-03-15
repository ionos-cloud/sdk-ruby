# GroupShares

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | Share representing groups and resource relationship | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;GroupShare&gt;**](GroupShare.md) | Array of items in the collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupShares.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "shares",
  href: https://<API_HOST>/cloudapi/v6/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c/shares,
  items: null
)
```

