# DataCenterEntities

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **servers** | [**Servers**](servers.md) |  | \[optional\] |
| **volumes** | [**Volumes**](volumes.md) |  | \[optional\] |
| **loadbalancers** | [**Loadbalancers**](loadbalancers.md) |  | \[optional\] |
| **lans** | [**Lans**](lans.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::DataCenterEntities.new(
  servers: null,
  volumes: null,
  loadbalancers: null,
  lans: null
)
```

