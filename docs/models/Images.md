# Ionoscloud::Images

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **items** | [**Array&lt;Image&gt;**](Image.md) | Array of items in that collection | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Images.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: &quot;collection&quot;,
  href: &lt;RESOURCE-URI&gt;,
  items: null
)
```

