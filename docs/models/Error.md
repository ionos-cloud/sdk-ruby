# Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **http_status** | **Integer** | HTTP status code of the operation. | [optional][readonly] |
| **messages** | [**Array&lt;ErrorMessage&gt;**](ErrorMessage.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Error.new(
  http_status: 400,
  messages: null
)
```

