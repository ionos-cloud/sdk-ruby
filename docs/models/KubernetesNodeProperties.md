# KubernetesNodeProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **k8s_version** | **String** | The Kubernetes version running in the node pool. Note that this imposes restrictions on which Kubernetes versions can run in the node pools of a cluster. Also, not all Kubernetes versions are suitable upgrade targets for all earlier versions. |  |

| **name** | **String** | The Kubernetes node name. |  |

| **private_ip** | **String** | The private IP associated with the node. | [optional] |

| **public_ip** | **String** | The public IP associated with the node. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodeProperties.new(
  k8s_version: 1.15.4,

  name: K8s-node,

  private_ip: 192.168.23.2,

  public_ip: 192.168.23.2
)
```

