# BackupUnitProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | A name of that resource \(only alphanumeric characters are acceptable\) |  |
| **password** | **String** | the password associated to that resource | \[optional\] |
| **email** | **String** | The email associated with the backup unit. Bear in mind that this email does not be the same email as of the user. | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::BackupUnitProperties.new(
  name: BackupUnitName,
  password: mypass123,
  email: email@email.com
)
```

