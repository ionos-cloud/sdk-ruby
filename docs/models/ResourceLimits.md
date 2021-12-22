# ResourceLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores_per_server** | **Integer** | The maximum number of cores per server. |  |
| **cores_per_contract** | **Integer** | The maximum number of cores per contract. |  |
| **cores_provisioned** | **Integer** | The number of cores provisioned. |  |
| **ram_per_server** | **Integer** | The maximum RAM per server. |  |
| **ram_per_contract** | **Integer** | The maximum RAM per contract. |  |
| **ram_provisioned** | **Integer** | RAM provisioned. |  |
| **hdd_limit_per_volume** | **Integer** | HDD limit per volume. |  |
| **hdd_limit_per_contract** | **Integer** | HDD limit per contract. |  |
| **hdd_volume_provisioned** | **Integer** | HDD volume provisioned. |  |
| **ssd_limit_per_volume** | **Integer** | SSD limit per volume. |  |
| **ssd_limit_per_contract** | **Integer** | SSD limit per contract. |  |
| **ssd_volume_provisioned** | **Integer** | SSD volume provisioned. |  |
| **das_volume_provisioned** | **Integer** | DAS (Direct Attached Storage) volume provisioned. |  |
| **reservable_ips** | **Integer** | Total reservable IP limit for the customer. |  |
| **reserved_ips_on_contract** | **Integer** | Reserved ips for the contract. |  |
| **reserved_ips_in_use** | **Integer** | Reserved ips in use. |  |
| **k8s_cluster_limit_total** | **Integer** | K8s clusters total limit. |  |
| **k8s_clusters_provisioned** | **Integer** | K8s clusters provisioned. |  |
| **nlb_limit_total** | **Integer** | NLB total limit. |  |
| **nlb_provisioned** | **Integer** | NLBs provisioned. |  |
| **nat_gateway_limit_total** | **Integer** | NAT Gateway total limit. |  |
| **nat_gateway_provisioned** | **Integer** | NAT Gateways provisioned. |  |

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
  das_volume_provisioned: null,
  reservable_ips: null,
  reserved_ips_on_contract: null,
  reserved_ips_in_use: null,
  k8s_cluster_limit_total: null,
  k8s_clusters_provisioned: null,
  nlb_limit_total: null,
  nlb_provisioned: null,
  nat_gateway_limit_total: null,
  nat_gateway_provisioned: null
)
```

