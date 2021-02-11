# DatacenterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **description** | **String** | A description for the datacenter, e.g. staging, production | [optional] |
| **location** | **String** | The physical location where the datacenter will be created. This will be where all of your servers live. Property cannot be modified after datacenter creation (disallowed in update requests) |  |
| **version** | **Integer** | The version of that Data Center. Gets incremented with every change | [optional][readonly] |
| **features** | **Array&lt;String&gt;** | List of features supported by the location this data center is part of | [optional][readonly] |
| **sec_auth_protection** | **Boolean** | Boolean value representing if the data center requires extra protection e.g. two factor protection | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::DatacenterProperties.new(
  name: My resource,
  description: My Production Datacenter,
  location: us/las,
  version: 8,
  features: [SSD],
  sec_auth_protection: true
)
```

