# FirewallRule

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **metadata** | [**DatacenterElementMetadata**](datacenterelementmetadata.md) |  | \[optional\] |
| **properties** | [**FirewallruleProperties**](firewallruleproperties.md) |  |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::FirewallRule.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "firewall-rule",
  href: <RESOURCE-URI>,
  metadata: null,
  properties: null
)
```

