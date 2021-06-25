# UserPropertiesPut

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **firstname** | **String** | first name of the user | \[optional\] |
| **lastname** | **String** | last name of the user | \[optional\] |
| **email** | **String** | email address of the user | \[optional\] |
| **administrator** | **Boolean** | indicates if the user has admin rights or not | \[optional\] |
| **force\_sec\_auth** | **Boolean** | indicates if secure authentication should be forced on the user or not | \[optional\] |
| **sec\_auth\_active** | **Boolean** | indicates if secure authentication is active for the user or not | \[optional\] |
| **active** | **Boolean** | indicates if the user is active | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::UserPropertiesPut.new(
  firstname: null,
  lastname: null,
  email: null,
  administrator: null,
  force_sec_auth: null,
  sec_auth_active: null,
  active: null
)
```

