# ResourceLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **cores_per_contract** | **Integer** | The maximum number of CPU cores per contract. |  |

| **cores_per_server** | **Integer** | The maximum number of CPU cores per server. |  |

| **cores_provisioned** | **Integer** | The number of CPU cores provisioned. |  |

| **das_volume_provisioned** | **Integer** | The amount of DAS disk space (in MB) in a Cube server that is currently provisioned. |  |

| **hdd_limit_per_contract** | **Integer** | The maximum amount of disk space (in MB) that can be provided under this contract. |  |

| **hdd_limit_per_volume** | **Integer** | The maximum size (in MB) of an idividual hard disk volume. |  |

| **hdd_volume_provisioned** | **Integer** | The amount of hard disk space (in MB) that is currently provisioned. |  |

| **k8s_cluster_limit_total** | **Integer** | The maximum number of Kubernetes clusters that can be created under this contract. |  |

| **k8s_clusters_provisioned** | **Integer** | The amount of Kubernetes clusters that is currently provisioned. |  |

| **nat_gateway_limit_total** | **Integer** | The NAT Gateway total limit. |  |

| **nat_gateway_provisioned** | **Integer** | The NAT Gateways provisioned. |  |

| **nlb_limit_total** | **Integer** | The NLB total limit. |  |

| **nlb_provisioned** | **Integer** | The NLBs provisioned. |  |

| **ram_per_contract** | **Integer** | The maximum amount of RAM (in MB) that can be provisioned under this contract. |  |

| **ram_per_server** | **Integer** | The maximum amount of RAM (in MB) that can be provisioned for a particular server under this contract. |  |

| **ram_provisioned** | **Integer** | The amount of RAM (in MB) provisioned under this contract. |  |

| **reservable_ips** | **Integer** | The maximum number of static public IP addresses that can be reserved by this customer across contracts. |  |

| **reserved_ips_in_use** | **Integer** | The number of static public IP addresses in use. |  |

| **reserved_ips_on_contract** | **Integer** | The maximum number of static public IP addresses that can be reserved for this contract. |  |

| **ssd_limit_per_contract** | **Integer** | The maximum amount of solid state disk space (in MB) that can be provisioned under this contract. |  |

| **ssd_limit_per_volume** | **Integer** | The maximum size (in MB) of an individual solid state disk volume. |  |

| **ssd_volume_provisioned** | **Integer** | The amount of solid state disk space (in MB) that is currently provisioned. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::ResourceLimits.new(
  cores_per_contract: 8,

  cores_per_server: 4,

  cores_provisioned: 7,

  das_volume_provisioned: 51200,

  hdd_limit_per_contract: 61440,

  hdd_limit_per_volume: 614400,

  hdd_volume_provisioned: 10240,

  k8s_cluster_limit_total: 5,

  k8s_clusters_provisioned: 0,

  nat_gateway_limit_total: 5,

  nat_gateway_provisioned: 0,

  nlb_limit_total: 5,

  nlb_provisioned: 0,

  ram_per_contract: 20480,

  ram_per_server: 20480,

  ram_provisioned: 14336,

  reservable_ips: 1,

  reserved_ips_in_use: 0,

  reserved_ips_on_contract: 1,

  ssd_limit_per_contract: 614400,

  ssd_limit_per_volume: 614400,

  ssd_volume_provisioned: 204800
)
```

