# LanProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **ip_failover** | [**Array&lt;IPFailover&gt;**](IPFailover.md) | IP failover configurations for lan | [optional] |

| **name** | **String** | The name of the  resource. | [optional] |

| **pcc** | **String** | The unique identifier of the private Cross-Connect the LAN is connected to, if any. | [optional] |

| **public** | **Boolean** | This LAN faces the public Internet. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::LanProperties.new(
  ip_failover: null,

  name: My resource,

  pcc: 3c11273c-b3e1-4ca3-8134-84fd2dd4ebec,

  public: true
)
```

