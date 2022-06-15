# TargetGroupHttpHealthCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | The path (destination URL) for the HTTP health check request; the default is /. | [optional] |
| **method** | **String** | The method for the HTTP health check. | [optional] |
| **match_type** | **String** |  |  |
| **response** | **String** | The response returned by the request, depending on the match type. |  |
| **regex** | **Boolean** |  | [optional] |
| **negate** | **Boolean** |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::TargetGroupHttpHealthCheck.new(
  path: /monitoring,
  method: GET,
  match_type: STATUS_CODE,
  response: 200,
  regex: false,
  negate: false
)
```

