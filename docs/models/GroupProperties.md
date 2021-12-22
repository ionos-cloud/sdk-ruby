# GroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the  resource. | [optional] |
| **create_data_center** | **Boolean** | Create data center privilege. | [optional] |
| **create_snapshot** | **Boolean** | Create snapshot privilege. | [optional] |
| **reserve_ip** | **Boolean** | Reserve IP block privilege. | [optional] |
| **access_activity_log** | **Boolean** | Activity log access privilege. | [optional] |
| **create_pcc** | **Boolean** | Create pcc privilege. | [optional] |
| **s3_privilege** | **Boolean** | S3 privilege. | [optional] |
| **create_backup_unit** | **Boolean** | Create backup unit privilege. | [optional] |
| **create_internet_access** | **Boolean** | Create internet access privilege. | [optional] |
| **create_k8s_cluster** | **Boolean** | Create Kubernetes cluster privilege. | [optional] |
| **create_flow_log** | **Boolean** | Create Flow Logs privilege. | [optional] |
| **access_and_manage_monitoring** | **Boolean** | Privilege for a group to access and manage monitoring related functionality (access metrics, CRUD on alarms, alarm-actions etc) using Monotoring-as-a-Service (MaaS). | [optional] |
| **access_and_manage_certificates** | **Boolean** | Privilege for a group to access and manage certificates. | [optional] |

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
  create_k8s_cluster: null,
  create_flow_log: null,
  access_and_manage_monitoring: null,
  access_and_manage_certificates: null
)
```

