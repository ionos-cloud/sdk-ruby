# Ionoscloud::ServerEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cdroms** | [**Cdroms**](Cdroms.md) |  | [optional] |
| **volumes** | [**AttachedVolumes**](AttachedVolumes.md) |  | [optional] |
| **nics** | [**Nics**](Nics.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ServerEntities.new(
  cdroms: null,
  volumes: null,
  nics: null
)
```

