# KubernetesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**k8s_delete**](KubernetesApi.md#k8s_delete) | **DELETE** /k8s/{k8sClusterId} | Delete Kubernetes clusters |
| [**k8s_find_by_cluster_id**](KubernetesApi.md#k8s_find_by_cluster_id) | **GET** /k8s/{k8sClusterId} | Retrieve Kubernetes clusters |
| [**k8s_get**](KubernetesApi.md#k8s_get) | **GET** /k8s | List Kubernetes clusters |
| [**k8s_kubeconfig_get**](KubernetesApi.md#k8s_kubeconfig_get) | **GET** /k8s/{k8sClusterId}/kubeconfig | Retrieve Kubernetes configuration files |
| [**k8s_nodepools_delete**](KubernetesApi.md#k8s_nodepools_delete) | **DELETE** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Delete Kubernetes node pools |
| [**k8s_nodepools_find_by_id**](KubernetesApi.md#k8s_nodepools_find_by_id) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Retrieve Kubernetes node pools |
| [**k8s_nodepools_get**](KubernetesApi.md#k8s_nodepools_get) | **GET** /k8s/{k8sClusterId}/nodepools | List Kubernetes node pools |
| [**k8s_nodepools_nodes_delete**](KubernetesApi.md#k8s_nodepools_nodes_delete) | **DELETE** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId} | Delete Kubernetes nodes |
| [**k8s_nodepools_nodes_find_by_id**](KubernetesApi.md#k8s_nodepools_nodes_find_by_id) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId} | Retrieve Kubernetes nodes |
| [**k8s_nodepools_nodes_get**](KubernetesApi.md#k8s_nodepools_nodes_get) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes | List Kubernetes nodes |
| [**k8s_nodepools_nodes_replace_post**](KubernetesApi.md#k8s_nodepools_nodes_replace_post) | **POST** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId}/replace | Recreate Kubernetes nodes |
| [**k8s_nodepools_post**](KubernetesApi.md#k8s_nodepools_post) | **POST** /k8s/{k8sClusterId}/nodepools | Create Kubernetes node pools |
| [**k8s_nodepools_put**](KubernetesApi.md#k8s_nodepools_put) | **PUT** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Modify Kubernetes node pools |
| [**k8s_post**](KubernetesApi.md#k8s_post) | **POST** /k8s | Create Kubernetes clusters |
| [**k8s_put**](KubernetesApi.md#k8s_put) | **PUT** /k8s/{k8sClusterId} | Modify Kubernetes clusters |
| [**k8s_versions_default_get**](KubernetesApi.md#k8s_versions_default_get) | **GET** /k8s/versions/default | Retrieve current default Kubernetes version |
| [**k8s_versions_get**](KubernetesApi.md#k8s_versions_get) | **GET** /k8s/versions | List Kubernetes versions |


## k8s_delete

> k8s_delete(k8s_cluster_id, opts)

Delete Kubernetes clusters

Delete the specified Kubernetes cluster.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete Kubernetes clusters
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
  # Delete Kubernetes clusters
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_find_by_cluster_id

> <KubernetesCluster> k8s_find_by_cluster_id(k8s_cluster_id, opts)

Retrieve Kubernetes clusters

Retrieve the specified Kubernetes cluster.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve Kubernetes clusters
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
  # Retrieve Kubernetes clusters
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes cluster. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesCluster**](../models/KubernetesCluster.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_get

> <KubernetesClusters> k8s_get(opts)

List Kubernetes clusters

List all available Kubernetes clusters.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Kubernetes clusters
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
  # List Kubernetes clusters
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesClusters**](../models/KubernetesClusters.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_kubeconfig_get

> String k8s_kubeconfig_get(k8s_cluster_id, opts)

Retrieve Kubernetes configuration files

Retrieve a configuration file for the specified Kubernetes cluster, in YAML or JSON format as defined in the Accept header; the default Accept header is application/yaml.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve Kubernetes configuration files
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
  # Retrieve Kubernetes configuration files
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

**String**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/yaml, application/x-yaml, application/json


## k8s_nodepools_delete

> k8s_nodepools_delete(k8s_cluster_id, nodepool_id, opts)

Delete Kubernetes node pools

Delete the specified Kubernetes node pool.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete Kubernetes node pools
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
  # Delete Kubernetes node pools
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_find_by_id

> <KubernetesNodePool> k8s_nodepools_find_by_id(k8s_cluster_id, nodepool_id, opts)

Retrieve Kubernetes node pools

Retrieve the specified Kubernetes node pool.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve Kubernetes node pools
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
  # Retrieve Kubernetes node pools
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePool**](../models/KubernetesNodePool.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_get

> <KubernetesNodePools> k8s_nodepools_get(k8s_cluster_id, opts)

List Kubernetes node pools

List all Kubernetes node pools, included the specified Kubernetes cluster.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Kubernetes node pools
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
  # List Kubernetes node pools
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePools**](../models/KubernetesNodePools.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_delete

> k8s_nodepools_nodes_delete(k8s_cluster_id, nodepool_id, node_id, opts)

Delete Kubernetes nodes

Delete the specified Kubernetes node.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete Kubernetes nodes
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
  # Delete Kubernetes nodes
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_find_by_id

> <KubernetesNode> k8s_nodepools_nodes_find_by_id(k8s_cluster_id, nodepool_id, node_id, opts)

Retrieve Kubernetes nodes

Retrieve the specified Kubernetes node.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve Kubernetes nodes
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
  # Retrieve Kubernetes nodes
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNode**](../models/KubernetesNode.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_get

> <KubernetesNodes> k8s_nodepools_nodes_get(k8s_cluster_id, nodepool_id, opts)

List Kubernetes nodes

List all the nodes, included in the specified Kubernetes node pool.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Kubernetes nodes
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
  # List Kubernetes nodes
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodes**](../models/KubernetesNodes.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_replace_post

> k8s_nodepools_nodes_replace_post(k8s_cluster_id, nodepool_id, node_id, opts)

Recreate Kubernetes nodes

Recreate the specified Kubernetes node.  A new node is created and configured by Managed Kubernetes, based on the node pool template. Once the status is  \"Active\", all the pods are migrated from the faulty node, which is then deleted once empty. During this operation, the node pool will have an additional billable  \"Active\" node.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Recreate Kubernetes nodes
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
  # Recreate Kubernetes nodes
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_post

> <KubernetesNodePool> k8s_nodepools_post(k8s_cluster_id, kubernetes_node_pool, opts)

Create Kubernetes node pools

Create a Kubernetes node pool inside the specified Kubernetes cluster.

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
kubernetes_node_pool = Ionoscloud::KubernetesNodePoolForPost.new({properties: Ionoscloud::KubernetesNodePoolPropertiesForPost.new({name: 'k8s-node-pool', datacenter_id: '1e072e52-2ed3-492f-b6b6-c6b116907521', node_count: 2, cpu_family: 'AMD_OPTERON', cores_count: 4, ram_size: 2048, availability_zone: 'AUTO', storage_type: 'HDD', storage_size: 100})}) # KubernetesNodePoolForPost | The Kubernetes node pool to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create Kubernetes node pools
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
  # Create Kubernetes node pools
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
| **kubernetes_node_pool** | [**KubernetesNodePoolForPost**](KubernetesNodePoolForPost.md) | The Kubernetes node pool to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePool**](../models/KubernetesNodePool.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_nodepools_put

> <KubernetesNodePool> k8s_nodepools_put(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)

Modify Kubernetes node pools

Modify the specified Kubernetes node pool.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify Kubernetes node pools
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
  # Modify Kubernetes node pools
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
| **kubernetes_node_pool** | [**KubernetesNodePoolForPut**](KubernetesNodePoolForPut.md) | Details of the Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesNodePool**](../models/KubernetesNodePool.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_post

> <KubernetesCluster> k8s_post(kubernetes_cluster, opts)

Create Kubernetes clusters

Create a Kubernetes cluster.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create Kubernetes clusters
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
  # Create Kubernetes clusters
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
| **kubernetes_cluster** | [**KubernetesClusterForPost**](KubernetesClusterForPost.md) | The Kubernetes cluster to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesCluster**](../models/KubernetesCluster.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_put

> <KubernetesCluster> k8s_put(k8s_cluster_id, kubernetes_cluster, opts)

Modify Kubernetes clusters

Modify the specified Kubernetes cluster.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify Kubernetes clusters
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
  # Modify Kubernetes clusters
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
| **kubernetes_cluster** | [**KubernetesClusterForPut**](KubernetesClusterForPut.md) | The modified Kubernetes cluster. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**KubernetesCluster**](../models/KubernetesCluster.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_versions_default_get

> String k8s_versions_default_get

Retrieve current default Kubernetes version

Retrieve current default Kubernetes version for clusters and nodepools.

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
  # Retrieve current default Kubernetes version
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
  # Retrieve current default Kubernetes version
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

List Kubernetes versions

List available Kubernetes versions.

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
  # List Kubernetes versions
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
  # List Kubernetes versions
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

