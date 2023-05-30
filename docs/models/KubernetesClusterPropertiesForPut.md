# KubernetesClusterPropertiesForPut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **api_subnet_allow_list** | **Array&lt;String&gt;** | Access to the K8s API server is restricted to these CIDRs. Intra-cluster traffic is not affected by this restriction. If no AllowList is specified, access is not limited. If an IP is specified without a subnet mask, the default value is 32 for IPv4 and 128 for IPv6. | [optional] |

| **k8s_version** | **String** | The Kubernetes version that the cluster is running. This limits which Kubernetes versions can run in a cluster&#39;s node pools. Also, not all Kubernetes versions are suitable upgrade targets for all earlier versions. | [optional] |

| **maintenance_window** | [**KubernetesMaintenanceWindow**](KubernetesMaintenanceWindow.md) |  | [optional] |

| **name** | **String** | A Kubernetes cluster name. Valid Kubernetes cluster name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. |  |

| **s3_buckets** | [**Array&lt;S3Bucket&gt;**](S3Bucket.md) | List of S3 buckets configured for K8s usage. At the moment, it contains only one S3 bucket that is used to store K8s API audit logs. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesClusterPropertiesForPut.new(
  api_subnet_allow_list: [1.2.3.4/32, 2002::1234:abcd:ffff:c0a8:101/64, 1.2.3.4, 2002::1234:abcd:ffff:c0a8:101],

  k8s_version: 1.15.4,

  maintenance_window: null,

  name: k8s,

  s3_buckets: null
)
```

