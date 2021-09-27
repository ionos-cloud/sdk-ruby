# KubernetesNodeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A Kubernetes Node Name. |  |
| **public_ip** | **String** | A valid public IP. | [optional] |
| **private_ip** | **String** | A valid private IP. | [optional] |
| **k8s_version** | **String** | The kubernetes version in which a nodepool is running. This imposes restrictions on what kubernetes versions can be run in a cluster&#39;s nodepools. Additionally, not all kubernetes versions are viable upgrade targets for all prior versions. |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::KubernetesNodeProperties.new(
  name: k8s-node,
  public_ip: 192.168.23.2,
  private_ip: 192.168.23.2,
  k8s_version: 1.15.4
)
```

