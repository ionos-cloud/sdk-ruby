# Ionoscloud::ResourceLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores_per_server** | **Integer** | maximum number of cores per server |  |
| **cores_per_contract** | **Integer** | maximum cores per contract |  |
| **cores_provisioned** | **Integer** | number of cores provisioned |  |
| **ram_per_server** | **Integer** | maximum ram per server |  |
| **ram_per_contract** | **Integer** | maximum ram per contract |  |
| **ram_provisioned** | **Integer** | ram provisioned |  |
| **hdd_limit_per_volume** | **Integer** | hdd limit per volume |  |
| **hdd_limit_per_contract** | **Integer** | hdd limit per contract |  |
| **hdd_volume_provisioned** | **Integer** | hdd volume provisioned |  |
| **ssd_limit_per_volume** | **Integer** | ssd limit per volume |  |
| **ssd_limit_per_contract** | **Integer** | ssd limit per contract |  |
| **ssd_volume_provisioned** | **Integer** | ssd volume provisioned |  |
| **reservable_ips** | **Integer** | total reservable ip limit of the customer |  |
| **reserved_ips_on_contract** | **Integer** | reserved ips on a contract |  |
| **reserved_ips_in_use** | **Integer** | reserved ips in use |  |
| **k8s_cluster_limit_total** | **Integer** | k8s clusters total limit |  |
| **k8s_clusters_provisioned** | **Integer** | k8s clusters provisioned |  |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::ResourceLimits.new(
  cores_per_server: null,
  cores_per_contract: null,
  cores_provisioned: null,
  ram_per_server: null,
  ram_per_contract: null,
  ram_provisioned: null,
  hdd_limit_per_volume: null,
  hdd_limit_per_contract: null,
  hdd_volume_provisioned: null,
  ssd_limit_per_volume: null,
  ssd_limit_per_contract: null,
  ssd_volume_provisioned: null,
  reservable_ips: null,
  reserved_ips_on_contract: null,
  reserved_ips_in_use: null,
  k8s_cluster_limit_total: null,
  k8s_clusters_provisioned: null
)
```

