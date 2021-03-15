# ResourcesUsers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of the resource | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **items** | [**Array&lt;Resource&gt;**](Resource.md) | Array of items in that collection | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ResourcesUsers.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "collection",
  href: https://<API_HOST>/cloudapi/v5/um/users/9b1b4c62-1466-11e7-87d3-d7bb7dac0087/owns,
  items: null
)
```

