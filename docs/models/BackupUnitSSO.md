# BackupUnitSSO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **sso_url** | **String** | The backup unit single sign on url | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::BackupUnitSSO.new(
  sso_url: https://<hostname>/?jwt=eyJ0eXAiO...W47AN5-_x7E
)
```

