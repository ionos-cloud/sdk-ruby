# ResourceProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | name of the resource | \[optional\] |
| **sec\_auth\_protection** | **Boolean** | Boolean value representing if the resource is multi factor protected or not e.g. using two factor protection. Currently only Data Centers and Snapshots are allowed to be multi factor protected, The value of attribute if null is intentional and it means that the resource doesn't support multi factor protection at all. | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ResourceProperties.new(
  name: null,
  sec_auth_protection: true
)
```

