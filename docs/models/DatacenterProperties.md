# DatacenterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the  resource. | [optional] |
| **description** | **String** | A description for the datacenter, such as staging, production. | [optional] |
| **location** | **String** | The physical location where the datacenter will be created. This will be where all of your servers live. Property cannot be modified after datacenter creation (disallowed in update requests). |  |
| **version** | **Integer** | The version of the data center; incremented with every change. | [optional][readonly] |
| **features** | **Array&lt;String&gt;** | List of features supported by the location where this data center is provisioned. | [optional][readonly] |
| **sec_auth_protection** | **Boolean** | Boolean value representing if the data center requires extra protection, such as two-step verification. | [optional] |
| **cpu_architecture** | [**Array&lt;CpuArchitectureProperties&gt;**](CpuArchitectureProperties.md) | Array of features and CPU families available in a location | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::DatacenterProperties.new(
  name: My resource,
  description: My Production Datacenter,
  location: us/las,
  version: 8,
  features: [SSD],
  sec_auth_protection: true,
  cpu_architecture: null
)
```

