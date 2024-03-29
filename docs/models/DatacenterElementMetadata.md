# DatacenterElementMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **created_by** | **String** | The user who created the resource. | [optional][readonly] |

| **created_by_user_id** | **String** | The unique ID of the user who created the resource. | [optional][readonly] |

| **created_date** | **Time** | The last time the resource was created. | [optional][readonly] |

| **etag** | **String** | Resource&#39;s Entity Tag as defined in http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11  Entity Tag is also added as an &#39;ETag response header to requests which don&#39;t use &#39;depth&#39; parameter.  | [optional][readonly] |

| **last_modified_by** | **String** | The user who last modified the resource. | [optional][readonly] |

| **last_modified_by_user_id** | **String** | The unique ID of the user who last modified the resource. | [optional][readonly] |

| **last_modified_date** | **Time** | The last time the resource was modified. | [optional][readonly] |

| **state** | **String** | State of the resource. *AVAILABLE* There are no pending modification requests for this item; *BUSY* There is at least one modification request pending and all following requests will be queued; *INACTIVE* Resource has been de-provisioned; *DEPLOYING* Resource state DEPLOYING - relevant for Kubernetes cluster/nodepool; *ACTIVE* Resource state ACTIVE - relevant for Kubernetes cluster/nodepool; *FAILED* Resource state FAILED - relevant for Kubernetes cluster/nodepool; *SUSPENDED* Resource state SUSPENDED - relevant for Kubernetes cluster/nodepool; *FAILED_SUSPENDED* Resource state FAILED_SUSPENDED - relevant for Kubernetes cluster; *UPDATING* Resource state UPDATING - relevant for Kubernetes cluster/nodepool; *FAILED_UPDATING* Resource state FAILED_UPDATING - relevant for Kubernetes cluster/nodepool; *DESTROYING* Resource state DESTROYING - relevant for Kubernetes cluster; *FAILED_DESTROYING* Resource state FAILED_DESTROYING - relevant for Kubernetes cluster/nodepool; *TERMINATED* Resource state TERMINATED - relevant for Kubernetes cluster/nodepool; *HIBERNATING* Resource state HIBERNATING - relevant for Kubernetes cluster/nodepool; *FAILED_HIBERNATING* Resource state FAILED_HIBERNATING - relevant for Kubernetes cluster/nodepool; *MAINTENANCE* Resource state MAINTENANCE - relevant for Kubernetes cluster/nodepool; *FAILED_HIBERNATING* Resource state FAILED_HIBERNATING - relevant for Kubernetes cluster/nodepool. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::DatacenterElementMetadata.new(
  created_by: user@example.com,

  created_by_user_id: user@example.com,

  created_date: 2015-12-04T14:34:09.809Z,

  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,

  last_modified_by: user@example.com,

  last_modified_by_user_id: 63cef532-26fe-4a64-a4e0-de7c8a506c90,

  last_modified_date: 2015-12-04T14:34:09.809Z,

  state: AVAILABLE
)
```

