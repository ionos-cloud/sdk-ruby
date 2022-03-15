# GroupUsers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of the resource. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **items** | [**Array&lt;Group&gt;**](Group.md) | Array of items in the collection. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupUsers.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "groups",
  href: https://<API_HOST>/cloudapi/v6/um/users/9b1b4c62-1466-11e7-87d3-d7bb7dac0087/groups,
  items: null
)
```

