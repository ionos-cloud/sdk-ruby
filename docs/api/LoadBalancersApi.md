# LoadBalancersApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_loadbalancers_balancednics_delete**](LoadBalancersApi.md#datacenters_loadbalancers_balancednics_delete) | **DELETE** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics/{nicId} | Detach a nic from loadbalancer |
| [**datacenters_loadbalancers_balancednics_find_by_nic_id**](LoadBalancersApi.md#datacenters_loadbalancers_balancednics_find_by_nic_id) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics/{nicId} | Retrieve a network interface attached to Load Balancer |
| [**datacenters_loadbalancers_balancednics_get**](LoadBalancersApi.md#datacenters_loadbalancers_balancednics_get) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics | List Load Balancer balaced NICs |
| [**datacenters_loadbalancers_balancednics_post**](LoadBalancersApi.md#datacenters_loadbalancers_balancednics_post) | **POST** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics | Attach a nic to Load Balancer |
| [**datacenters_loadbalancers_delete**](LoadBalancersApi.md#datacenters_loadbalancers_delete) | **DELETE** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Delete a Loadbalancer. |
| [**datacenters_loadbalancers_find_by_id**](LoadBalancersApi.md#datacenters_loadbalancers_find_by_id) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Retrieve a loadbalancer |
| [**datacenters_loadbalancers_get**](LoadBalancersApi.md#datacenters_loadbalancers_get) | **GET** /datacenters/{datacenterId}/loadbalancers | List Load Balancers |
| [**datacenters_loadbalancers_patch**](LoadBalancersApi.md#datacenters_loadbalancers_patch) | **PATCH** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Partially modify a Loadbalancer |
| [**datacenters_loadbalancers_post**](LoadBalancersApi.md#datacenters_loadbalancers_post) | **POST** /datacenters/{datacenterId}/loadbalancers | Create a Load Balancer |
| [**datacenters_loadbalancers_put**](LoadBalancersApi.md#datacenters_loadbalancers_put) | **PUT** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Modify a Load Balancer |


## datacenters_loadbalancers_balancednics_delete

> datacenters_loadbalancers_balancednics_delete(datacenter_id, loadbalancer_id, nic_id, opts)

Detach a nic from loadbalancer

This will remove a network interface from load balancer.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Detach a nic from loadbalancer
  api_instance.datacenters_loadbalancers_balancednics_delete(datacenter_id, loadbalancer_id, nic_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_delete: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_loadbalancers_balancednics_delete_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)

```ruby
begin
  # Detach a nic from loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_delete_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
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


## datacenters_loadbalancers_balancednics_find_by_nic_id

> <Nic> datacenters_loadbalancers_balancednics_find_by_nic_id(datacenter_id, loadbalancer_id, nic_id, opts)

Retrieve a network interface attached to Load Balancer

This will retrieve the properties of an attached network interface.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a network interface attached to Load Balancer
  result = api_instance.datacenters_loadbalancers_balancednics_find_by_nic_id(datacenter_id, loadbalancer_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_find_by_nic_id: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)

```ruby
begin
  # Retrieve a network interface attached to Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Nic**](Nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_balancednics_get

> <BalancedNics> datacenters_loadbalancers_balancednics_get(datacenter_id, loadbalancer_id, opts)

List Load Balancer balaced NICs

You can retrieve a list of nics attached to a load balancer.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Load Balancer balaced NICs
  result = api_instance.datacenters_loadbalancers_balancednics_get(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_get: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalancedNics>, Integer, Hash)> datacenters_loadbalancers_balancednics_get_with_http_info(datacenter_id, loadbalancer_id, opts)

```ruby
begin
  # List Load Balancer balaced NICs
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_get_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalancedNics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BalancedNics**](BalancedNics.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_balancednics_post

> <Nic> datacenters_loadbalancers_balancednics_post(datacenter_id, loadbalancer_id, nic, opts)

Attach a nic to Load Balancer

This will attach a pre-existing nic to a load balancer.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Nic id to be attached
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Attach a nic to Load Balancer
  result = api_instance.datacenters_loadbalancers_balancednics_post(datacenter_id, loadbalancer_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_post: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_loadbalancers_balancednics_post_with_http_info(datacenter_id, loadbalancer_id, nic, opts)

```ruby
begin
  # Attach a nic to Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_post_with_http_info(datacenter_id, loadbalancer_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_balancednics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **nic** | [**Nic**](Nic.md) | Nic id to be attached |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Nic**](Nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_loadbalancers_delete

> datacenters_loadbalancers_delete(datacenter_id, loadbalancer_id, opts)

Delete a Loadbalancer.

Removes the specified load balancer.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Loadbalancer.
  api_instance.datacenters_loadbalancers_delete(datacenter_id, loadbalancer_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_delete: #{e}"
end
```

#### Using the datacenters_loadbalancers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_loadbalancers_delete_with_http_info(datacenter_id, loadbalancer_id, opts)

```ruby
begin
  # Delete a Loadbalancer.
  data, status_code, headers = api_instance.datacenters_loadbalancers_delete_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
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


## datacenters_loadbalancers_find_by_id

> <Loadbalancer> datacenters_loadbalancers_find_by_id(datacenter_id, loadbalancer_id, opts)

Retrieve a loadbalancer

Retrieves the attributes of a given load balancer.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a loadbalancer
  result = api_instance.datacenters_loadbalancers_find_by_id(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_find_by_id: #{e}"
end
```

#### Using the datacenters_loadbalancers_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Loadbalancer>, Integer, Hash)> datacenters_loadbalancers_find_by_id_with_http_info(datacenter_id, loadbalancer_id, opts)

```ruby
begin
  # Retrieve a loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_find_by_id_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Loadbalancer**](Loadbalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_get

> <Loadbalancers> datacenters_loadbalancers_get(datacenter_id, opts)

List Load Balancers

Retrieve a list of Load Balancers within the datacenter.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List Load Balancers
  result = api_instance.datacenters_loadbalancers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_get: #{e}"
end
```

#### Using the datacenters_loadbalancers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Loadbalancers>, Integer, Hash)> datacenters_loadbalancers_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List Load Balancers
  data, status_code, headers = api_instance.datacenters_loadbalancers_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**Loadbalancers**](Loadbalancers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_patch

> <Loadbalancer> datacenters_loadbalancers_patch(datacenter_id, loadbalancer_id, loadbalancer, opts)

Partially modify a Loadbalancer

You can use update attributes of a resource.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
loadbalancer = Ionoscloud::LoadbalancerProperties.new # LoadbalancerProperties | Modified Loadbalancer
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify a Loadbalancer
  result = api_instance.datacenters_loadbalancers_patch(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_patch: #{e}"
end
```

#### Using the datacenters_loadbalancers_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Loadbalancer>, Integer, Hash)> datacenters_loadbalancers_patch_with_http_info(datacenter_id, loadbalancer_id, loadbalancer, opts)

```ruby
begin
  # Partially modify a Loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_patch_with_http_info(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **loadbalancer** | [**LoadbalancerProperties**](LoadbalancerProperties.md) | Modified Loadbalancer |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Loadbalancer**](Loadbalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_loadbalancers_post

> <Loadbalancer> datacenters_loadbalancers_post(datacenter_id, loadbalancer, opts)

Create a Load Balancer

Creates a Loadbalancer within the datacenter.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer = Ionoscloud::Loadbalancer.new({properties: Ionoscloud::LoadbalancerProperties.new}) # Loadbalancer | Loadbalancer to be created
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create a Load Balancer
  result = api_instance.datacenters_loadbalancers_post(datacenter_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_post: #{e}"
end
```

#### Using the datacenters_loadbalancers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Loadbalancer>, Integer, Hash)> datacenters_loadbalancers_post_with_http_info(datacenter_id, loadbalancer, opts)

```ruby
begin
  # Create a Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_post_with_http_info(datacenter_id, loadbalancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer** | [**Loadbalancer**](Loadbalancer.md) | Loadbalancer to be created |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Loadbalancer**](Loadbalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_loadbalancers_put

> <Loadbalancer> datacenters_loadbalancers_put(datacenter_id, loadbalancer_id, loadbalancer, opts)

Modify a Load Balancer

You can use update attributes of a resource.

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

api_instance = Ionoscloud::LoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
loadbalancer = Ionoscloud::Loadbalancer.new({properties: Ionoscloud::LoadbalancerProperties.new}) # Loadbalancer | Modified Loadbalancer
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Load Balancer
  result = api_instance.datacenters_loadbalancers_put(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_put: #{e}"
end
```

#### Using the datacenters_loadbalancers_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Loadbalancer>, Integer, Hash)> datacenters_loadbalancers_put_with_http_info(datacenter_id, loadbalancer_id, loadbalancer, opts)

```ruby
begin
  # Modify a Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_put_with_http_info(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancersApi->datacenters_loadbalancers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **loadbalancer** | [**Loadbalancer**](Loadbalancer.md) | Modified Loadbalancer |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Loadbalancer**](Loadbalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

