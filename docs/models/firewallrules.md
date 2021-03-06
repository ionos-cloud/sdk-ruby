# FirewallRules

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of object that has been created | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **items** | [**Array&lt;FirewallRule&gt;**](firewallrule.md) | Array of items in that collection | \[optional\]\[readonly\] |
| **offset** | **Float** | the offset \(if specified in the request\) | \[optional\] |
| **limit** | **Float** | the limit \(if specified in the request\) | \[optional\] |
| **\_links** | [**PaginationLinks**](paginationlinks.md) |  | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::FirewallRules.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "collection",
  href: <RESOURCE-URI>,
  items: null,
  offset: 0,
  limit: 1000,
  _links: null
)
```

