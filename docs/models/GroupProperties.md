# GroupProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **access_activity_log** | **Boolean** | Activity log access privilege. | [optional] |

| **access_and_manage_certificates** | **Boolean** | Privilege for a group to access and manage certificates. | [optional] |

| **access_and_manage_dns** | **Boolean** | Privilege for a group to access and manage dns records. | [optional] |

| **access_and_manage_monitoring** | **Boolean** | Privilege for a group to access and manage monitoring related functionality (access metrics, CRUD on alarms, alarm-actions etc) using Monotoring-as-a-Service (MaaS). | [optional] |

| **create_backup_unit** | **Boolean** | Create backup unit privilege. | [optional] |

| **create_data_center** | **Boolean** | Create data center privilege. | [optional] |

| **create_flow_log** | **Boolean** | Create Flow Logs privilege. | [optional] |

| **create_internet_access** | **Boolean** | Create internet access privilege. | [optional] |

| **create_k8s_cluster** | **Boolean** | Create Kubernetes cluster privilege. | [optional] |

| **create_pcc** | **Boolean** | Create pcc privilege. | [optional] |

| **create_snapshot** | **Boolean** | Create snapshot privilege. | [optional] |

| **manage_d_baa_s** | **Boolean** | Privilege for a group to manage DBaaS related functionality. | [optional] |

| **manage_dataplatform** | **Boolean** | Privilege for a group to access and manage the Data Platform. | [optional] |

| **manage_registry** | **Boolean** | Privilege for group accessing container registry related functionality. | [optional] |

| **name** | **String** | The name of the resource. | [optional] |

| **reserve_ip** | **Boolean** | Reserve IP block privilege. | [optional] |

| **s3_privilege** | **Boolean** | S3 privilege. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::GroupProperties.new(
  access_activity_log: null,

  access_and_manage_certificates: null,

  access_and_manage_dns: null,

  access_and_manage_monitoring: null,

  create_backup_unit: null,

  create_data_center: null,

  create_flow_log: null,

  create_internet_access: null,

  create_k8s_cluster: null,

  create_pcc: null,

  create_snapshot: null,

  manage_d_baa_s: null,

  manage_dataplatform: null,

  manage_registry: null,

  name: My resource,

  reserve_ip: null,

  s3_privilege: null
)
```

