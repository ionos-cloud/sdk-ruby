# ErrorMessage

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **error\_code** | **String** | Application internal error code | \[optional\]\[readonly\] |
| **message** | **String** | Human readable message | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ErrorMessage.new(
  error_code: 123,
  message: Error message example
)
```

