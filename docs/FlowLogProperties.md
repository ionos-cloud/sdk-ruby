# FlowLogProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource |  |
| **action** | **String** | Specifies the traffic action pattern. |  |
| **direction** | **String** | Specifies the traffic direction pattern. |  |
| **bucket** | **String** | S3 bucket name of an existing IONOS Cloud S3 bucket. |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::FlowLogProperties.new(
  name: My resource,
  action: ACCEPTED,
  direction: INGRESS,
  bucket: bucketName/key
)
```

