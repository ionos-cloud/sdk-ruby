# Loadbalancer

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **properties** | [**LoadbalancerProperties**](loadbalancerproperties.md) |  |  |
| **entities** | [**LoadbalancerEntities**](loadbalancerentities.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Loadbalancer.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: &quot;loadbalancer&quot;,
  href: &lt;RESOURCE-URI&gt;,
  metadata: null,
  properties: null,
  entities: null
)
```

