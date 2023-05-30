# ServerEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **cdroms** | [**Cdroms**](Cdroms.md) |  | [optional] |

| **nics** | [**Nics**](Nics.md) |  | [optional] |

| **volumes** | [**AttachedVolumes**](AttachedVolumes.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ServerEntities.new(
  cdroms: null,

  nics: null,

  volumes: null
)
```

