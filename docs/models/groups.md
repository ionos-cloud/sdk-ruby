# Groups

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | The type of the resource | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **items** | [**Array&lt;Group&gt;**](group.md) | Array of items in that collection | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Groups.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "groups",
  href: https://<API_HOST>/cloudapi/v5/um/groups,
  items: null
)
```

