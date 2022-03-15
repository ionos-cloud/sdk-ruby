# Groups

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

instance = Ionoscloud::Groups.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "groups",
  href: https://<API_HOST>/cloudapi/v6/um/groups,
  items: null
)
```

