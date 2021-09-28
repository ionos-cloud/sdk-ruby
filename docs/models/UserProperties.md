# UserProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firstname** | **String** | first name of the user | [optional] |
| **lastname** | **String** | last name of the user | [optional] |
| **email** | **String** | email address of the user | [optional] |
| **administrator** | **Boolean** | indicates if the user has admin rights or not | [optional] |
| **force_sec_auth** | **Boolean** | indicates if secure authentication should be forced on the user or not | [optional] |
| **sec_auth_active** | **Boolean** | indicates if secure authentication is active for the user or not | [optional] |
| **s3_canonical_user_id** | **String** | Canonical (S3) id of the user for a given identity | [optional] |
| **active** | **Boolean** | indicates if the user is active | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::UserProperties.new(
  firstname: null,
  lastname: null,
  email: null,
  administrator: null,
  force_sec_auth: null,
  sec_auth_active: null,
  s3_canonical_user_id: null,
  active: null
)
```

