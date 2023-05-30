# S3ObjectStorageSSO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **sso_url** | **String** | The S3 object storage single sign on url | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::S3ObjectStorageSSO.new(
  sso_url: https://<hostname>:port/ssosecurelogin.htm?user=dcf5702f-9353-47AN5-_x7E.....htm
)
```

