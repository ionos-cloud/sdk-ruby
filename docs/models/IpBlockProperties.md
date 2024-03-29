# IpBlockProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **ip_consumers** | [**Array&lt;IpConsumer&gt;**](IpConsumer.md) | Read-Only attribute. Lists consumption detail for an individual IP | [optional][readonly] |

| **ips** | **Array&lt;String&gt;** | Collection of IPs, associated with the IP Block. | [optional][readonly] |

| **location** | **String** | Location of that IP block. Property cannot be modified after it is created (disallowed in update requests). |  |

| **name** | **String** | The name of the  resource. | [optional] |

| **size** | **Integer** | The size of the IP block. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::IpBlockProperties.new(
  ip_consumers: { "ipConsumers": [ { "ip" : "192.18.2.11", "mac" : "02:01:3f:52:6e:57", "nicId" : "0e8ee463-1174-46f2-87ba-a5c79c14d8e5", "serverId" : "e6a3466f-8d6e-4cb6-8001-f4e245f222b7", "serverName" : "Unnamed Server", "datacenterId" : "6e54a9ec-aace-4176-8ee4-1c3a704fccfc", "datacenterName" : "IpConsumerDC", "k8sNodePoolUuid" : "6e54a9ec-aace-4176-8ee4-1c3a704fcc12", "k8sClusterUuid" : "6e54a9ec-aace-4176-8ee4-1c3a704fcc23"} ] },

  ips: ["22.231.113.64", "22.231.113.65", "22.231.113.66"],

  location: us/las,

  name: My resource,

  size: 5
)
```

