# IpBlockProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ips** | **Array&lt;String&gt;** | A collection of IPs associated with the IP Block | \[optional\]\[readonly\] |
| **location** | **String** | Location of that IP Block. Property cannot be modified after creation \(disallowed in update requests\) |  |
| **size** | **Integer** | The size of the IP block |  |
| **name** | **String** | A name of that resource | \[optional\] |
| **ip\_consumers** | [**Array&lt;IpConsumer&gt;**](ipconsumer.md) | Read-Only attribute. Lists consumption detail of an individual ip | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::IpBlockProperties.new(
  ips: [&quot;22.231.113.64&quot;, &quot;22.231.113.65&quot;, &quot;22.231.113.66&quot;],
  location: us/las,
  size: 5,
  name: My resource,
  ip_consumers: { &quot;ipConsumers&quot;: [ { &quot;ip&quot; : &quot;192.18.2.11&quot;, &quot;mac&quot; : &quot;02:01:3f:52:6e:57&quot;, &quot;nicId&quot; : &quot;0e8ee463-1174-46f2-87ba-a5c79c14d8e5&quot;, &quot;serverId&quot; : &quot;e6a3466f-8d6e-4cb6-8001-f4e245f222b7&quot;, &quot;serverName&quot; : &quot;Unnamed Server&quot;, &quot;datacenterId&quot; : &quot;6e54a9ec-aace-4176-8ee4-1c3a704fccfc&quot;, &quot;datacenterName&quot; : &quot;IpConsumerDC&quot;} ] }
)
```

