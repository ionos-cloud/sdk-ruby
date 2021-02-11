# GroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **create_data_center** | **Boolean** | create data center privilege | [optional] |
| **create_snapshot** | **Boolean** | create snapshot privilege | [optional] |
| **reserve_ip** | **Boolean** | reserve ip block privilege | [optional] |
| **access_activity_log** | **Boolean** | activity log access privilege | [optional] |
| **create_pcc** | **Boolean** | create pcc privilege | [optional] |
| **s3_privilege** | **Boolean** | S3 privilege | [optional] |
| **create_backup_unit** | **Boolean** | create backup unit privilege | [optional] |
| **create_internet_access** | **Boolean** | create internet access privilege | [optional] |
| **create_k8s_cluster** | **Boolean** | create kubernetes cluster privilege | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::GroupProperties.new(
  name: My resource,
  create_data_center: null,
  create_snapshot: null,
  reserve_ip: null,
  access_activity_log: null,
  create_pcc: null,
  s3_privilege: null,
  create_backup_unit: null,
  create_internet_access: null,
  create_k8s_cluster: null
)
```

