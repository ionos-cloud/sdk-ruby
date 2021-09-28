# ResourceGroups

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

instance = Ionoscloud::ResourceGroups.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "collection",
  href: https://<API_HOST>/cloudapi/v6/um/groups/30740c22-1def-11e7-aac9-d7a3646ca7fd/resources,
  items: null
)
```

