# GroupProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | A name of that resource | \[optional\] |
| **create\_data\_center** | **Boolean** | create data center privilege | \[optional\] |
| **create\_snapshot** | **Boolean** | create snapshot privilege | \[optional\] |
| **reserve\_ip** | **Boolean** | reserve ip block privilege | \[optional\] |
| **access\_activity\_log** | **Boolean** | activity log access privilege | \[optional\] |
| **create\_pcc** | **Boolean** | create pcc privilege | \[optional\] |
| **s3\_privilege** | **Boolean** | S3 privilege | \[optional\] |
| **create\_backup\_unit** | **Boolean** | create backup unit privilege | \[optional\] |
| **create\_internet\_access** | **Boolean** | create internet access privilege | \[optional\] |
| **create\_k8s\_cluster** | **Boolean** | create kubernetes cluster privilege | \[optional\] |

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

