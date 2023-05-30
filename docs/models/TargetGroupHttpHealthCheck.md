# TargetGroupHttpHealthCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **match_type** | **String** | Specify the target&#39;s response type to match ALB&#39;s request. |  |

| **method** | **String** | The method used for the health check request. | [optional] |

| **negate** | **Boolean** | Specifies whether to negate an individual entry; the default value is &#39;FALSE&#39;. | [optional] |

| **path** | **String** | The destination URL for HTTP the health check; the default is &#39;/&#39;. | [optional] |

| **regex** | **Boolean** | Specifies whether to use a regular expression to parse the response body; the default value is &#39;FALSE&#39;.  By using regular expressions, you can flexibly customize the expected response from a healthy server. | [optional] |

| **response** | **String** | The response returned by the request. It can be a status code or a response body depending on the definition of &#39;matchType&#39;. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::TargetGroupHttpHealthCheck.new(
  match_type: STATUS_CODE,

  method: GET,

  negate: false,

  path: /monitoring,

  regex: false,

  response: 200
)
```

