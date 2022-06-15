# ApplicationLoadBalancer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |
| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |
| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |
| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |
| **properties** | [**ApplicationLoadBalancerProperties**](ApplicationLoadBalancerProperties.md) |  |  |
| **entities** | [**ApplicationLoadBalancerEntities**](ApplicationLoadBalancerEntities.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ApplicationLoadBalancer.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "applicationloadbalancer",
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null,
  entities: null
)
```

