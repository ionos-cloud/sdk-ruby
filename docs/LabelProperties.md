# Ionoscloud::LabelProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A Label Key | [optional] |
| **value** | **String** | A Label Value | [optional] |
| **resource_id** | **String** | The id of the resource | [optional] |
| **resource_type** | **String** | The type of the resource on which the label is applied. | [optional] |
| **resource_href** | **String** | URL to the Resource (absolute path) on which the label is applied. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LabelProperties.new(
  key: environment,
  value: production,
  resource_id: 700e1cab-99b2-4c30-ba8c-1d273ddba022,
  resource_type: datacenter,
  resource_href: https://&lt;hostname&gt;/datacenters/700e1cab-99b2-4c30-ba8c-1d273ddba022
)
```
