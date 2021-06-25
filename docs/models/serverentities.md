# ServerEntities

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **cdroms** | [**Cdroms**](cdroms.md) |  | \[optional\] |
| **volumes** | [**AttachedVolumes**](attachedvolumes.md) |  | \[optional\] |
| **nics** | [**Nics**](nics.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ServerEntities.new(
  cdroms: null,
  volumes: null,
  nics: null
)
```

