# GroupShares

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | [**Type**](type.md) | Share representing groups and resource relationship | \[optional\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **items** | [**Array&lt;GroupShare&gt;**](groupshare.md) | Array of items in that collection | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupShares.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: "shares",
  href: https://<API_HOST>/cloudapi/v5/um/groups/15f67991-0f51-4efc-a8ad-ef1fb31a480c/shares,
  items: null
)
```

