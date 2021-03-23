# BackupUnits

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **id** | **String** | The resource's unique identifier | \[optional\]\[readonly\] |
| **type** | **String** | The type of object that has been created | \[optional\]\[readonly\] |
| **href** | **String** | URL to the object representation \(absolute path\) | \[optional\]\[readonly\] |
| **items** | [**Array&lt;BackupUnit&gt;**](backupunit.md) | Array of items in that collection | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::BackupUnits.new(
  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,
  type: collection,
  href: &lt;RESOURCE-URI&gt;,
  items: null
)
```

