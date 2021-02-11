# Ionoscloud::GroupMembers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **items** | [**Array&lt;User&gt;**](User.md) | Array of items in that collection | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupMembers.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: &quot;collection&quot;,
  href: https://&lt;API_HOST&gt;/cloudapi/v5/um/groups/30740c22-1def-11e7-aac9-d7a3646ca7fd/users,
  items: null
)
```

