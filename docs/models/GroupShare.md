# GroupShare

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier | [optional][readonly] |
| **type** | [**Type**](Type.md) | resource as generic type | [optional] |
| **href** | **String** | URL to the object representation (absolute path) | [optional][readonly] |
| **properties** | [**GroupShareProperties**](GroupShareProperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupShare.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "resource",
  href: https://<API_HOST>/cloudapi/v6/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c/shares/17faab13-13abc-4efc-a8ad-ef1fb31a481b,
  properties: null
)
```

