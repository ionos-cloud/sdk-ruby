# KubernetesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**k8s_delete**](KubernetesApi.md#k8s_delete) | **DELETE** /k8s/{k8sClusterId} | Delete a Kubernetes Cluster by ID |
| [**k8s_find_by_cluster_id**](KubernetesApi.md#k8s_find_by_cluster_id) | **GET** /k8s/{k8sClusterId} | Get a Kubernetes Cluster by ID |
| [**k8s_get**](KubernetesApi.md#k8s_get) | **GET** /k8s | Get Kubernetes Clusters |
| [**k8s_kubeconfig_get**](KubernetesApi.md#k8s_kubeconfig_get) | **GET** /k8s/{k8sClusterId}/kubeconfig | Get Kubernetes Configuration File |
| [**k8s_nodepools_delete**](KubernetesApi.md#k8s_nodepools_delete) | **DELETE** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Delete a Kubernetes Node Pool by ID |
| [**k8s_nodepools_find_by_id**](KubernetesApi.md#k8s_nodepools_find_by_id) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Get a Kubernetes Node Pool by ID |
| [**k8s_nodepools_get**](KubernetesApi.md#k8s_nodepools_get) | **GET** /k8s/{k8sClusterId}/nodepools | Get Kubernetes Node Pools |
| [**k8s_nodepools_nodes_delete**](KubernetesApi.md#k8s_nodepools_nodes_delete) | **DELETE** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId} | Delete a Kubernetes Node by ID |
| [**k8s_nodepools_nodes_find_by_id**](KubernetesApi.md#k8s_nodepools_nodes_find_by_id) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId} | Get Kubernetes Node by ID |
| [**k8s_nodepools_nodes_get**](KubernetesApi.md#k8s_nodepools_nodes_get) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes | Get Kubernetes Nodes |
| [**k8s_nodepools_nodes_replace_post**](KubernetesApi.md#k8s_nodepools_nodes_replace_post) | **POST** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId}/replace | Recreate a Kubernetes Node by ID |
| [**k8s_nodepools_post**](KubernetesApi.md#k8s_nodepools_post) | **POST** /k8s/{k8sClusterId}/nodepools | Create a Kubernetes Node Pool |
| [**k8s_nodepools_put**](KubernetesApi.md#k8s_nodepools_put) | **PUT** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Modify a Kubernetes Node Pool by ID |
| [**k8s_post**](KubernetesApi.md#k8s_post) | **POST** /k8s | Create a Kubernetes Cluster |
| [**k8s_put**](KubernetesApi.md#k8s_put) | **PUT** /k8s/{k8sClusterId} | Modify a Kubernetes Cluster by ID |
| [**k8s_versions_default_get**](KubernetesApi.md#k8s_versions_default_get) | **GET** /k8s/versions/default | Get Default Kubernetes Version |
| [**k8s_versions_get**](KubernetesApi.md#k8s_versions_get) | **GET** /k8s/versions | Get Kubernetes Versions |


## k8s_delete

> k8s_delete(k8s_cluster_id, opts)

Delete a Kubernetes Cluster by ID

Deletes the K8s cluster specified  by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete a Kubernetes Cluster by ID
  api_instance.k8s_delete(k8s_cluster_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_delete: #{e}"
end
```

#### Using the k8s_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> k8s_delete_with_http_info(k8s_cluster_id, opts)

```ruby
begin
  # Delete a Kubernetes Cluster by ID
  data, status_code, headers = api_instance.k8s_delete_with_http_info(k8s_cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_find_by_cluster_id

> <KubernetesCluster> k8s_find_by_cluster_id(k8s_cluster_id, opts)

Get a Kubernetes Cluster by ID

Retrieves the K8s cluster specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the K8s cluster to be retrieved.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get a Kubernetes Cluster by ID
  result = api_instance.k8s_find_by_cluster_id(k8s_cluster_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_find_by_cluster_id: #{e}"
end
```

#### Using the k8s_find_by_cluster_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesCluster>, Integer, Hash)> k8s_find_by_cluster_id_with_http_info(k8s_cluster_id, opts)

```ruby
begin
  # Get a Kubernetes Cluster by ID
  data, status_code, headers = api_instance.k8s_find_by_cluster_id_with_http_info(k8s_cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesCluster>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_find_by_cluster_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the K8s cluster to be retrieved. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesCluster**](../models/KubernetesCluster.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_get

> <KubernetesClusters> k8s_get(opts)

Get Kubernetes Clusters

Retrieves a list of all K8s clusters provisioned under your account.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Kubernetes Clusters
  result = api_instance.k8s_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_get: #{e}"
end
```

#### Using the k8s_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesClusters>, Integer, Hash)> k8s_get_with_http_info(opts)

```ruby
begin
  # Get Kubernetes Clusters
  data, status_code, headers = api_instance.k8s_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesClusters>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesClusters**](../models/KubernetesClusters.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_kubeconfig_get

> String k8s_kubeconfig_get(k8s_cluster_id, opts)

Get Kubernetes Configuration File

Retrieves the configuration file for the specified K8s cluster. You can define the format (YAML or JSON) of the returned file in the Accept header. By default, 'application/yaml' is specified.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Kubernetes Configuration File
  result = api_instance.k8s_kubeconfig_get(k8s_cluster_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_kubeconfig_get: #{e}"
end
```

#### Using the k8s_kubeconfig_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> k8s_kubeconfig_get_with_http_info(k8s_cluster_id, opts)

```ruby
begin
  # Get Kubernetes Configuration File
  data, status_code, headers = api_instance.k8s_kubeconfig_get_with_http_info(k8s_cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_kubeconfig_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

**String**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/yaml, application/x-yaml, application/json


## k8s_nodepools_delete

> k8s_nodepools_delete(k8s_cluster_id, nodepool_id, opts)

Delete a Kubernetes Node Pool by ID

Deletes the K8s node pool specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete a Kubernetes Node Pool by ID
  api_instance.k8s_nodepools_delete(k8s_cluster_id, nodepool_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_delete: #{e}"
end
```

#### Using the k8s_nodepools_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> k8s_nodepools_delete_with_http_info(k8s_cluster_id, nodepool_id, opts)

```ruby
begin
  # Delete a Kubernetes Node Pool by ID
  data, status_code, headers = api_instance.k8s_nodepools_delete_with_http_info(k8s_cluster_id, nodepool_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_find_by_id

> <KubernetesNodePool> k8s_nodepools_find_by_id(k8s_cluster_id, nodepool_id, opts)

Get a Kubernetes Node Pool by ID

Retrieves the K8s node pool specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get a Kubernetes Node Pool by ID
  result = api_instance.k8s_nodepools_find_by_id(k8s_cluster_id, nodepool_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_find_by_id: #{e}"
end
```

#### Using the k8s_nodepools_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNodePool>, Integer, Hash)> k8s_nodepools_find_by_id_with_http_info(k8s_cluster_id, nodepool_id, opts)

```ruby
begin
  # Get a Kubernetes Node Pool by ID
  data, status_code, headers = api_instance.k8s_nodepools_find_by_id_with_http_info(k8s_cluster_id, nodepool_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNodePool>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePool**](../models/KubernetesNodePool.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_get

> <KubernetesNodePools> k8s_nodepools_get(k8s_cluster_id, opts)

Get Kubernetes Node Pools

Retrieves a list of K8s node pools of a cluster specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Kubernetes Node Pools
  result = api_instance.k8s_nodepools_get(k8s_cluster_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_get: #{e}"
end
```

#### Using the k8s_nodepools_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNodePools>, Integer, Hash)> k8s_nodepools_get_with_http_info(k8s_cluster_id, opts)

```ruby
begin
  # Get Kubernetes Node Pools
  data, status_code, headers = api_instance.k8s_nodepools_get_with_http_info(k8s_cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNodePools>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePools**](../models/KubernetesNodePools.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_delete

> k8s_nodepools_nodes_delete(k8s_cluster_id, nodepool_id, node_id, opts)

Delete a Kubernetes Node by ID

Deletes the K8s node specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
node_id = 'node_id_example' # String | The unique ID of the Kubernetes node.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete a Kubernetes Node by ID
  api_instance.k8s_nodepools_nodes_delete(k8s_cluster_id, nodepool_id, node_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_delete: #{e}"
end
```

#### Using the k8s_nodepools_nodes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> k8s_nodepools_nodes_delete_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)

```ruby
begin
  # Delete a Kubernetes Node by ID
  data, status_code, headers = api_instance.k8s_nodepools_nodes_delete_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **node_id** | **String** | The unique ID of the Kubernetes node. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_find_by_id

> <KubernetesNode> k8s_nodepools_nodes_find_by_id(k8s_cluster_id, nodepool_id, node_id, opts)

Get Kubernetes Node by ID

Retrieves the K8s node specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
node_id = 'node_id_example' # String | The unique ID of the Kubernetes node.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Kubernetes Node by ID
  result = api_instance.k8s_nodepools_nodes_find_by_id(k8s_cluster_id, nodepool_id, node_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_find_by_id: #{e}"
end
```

#### Using the k8s_nodepools_nodes_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNode>, Integer, Hash)> k8s_nodepools_nodes_find_by_id_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)

```ruby
begin
  # Get Kubernetes Node by ID
  data, status_code, headers = api_instance.k8s_nodepools_nodes_find_by_id_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNode>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **node_id** | **String** | The unique ID of the Kubernetes node. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNode**](../models/KubernetesNode.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_get

> <KubernetesNodes> k8s_nodepools_nodes_get(k8s_cluster_id, nodepool_id, opts)

Get Kubernetes Nodes

Retrieves the list of all K8s nodes of the specified node pool.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Kubernetes Nodes
  result = api_instance.k8s_nodepools_nodes_get(k8s_cluster_id, nodepool_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_get: #{e}"
end
```

#### Using the k8s_nodepools_nodes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNodes>, Integer, Hash)> k8s_nodepools_nodes_get_with_http_info(k8s_cluster_id, nodepool_id, opts)

```ruby
begin
  # Get Kubernetes Nodes
  data, status_code, headers = api_instance.k8s_nodepools_nodes_get_with_http_info(k8s_cluster_id, nodepool_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNodes>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodes**](../models/KubernetesNodes.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_replace_post

> k8s_nodepools_nodes_replace_post(k8s_cluster_id, nodepool_id, node_id, opts)

Recreate a Kubernetes Node by ID

Recreates the K8s node specified by its ID.  If a node becomes unusable, Managed Kubernetes allows you to recreate it with a configuration based on the node pool template. Once the status is 'Active,' all the pods from the failed node will be migrated to the new node. The node pool has an additional billable 'active' node during this process.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
node_id = 'node_id_example' # String | The unique ID of the Kubernetes node.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Recreate a Kubernetes Node by ID
  api_instance.k8s_nodepools_nodes_replace_post(k8s_cluster_id, nodepool_id, node_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_replace_post: #{e}"
end
```

#### Using the k8s_nodepools_nodes_replace_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> k8s_nodepools_nodes_replace_post_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)

```ruby
begin
  # Recreate a Kubernetes Node by ID
  data, status_code, headers = api_instance.k8s_nodepools_nodes_replace_post_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_replace_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **node_id** | **String** | The unique ID of the Kubernetes node. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_post

> <KubernetesNodePool> k8s_nodepools_post(k8s_cluster_id, kubernetes_node_pool, opts)

Create a Kubernetes Node Pool

Creates a node pool inside the specified K8s cluster.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
kubernetes_node_pool = Ionoscloud::KubernetesNodePoolForPost.new({properties: Ionoscloud::KubernetesNodePoolPropertiesForPost.new({availability_zone: 'AUTO', cores_count: 4, cpu_family: 'AMD_OPTERON', datacenter_id: '1e072e52-2ed3-492f-b6b6-c6b116907521', name: 'K8s-node-pool', node_count: 2, ram_size: 2048, storage_size: 100, storage_type: 'HDD'})}) # KubernetesNodePoolForPost | The Kubernetes node pool to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Kubernetes Node Pool
  result = api_instance.k8s_nodepools_post(k8s_cluster_id, kubernetes_node_pool, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_post: #{e}"
end
```

#### Using the k8s_nodepools_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNodePool>, Integer, Hash)> k8s_nodepools_post_with_http_info(k8s_cluster_id, kubernetes_node_pool, opts)

```ruby
begin
  # Create a Kubernetes Node Pool
  data, status_code, headers = api_instance.k8s_nodepools_post_with_http_info(k8s_cluster_id, kubernetes_node_pool, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNodePool>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **kubernetes_node_pool** | [**KubernetesNodePoolForPost**](../models/KubernetesNodePoolForPost.md) | The Kubernetes node pool to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePool**](../models/KubernetesNodePool.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_nodepools_put

> <KubernetesNodePool> k8s_nodepools_put(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)

Modify a Kubernetes Node Pool by ID

Modifies the K8s node pool specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes node pool.
kubernetes_node_pool = Ionoscloud::KubernetesNodePoolForPut.new({properties: Ionoscloud::KubernetesNodePoolPropertiesForPut.new({node_count: 2})}) # KubernetesNodePoolForPut | Details of the Kubernetes Node Pool
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Kubernetes Node Pool by ID
  result = api_instance.k8s_nodepools_put(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_put: #{e}"
end
```

#### Using the k8s_nodepools_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNodePool>, Integer, Hash)> k8s_nodepools_put_with_http_info(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)

```ruby
begin
  # Modify a Kubernetes Node Pool by ID
  data, status_code, headers = api_instance.k8s_nodepools_put_with_http_info(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNodePool>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes node pool. |  |
| **kubernetes_node_pool** | [**KubernetesNodePoolForPut**](../models/KubernetesNodePoolForPut.md) | Details of the Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePool**](../models/KubernetesNodePool.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_post

> <KubernetesCluster> k8s_post(kubernetes_cluster, opts)

Create a Kubernetes Cluster

Creates a K8s cluster provisioned under your account.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
kubernetes_cluster = Ionoscloud::KubernetesClusterForPost.new({properties: Ionoscloud::KubernetesClusterPropertiesForPost.new({name: 'k8s'})}) # KubernetesClusterForPost | The Kubernetes cluster to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Kubernetes Cluster
  result = api_instance.k8s_post(kubernetes_cluster, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_post: #{e}"
end
```

#### Using the k8s_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesCluster>, Integer, Hash)> k8s_post_with_http_info(kubernetes_cluster, opts)

```ruby
begin
  # Create a Kubernetes Cluster
  data, status_code, headers = api_instance.k8s_post_with_http_info(kubernetes_cluster, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesCluster>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubernetes_cluster** | [**KubernetesClusterForPost**](../models/KubernetesClusterForPost.md) | The Kubernetes cluster to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesCluster**](../models/KubernetesCluster.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_put

> <KubernetesCluster> k8s_put(k8s_cluster_id, kubernetes_cluster, opts)

Modify a Kubernetes Cluster by ID

Modifies the K8s cluster specified by its ID.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes cluster.
kubernetes_cluster = Ionoscloud::KubernetesClusterForPut.new({properties: Ionoscloud::KubernetesClusterPropertiesForPut.new({name: 'k8s'})}) # KubernetesClusterForPut | The modified Kubernetes cluster.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Kubernetes Cluster by ID
  result = api_instance.k8s_put(k8s_cluster_id, kubernetes_cluster, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_put: #{e}"
end
```

#### Using the k8s_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesCluster>, Integer, Hash)> k8s_put_with_http_info(k8s_cluster_id, kubernetes_cluster, opts)

```ruby
begin
  # Modify a Kubernetes Cluster by ID
  data, status_code, headers = api_instance.k8s_put_with_http_info(k8s_cluster_id, kubernetes_cluster, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesCluster>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **kubernetes_cluster** | [**KubernetesClusterForPut**](../models/KubernetesClusterForPut.md) | The modified Kubernetes cluster. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesCluster**](../models/KubernetesCluster.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_versions_default_get

> String k8s_versions_default_get

Get Default Kubernetes Version

Retrieves the current default K8s version to be used by the clusters and node pools.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new

begin
  # Get Default Kubernetes Version
  result = api_instance.k8s_versions_default_get
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_versions_default_get: #{e}"
end
```

#### Using the k8s_versions_default_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> k8s_versions_default_get_with_http_info

```ruby
begin
  # Get Default Kubernetes Version
  data, status_code, headers = api_instance.k8s_versions_default_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_versions_default_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_versions_get

> Array&lt;String&gt; k8s_versions_get

Get Kubernetes Versions

Lists available K8s versions.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::KubernetesApi.new

begin
  # Get Kubernetes Versions
  result = api_instance.k8s_versions_get
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_versions_get: #{e}"
end
```

#### Using the k8s_versions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> k8s_versions_get_with_http_info

```ruby
begin
  # Get Kubernetes Versions
  data, status_code, headers = api_instance.k8s_versions_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_versions_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

