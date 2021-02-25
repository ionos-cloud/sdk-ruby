# DatacenterElementMetadata

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **etag** | **String** | Resource's Entity Tag as defined in [http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html\#sec3.11](http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.11) . Entity Tag is also added as an 'ETag response header to requests which don't use 'depth' parameter. | \[optional\]\[readonly\] |
| **created\_date** | **Time** | The last time the resource was created | \[optional\]\[readonly\] |
| **created\_by** | **String** | The user who created the resource. | \[optional\]\[readonly\] |
| **created\_by\_user\_id** | **String** | The user id of the user who has created the resource. | \[optional\]\[readonly\] |
| **last\_modified\_date** | **Time** | The last time the resource has been modified | \[optional\]\[readonly\] |
| **last\_modified\_by** | **String** | The user who last modified the resource. | \[optional\]\[readonly\] |
| **last\_modified\_by\_user\_id** | **String** | The user id of the user who has last modified the resource. | \[optional\]\[readonly\] |
| **state** | **String** | State of the resource. _AVAILABLE_ There are no pending modification requests for this item; _BUSY_ There is at least one modification request pending and all following requests will be queued; _INACTIVE_ Resource has been de-provisioned; _DEPLOYING_ Resource state DEPLOYING - relevant for Kubernetes cluster/nodepool; _ACTIVE_ Resource state ACTIVE - relevant for Kubernetes cluster/nodepool; _FAILED_ Resource state FAILED - relevant for Kubernetes cluster/nodepool; _SUSPENDED_ Resource state SUSPENDED - relevant for Kubernetes cluster/nodepool; _FAILED\_SUSPENDED_ Resource state FAILED\_SUSPENDED - relevant for Kubernetes cluster; _UPDATING_ Resource state UPDATING - relevant for Kubernetes cluster/nodepool; _FAILED\_UPDATING_ Resource state FAILED\_UPDATING - relevant for Kubernetes cluster/nodepool; _DESTROYING_ Resource state DESTROYING - relevant for Kubernetes cluster; _FAILED\_DESTROYING_ Resource state FAILED\_DESTROYING - relevant for Kubernetes cluster/nodepool; _TERMINATED_ Resource state TERMINATED - relevant for Kubernetes cluster/nodepool | \[optional\]\[readonly\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::DatacenterElementMetadata.new(
  etag: 45480eb3fbfc31f1d916c1eaa4abdcc3,
  created_date: 2015-12-04T14:34:09.809Z,
  created_by: user@example.com,
  created_by_user_id: user@example.com,
  last_modified_date: 2015-12-04T14:34:09.809Z,
  last_modified_by: user@example.com,
  last_modified_by_user_id: 63cef532-26fe-4a64-a4e0-de7c8a506c90,
  state: AVAILABLE
)
```

