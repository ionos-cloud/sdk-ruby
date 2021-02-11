# ResourceLimits

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **cores\_per\_server** | **Integer** | maximum number of cores per server |  |
| **cores\_per\_contract** | **Integer** | maximum cores per contract |  |
| **cores\_provisioned** | **Integer** | number of cores provisioned |  |
| **ram\_per\_server** | **Integer** | maximum ram per server |  |
| **ram\_per\_contract** | **Integer** | maximum ram per contract |  |
| **ram\_provisioned** | **Integer** | ram provisioned |  |
| **hdd\_limit\_per\_volume** | **Integer** | hdd limit per volume |  |
| **hdd\_limit\_per\_contract** | **Integer** | hdd limit per contract |  |
| **hdd\_volume\_provisioned** | **Integer** | hdd volume provisioned |  |
| **ssd\_limit\_per\_volume** | **Integer** | ssd limit per volume |  |
| **ssd\_limit\_per\_contract** | **Integer** | ssd limit per contract |  |
| **ssd\_volume\_provisioned** | **Integer** | ssd volume provisioned |  |
| **reservable\_ips** | **Integer** | total reservable ip limit of the customer |  |
| **reserved\_ips\_on\_contract** | **Integer** | reserved ips on a contract |  |
| **reserved\_ips\_in\_use** | **Integer** | reserved ips in use |  |
| **k8s\_cluster\_limit\_total** | **Integer** | k8s clusters total limit |  |
| **k8s\_clusters\_provisioned** | **Integer** | k8s clusters provisioned |  |

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

