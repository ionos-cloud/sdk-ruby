# LocationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **features** | **Array&lt;String&gt;** | List of features supported by the location | [optional][readonly] |
| **image_aliases** | **Array&lt;String&gt;** | List of image aliases available for the location | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LocationProperties.new(
  name: My resource,
  features: [SSD],
  image_aliases: null
)
```

