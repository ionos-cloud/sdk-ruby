# KubernetesConfigProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubeconfig** | **String** | A Kubernetes Config file data | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesConfigProperties.new(
  kubeconfig: &lt;FILE&gt;
)
```

