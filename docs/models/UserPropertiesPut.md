# UserPropertiesPut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firstname** | **String** | The first name of the user. | [optional] |
| **lastname** | **String** | The last name of the user. | [optional] |
| **email** | **String** | The email address of the user. | [optional] |
| **password** | **String** | password of the user | [optional] |
| **administrator** | **Boolean** | Indicates if the user has admin rights. | [optional] |
| **force_sec_auth** | **Boolean** | Indicates if secure authentication should be forced on the user. | [optional] |
| **sec_auth_active** | **Boolean** | Indicates if secure authentication is active for the user. | [optional] |
| **active** | **Boolean** | Indicates if the user is active. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::UserPropertiesPut.new(
  firstname: null,
  lastname: null,
  email: null,
  password: null,
  administrator: null,
  force_sec_auth: null,
  sec_auth_active: null,
  active: null
)
```

