# UserProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **active** | **Boolean** | Indicates if the user is active. | [optional] |

| **administrator** | **Boolean** | Indicates if the user has admin rights. | [optional] |

| **email** | **String** | The email address of the user. | [optional] |

| **firstname** | **String** | The first name of the user. | [optional] |

| **force_sec_auth** | **Boolean** | Indicates if secure authentication should be forced on the user. | [optional] |

| **lastname** | **String** | The last name of the user. | [optional] |

| **s3_canonical_user_id** | **String** | Canonical (S3) ID of the user for a given identity. | [optional] |

| **sec_auth_active** | **Boolean** | Indicates if secure authentication is active for the user. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::UserProperties.new(
  active: null,

  administrator: null,

  email: null,

  firstname: null,

  force_sec_auth: null,

  lastname: null,

  s3_canonical_user_id: null,

  sec_auth_active: null
)
```

