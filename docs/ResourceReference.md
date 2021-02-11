# Ionoscloud::ResourceReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier |  |
| **type** | [**Type**](Type.md) | The type of object that has been created | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ResourceReference.new(
  id: null,
  type: &quot;resource&quot;,
  href: &lt;RESOURCE-URI&gt;
)
```

