# Ionoscloud::KubernetesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**k8s_delete**](KubernetesApi.md#k8s_delete) | **DELETE** /k8s/{k8sClusterId} | Delete Kubernetes Cluster |
| [**k8s_find_by_cluster_id**](KubernetesApi.md#k8s_find_by_cluster_id) | **GET** /k8s/{k8sClusterId} | Retrieve Kubernetes Cluster |
| [**k8s_get**](KubernetesApi.md#k8s_get) | **GET** /k8s | List Kubernetes Clusters |
| [**k8s_kubeconfig_get**](KubernetesApi.md#k8s_kubeconfig_get) | **GET** /k8s/{k8sClusterId}/kubeconfig | Retrieve Kubernetes Configuration File |
| [**k8s_nodepools_delete**](KubernetesApi.md#k8s_nodepools_delete) | **DELETE** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Delete Kubernetes Node Pool |
| [**k8s_nodepools_find_by_id**](KubernetesApi.md#k8s_nodepools_find_by_id) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Retrieve Kubernetes Node Pool |
| [**k8s_nodepools_get**](KubernetesApi.md#k8s_nodepools_get) | **GET** /k8s/{k8sClusterId}/nodepools | List Kubernetes Node Pools |
| [**k8s_nodepools_nodes_delete**](KubernetesApi.md#k8s_nodepools_nodes_delete) | **DELETE** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId} | Delete Kubernetes node |
| [**k8s_nodepools_nodes_find_by_id**](KubernetesApi.md#k8s_nodepools_nodes_find_by_id) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId} | Retrieve Kubernetes node |
| [**k8s_nodepools_nodes_get**](KubernetesApi.md#k8s_nodepools_nodes_get) | **GET** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes | Retrieve Kubernetes nodes. |
| [**k8s_nodepools_nodes_replace_post**](KubernetesApi.md#k8s_nodepools_nodes_replace_post) | **POST** /k8s/{k8sClusterId}/nodepools/{nodepoolId}/nodes/{nodeId}/replace | Recreate the Kubernetes node |
| [**k8s_nodepools_post**](KubernetesApi.md#k8s_nodepools_post) | **POST** /k8s/{k8sClusterId}/nodepools | Create a Kubernetes Node Pool |
| [**k8s_nodepools_put**](KubernetesApi.md#k8s_nodepools_put) | **PUT** /k8s/{k8sClusterId}/nodepools/{nodepoolId} | Modify Kubernetes Node Pool |
| [**k8s_post**](KubernetesApi.md#k8s_post) | **POST** /k8s | Create Kubernetes Cluster |
| [**k8s_put**](KubernetesApi.md#k8s_put) | **PUT** /k8s/{k8sClusterId} | Modify Kubernetes Cluster |
| [**k8s_versions_compatibilities_get**](KubernetesApi.md#k8s_versions_compatibilities_get) | **GET** /k8s/versions/{clusterVersion}/compatibilities | Retrieves a list of available kubernetes versions for nodepools depending on the given kubernetes version running in the cluster. |
| [**k8s_versions_default_get**](KubernetesApi.md#k8s_versions_default_get) | **GET** /k8s/versions/default | Retrieve the current default kubernetes version for clusters and nodepools. |
| [**k8s_versions_get**](KubernetesApi.md#k8s_versions_get) | **GET** /k8s/versions | Retrieve available Kubernetes versions |


## k8s_delete

> Object k8s_delete(k8s_cluster_id, opts)

Delete Kubernetes Cluster

This will remove a Kubernetes Cluster.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete Kubernetes Cluster
  result = api_instance.k8s_delete(k8s_cluster_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_delete: #{e}"
end
```

#### Using the k8s_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> k8s_delete_with_http_info(k8s_cluster_id, opts)

```ruby
begin
  # Delete Kubernetes Cluster
  data, status_code, headers = api_instance.k8s_delete_with_http_info(k8s_cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_find_by_cluster_id

> <KubernetesCluster> k8s_find_by_cluster_id(k8s_cluster_id, opts)

Retrieve Kubernetes Cluster

This will retrieve a single Kubernetes Cluster.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve Kubernetes Cluster
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
  # Retrieve Kubernetes Cluster
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesCluster**](KubernetesCluster.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_get

> <KubernetesClusters> k8s_get(opts)

List Kubernetes Clusters

You can retrieve a list of all kubernetes clusters associated with a contract

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
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Kubernetes Clusters
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
  # List Kubernetes Clusters
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
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesClusters**](KubernetesClusters.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_kubeconfig_get

> <KubernetesConfig> k8s_kubeconfig_get(k8s_cluster_id, opts)

Retrieve Kubernetes Configuration File

You can retrieve kubernetes configuration file for the kubernetes cluster.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve Kubernetes Configuration File
  result = api_instance.k8s_kubeconfig_get(k8s_cluster_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_kubeconfig_get: #{e}"
end
```

#### Using the k8s_kubeconfig_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesConfig>, Integer, Hash)> k8s_kubeconfig_get_with_http_info(k8s_cluster_id, opts)

```ruby
begin
  # Retrieve Kubernetes Configuration File
  data, status_code, headers = api_instance.k8s_kubeconfig_get_with_http_info(k8s_cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesConfig>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_kubeconfig_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesConfig**](KubernetesConfig.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_delete

> Object k8s_nodepools_delete(k8s_cluster_id, nodepool_id, opts)

Delete Kubernetes Node Pool

This will remove a Kubernetes Node Pool.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete Kubernetes Node Pool
  result = api_instance.k8s_nodepools_delete(k8s_cluster_id, nodepool_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_delete: #{e}"
end
```

#### Using the k8s_nodepools_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> k8s_nodepools_delete_with_http_info(k8s_cluster_id, nodepool_id, opts)

```ruby
begin
  # Delete Kubernetes Node Pool
  data, status_code, headers = api_instance.k8s_nodepools_delete_with_http_info(k8s_cluster_id, nodepool_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_find_by_id

> <KubernetesNodePool> k8s_nodepools_find_by_id(k8s_cluster_id, nodepool_id, opts)

Retrieve Kubernetes Node Pool

You can retrieve a single Kubernetes Node Pool.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve Kubernetes Node Pool
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
  # Retrieve Kubernetes Node Pool
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesNodePool**](KubernetesNodePool.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_get

> <KubernetesNodePools> k8s_nodepools_get(k8s_cluster_id, opts)

List Kubernetes Node Pools

You can retrieve a list of all kubernetes node pools part of kubernetes cluster

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Kubernetes Node Pools
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
  # List Kubernetes Node Pools
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesNodePools**](KubernetesNodePools.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_delete

> Object k8s_nodepools_nodes_delete(k8s_cluster_id, nodepool_id, node_id, opts)

Delete Kubernetes node

This will remove a Kubernetes node.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
node_id = 'node_id_example' # String | The unique ID of the Kubernetes node
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete Kubernetes node
  result = api_instance.k8s_nodepools_nodes_delete(k8s_cluster_id, nodepool_id, node_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_delete: #{e}"
end
```

#### Using the k8s_nodepools_nodes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> k8s_nodepools_nodes_delete_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)

```ruby
begin
  # Delete Kubernetes node
  data, status_code, headers = api_instance.k8s_nodepools_nodes_delete_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **node_id** | **String** | The unique ID of the Kubernetes node |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_find_by_id

> <KubernetesNode> k8s_nodepools_nodes_find_by_id(k8s_cluster_id, nodepool_id, node_id, opts)

Retrieve Kubernetes node

You can retrieve a single Kubernetes Node.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
node_id = 'node_id_example' # String | The unique ID of the Kubernetes Node.
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve Kubernetes node
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
  # Retrieve Kubernetes node
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **node_id** | **String** | The unique ID of the Kubernetes Node. |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesNode**](KubernetesNode.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_get

> <KubernetesNodes> k8s_nodepools_nodes_get(k8s_cluster_id, nodepool_id, opts)

Retrieve Kubernetes nodes.

You can retrieve all nodes of Kubernetes Node Pool.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve Kubernetes nodes.
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
  # Retrieve Kubernetes nodes.
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesNodes**](KubernetesNodes.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_nodes_replace_post

> Object k8s_nodepools_nodes_replace_post(k8s_cluster_id, nodepool_id, node_id, opts)

Recreate the Kubernetes node

You can recreate a single Kubernetes Node.  Managed Kubernetes starts a process which based on the nodepool's template creates & configures a new node, waits for status \"ACTIVE\", and migrates all the pods from the faulty node, deleting it once empty. While this operation occurs, the nodepool will have an extra billable \"ACTIVE\" node.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
node_id = 'node_id_example' # String | The unique ID of the Kubernetes Node.
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Recreate the Kubernetes node
  result = api_instance.k8s_nodepools_nodes_replace_post(k8s_cluster_id, nodepool_id, node_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_replace_post: #{e}"
end
```

#### Using the k8s_nodepools_nodes_replace_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> k8s_nodepools_nodes_replace_post_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)

```ruby
begin
  # Recreate the Kubernetes node
  data, status_code, headers = api_instance.k8s_nodepools_nodes_replace_post_with_http_info(k8s_cluster_id, nodepool_id, node_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_nodes_replace_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **node_id** | **String** | The unique ID of the Kubernetes Node. |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_nodepools_post

> <KubernetesNodePool> k8s_nodepools_post(k8s_cluster_id, kubernetes_node_pool, opts)

Create a Kubernetes Node Pool

This will create a new Kubernetes Node Pool inside a Kubernetes Cluster.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
kubernetes_node_pool = Ionoscloud::KubernetesNodePool.new({properties: Ionoscloud::KubernetesNodePoolProperties.new({name: 'k8s-node-pool', datacenter_id: '1e072e52-2ed3-492f-b6b6-c6b116907521', node_count: 2, cpu_family: 'AMD_OPTERON', cores_count: 4, ram_size: 2048, availability_zone: 'AUTO', storage_type: 'HDD', storage_size: 100})}) # KubernetesNodePool | Details of Kubernetes Node Pool
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **kubernetes_node_pool** | [**KubernetesNodePool**](KubernetesNodePool.md) | Details of Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesNodePool**](KubernetesNodePool.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_nodepools_put

> <KubernetesNodePoolForPut> k8s_nodepools_put(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)

Modify Kubernetes Node Pool

This will modify the Kubernetes Node Pool.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
nodepool_id = 'nodepool_id_example' # String | The unique ID of the Kubernetes Node Pool
kubernetes_node_pool = Ionoscloud::KubernetesNodePool.new({properties: Ionoscloud::KubernetesNodePoolProperties.new({name: 'k8s-node-pool', datacenter_id: '1e072e52-2ed3-492f-b6b6-c6b116907521', node_count: 2, cpu_family: 'AMD_OPTERON', cores_count: 4, ram_size: 2048, availability_zone: 'AUTO', storage_type: 'HDD', storage_size: 100})}) # KubernetesNodePool | Details of the Kubernetes Node Pool
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify Kubernetes Node Pool
  result = api_instance.k8s_nodepools_put(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_put: #{e}"
end
```

#### Using the k8s_nodepools_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<KubernetesNodePoolForPut>, Integer, Hash)> k8s_nodepools_put_with_http_info(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)

```ruby
begin
  # Modify Kubernetes Node Pool
  data, status_code, headers = api_instance.k8s_nodepools_put_with_http_info(k8s_cluster_id, nodepool_id, kubernetes_node_pool, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <KubernetesNodePoolForPut>
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_nodepools_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **nodepool_id** | **String** | The unique ID of the Kubernetes Node Pool |  |
| **kubernetes_node_pool** | [**KubernetesNodePool**](KubernetesNodePool.md) | Details of the Kubernetes Node Pool |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesNodePoolForPut**](KubernetesNodePoolForPut.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_post

> <KubernetesCluster> k8s_post(kubernetes_cluster, opts)

Create Kubernetes Cluster

This will create a new Kubernetes Cluster.

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
kubernetes_cluster = Ionoscloud::KubernetesCluster.new({properties: Ionoscloud::KubernetesClusterProperties.new({name: 'k8s'})}) # KubernetesCluster | Properties of the Kubernetes Cluster
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create Kubernetes Cluster
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
  # Create Kubernetes Cluster
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
| **kubernetes_cluster** | [**KubernetesCluster**](KubernetesCluster.md) | Properties of the Kubernetes Cluster |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesCluster**](KubernetesCluster.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_put

> <KubernetesCluster> k8s_put(k8s_cluster_id, kubernetes_cluster, opts)

Modify Kubernetes Cluster

This will modify the Kubernetes Cluster.

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
k8s_cluster_id = 'k8s_cluster_id_example' # String | The unique ID of the Kubernetes Cluster
kubernetes_cluster = Ionoscloud::KubernetesCluster.new({properties: Ionoscloud::KubernetesClusterProperties.new({name: 'k8s'})}) # KubernetesCluster | Properties of the Kubernetes Cluster
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify Kubernetes Cluster
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
  # Modify Kubernetes Cluster
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
| **k8s_cluster_id** | **String** | The unique ID of the Kubernetes Cluster |  |
| **kubernetes_cluster** | [**KubernetesCluster**](KubernetesCluster.md) | Properties of the Kubernetes Cluster |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**KubernetesCluster**](KubernetesCluster.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## k8s_versions_compatibilities_get

> Array&lt;String&gt; k8s_versions_compatibilities_get(cluster_version)

Retrieves a list of available kubernetes versions for nodepools depending on the given kubernetes version running in the cluster.

You can retrieve a list of available kubernetes versions for nodepools depending on the given kubernetes version running in the cluster.

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
cluster_version = 'cluster_version_example' # String | 

begin
  # Retrieves a list of available kubernetes versions for nodepools depending on the given kubernetes version running in the cluster.
  result = api_instance.k8s_versions_compatibilities_get(cluster_version)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_versions_compatibilities_get: #{e}"
end
```

#### Using the k8s_versions_compatibilities_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> k8s_versions_compatibilities_get_with_http_info(cluster_version)

```ruby
begin
  # Retrieves a list of available kubernetes versions for nodepools depending on the given kubernetes version running in the cluster.
  data, status_code, headers = api_instance.k8s_versions_compatibilities_get_with_http_info(cluster_version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue Ionoscloud::ApiError => e
  puts "Error when calling KubernetesApi->k8s_versions_compatibilities_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_version** | **String** |  |  |

### Return type

**Array&lt;String&gt;**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_versions_default_get

> String k8s_versions_default_get

Retrieve the current default kubernetes version for clusters and nodepools.

You can retrieve the current default kubernetes version for clusters and nodepools.

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
  # Retrieve the current default kubernetes version for clusters and nodepools.
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
  # Retrieve the current default kubernetes version for clusters and nodepools.
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

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## k8s_versions_get

> Array&lt;String&gt; k8s_versions_get

Retrieve available Kubernetes versions

You can retrieve a list of available kubernetes versions

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
  # Retrieve available Kubernetes versions
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
  # Retrieve available Kubernetes versions
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

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

