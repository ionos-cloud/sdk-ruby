# LoadBalancerApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_loadbalancers_balancednics_delete**](LoadBalancerApi.md#datacenters_loadbalancers_balancednics_delete) | **DELETE** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics/{nicId} | Detach a nic from loadbalancer |
| [**datacenters_loadbalancers_balancednics_find_by_nic_id**](LoadBalancerApi.md#datacenters_loadbalancers_balancednics_find_by_nic_id) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics/{nicId} | Retrieve a nic attached to Load Balancer |
| [**datacenters_loadbalancers_balancednics_get**](LoadBalancerApi.md#datacenters_loadbalancers_balancednics_get) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics | List Load Balancer Members  |
| [**datacenters_loadbalancers_balancednics_post**](LoadBalancerApi.md#datacenters_loadbalancers_balancednics_post) | **POST** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics | Attach a nic to Load Balancer |
| [**datacenters_loadbalancers_delete**](LoadBalancerApi.md#datacenters_loadbalancers_delete) | **DELETE** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Delete a Loadbalancer. |
| [**datacenters_loadbalancers_find_by_id**](LoadBalancerApi.md#datacenters_loadbalancers_find_by_id) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Retrieve a loadbalancer |
| [**datacenters_loadbalancers_get**](LoadBalancerApi.md#datacenters_loadbalancers_get) | **GET** /datacenters/{datacenterId}/loadbalancers | List Load Balancers |
| [**datacenters_loadbalancers_patch**](LoadBalancerApi.md#datacenters_loadbalancers_patch) | **PATCH** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Partially modify a Loadbalancer |
| [**datacenters_loadbalancers_post**](LoadBalancerApi.md#datacenters_loadbalancers_post) | **POST** /datacenters/{datacenterId}/loadbalancers | Create a Load Balancer |
| [**datacenters_loadbalancers_put**](LoadBalancerApi.md#datacenters_loadbalancers_put) | **PUT** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Modify a Load Balancer |


## datacenters_loadbalancers_balancednics_delete

> Object datacenters_loadbalancers_balancednics_delete(datacenter_id, loadbalancer_id, nic_id, opts)

Detach a nic from loadbalancer

This will remove a nic from Load Balancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Detach a nic from loadbalancer
  result = api_instance.datacenters_loadbalancers_balancednics_delete(datacenter_id, loadbalancer_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_delete: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_loadbalancers_balancednics_delete_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)

```ruby
begin
  # Detach a nic from loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_delete_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_balancednics_find_by_nic_id

> <Nic> datacenters_loadbalancers_balancednics_find_by_nic_id(datacenter_id, loadbalancer_id, nic_id, opts)

Retrieve a nic attached to Load Balancer

This will retrieve the properties of an attached nic.

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a nic attached to Load Balancer
  result = api_instance.datacenters_loadbalancers_balancednics_find_by_nic_id(datacenter_id, loadbalancer_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_find_by_nic_id: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)

```ruby
begin
  # Retrieve a nic attached to Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Nic**](Nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_balancednics_get

> <BalancedNics> datacenters_loadbalancers_balancednics_get(datacenter_id, loadbalancer_id, opts)

List Load Balancer Members 

You can retrieve a list of nics attached to a Load Balancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Load Balancer Members 
  result = api_instance.datacenters_loadbalancers_balancednics_get(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_get: #{e}"
end
```

#### Using the datacenters_loadbalancers_balancednics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalancedNics>, Integer, Hash)> datacenters_loadbalancers_balancednics_get_with_http_info(datacenter_id, loadbalancer_id, opts)

```ruby
begin
  # List Load Balancer Members 
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_get_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalancedNics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

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

This will attach a pre-existing nic to a Load Balancer. 

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Nic id to be attached
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Attach a nic to Load Balancer
  result = api_instance.datacenters_loadbalancers_balancednics_post(datacenter_id, loadbalancer_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_post: #{e}"
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
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **nic** | [**Nic**](Nic.md) | Nic id to be attached |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Nic**](Nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_loadbalancers_delete

> Object datacenters_loadbalancers_delete(datacenter_id, loadbalancer_id, opts)

Delete a Loadbalancer.

Removes the specific Loadbalancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Loadbalancer.
  result = api_instance.datacenters_loadbalancers_delete(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_delete: #{e}"
end
```

#### Using the datacenters_loadbalancers_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_loadbalancers_delete_with_http_info(datacenter_id, loadbalancer_id, opts)

```ruby
begin
  # Delete a Loadbalancer.
  data, status_code, headers = api_instance.datacenters_loadbalancers_delete_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_loadbalancers_find_by_id

> <Loadbalancer> datacenters_loadbalancers_find_by_id(datacenter_id, loadbalancer_id, opts)

Retrieve a loadbalancer

Retrieves the attributes of a given Loadbalancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a loadbalancer
  result = api_instance.datacenters_loadbalancers_find_by_id(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_find_by_id: #{e}"
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
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

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

Retrieve a list of Load Balancers within the datacenter

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Load Balancers
  result = api_instance.datacenters_loadbalancers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_get: #{e}"
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
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

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

You can use update attributes of a resource

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
loadbalancer = Ionoscloud::LoadbalancerProperties.new # LoadbalancerProperties | Modified Loadbalancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Loadbalancer
  result = api_instance.datacenters_loadbalancers_patch(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_patch: #{e}"
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
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **loadbalancer** | [**LoadbalancerProperties**](LoadbalancerProperties.md) | Modified Loadbalancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

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

Creates a Loadbalancer within the datacenter

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer = Ionoscloud::Loadbalancer.new({properties: Ionoscloud::LoadbalancerProperties.new}) # Loadbalancer | Loadbalancer to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Load Balancer
  result = api_instance.datacenters_loadbalancers_post(datacenter_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_post: #{e}"
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
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer** | [**Loadbalancer**](Loadbalancer.md) | Loadbalancer to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

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

You can use update attributes of a resource

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
loadbalancer = Ionoscloud::Loadbalancer.new({properties: Ionoscloud::LoadbalancerProperties.new}) # Loadbalancer | Modified Loadbalancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Load Balancer
  result = api_instance.datacenters_loadbalancers_put(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_put: #{e}"
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
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer_id** | **String** | The unique ID of the Load Balancer |  |
| **loadbalancer** | [**Loadbalancer**](Loadbalancer.md) | Modified Loadbalancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Loadbalancer**](Loadbalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
