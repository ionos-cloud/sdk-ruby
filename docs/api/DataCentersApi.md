# DataCentersApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_delete**](DataCentersApi.md#datacenters_delete) | **DELETE** /datacenters/{datacenterId} | Delete data centers |
| [**datacenters_find_by_id**](DataCentersApi.md#datacenters_find_by_id) | **GET** /datacenters/{datacenterId} | Retrieve data centers |
| [**datacenters_get**](DataCentersApi.md#datacenters_get) | **GET** /datacenters | List your data centers |
| [**datacenters_patch**](DataCentersApi.md#datacenters_patch) | **PATCH** /datacenters/{datacenterId} | Partially modify data centers |
| [**datacenters_post**](DataCentersApi.md#datacenters_post) | **POST** /datacenters | Create data centers |
| [**datacenters_put**](DataCentersApi.md#datacenters_put) | **PUT** /datacenters/{datacenterId} | Modify data centers |


## datacenters_delete

> datacenters_delete(datacenter_id, opts)

Delete data centers

Delete the specified data center and all the elements it contains. This is method is destructive and should be used carefully.

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

api_instance = Ionoscloud::DataCentersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete data centers
  api_instance.datacenters_delete(datacenter_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_delete: #{e}"
end
```

#### Using the datacenters_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_delete_with_http_info(datacenter_id, opts)

```ruby
begin
  # Delete data centers
  data, status_code, headers = api_instance.datacenters_delete_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
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


## datacenters_find_by_id

> <Datacenter> datacenters_find_by_id(datacenter_id, opts)

Retrieve data centers

Retrieve data centers by resource ID. This value is in the response body when the data center is created, and in the list of the data centers, returned by GET.

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

api_instance = Ionoscloud::DataCentersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve data centers
  result = api_instance.datacenters_find_by_id(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_find_by_id: #{e}"
end
```

#### Using the datacenters_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_find_by_id_with_http_info(datacenter_id, opts)

```ruby
begin
  # Retrieve data centers
  data, status_code, headers = api_instance.datacenters_find_by_id_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Datacenter**](../models/Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_get

> <Datacenters> datacenters_get(opts)

List your data centers

List the data centers for your account. Default limit is the first 100 items; use pagination query parameters for listing more items.

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

api_instance = Ionoscloud::DataCentersApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List your data centers
  result = api_instance.datacenters_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_get: #{e}"
end
```

#### Using the datacenters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenters>, Integer, Hash)> datacenters_get_with_http_info(opts)

```ruby
begin
  # List your data centers
  data, status_code, headers = api_instance.datacenters_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenters>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**Datacenters**](../models/Datacenters.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_patch

> <Datacenter> datacenters_patch(datacenter_id, datacenter, opts)

Partially modify data centers

Update the properties of the specified data center, rename it, or change the description.

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

api_instance = Ionoscloud::DataCentersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
datacenter = Ionoscloud::DatacenterProperties.new({location: 'us/las'}) # DatacenterProperties | The properties of the data center to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify data centers
  result = api_instance.datacenters_patch(datacenter_id, datacenter, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_patch: #{e}"
end
```

#### Using the datacenters_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_patch_with_http_info(datacenter_id, datacenter, opts)

```ruby
begin
  # Partially modify data centers
  data, status_code, headers = api_instance.datacenters_patch_with_http_info(datacenter_id, datacenter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **datacenter** | [**DatacenterProperties**](DatacenterProperties.md) | The properties of the data center to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Datacenter**](../models/Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_post

> <Datacenter> datacenters_post(datacenter, opts)

Create data centers

Create new data centers, and data centers that already contain elements, such as servers and storage volumes.  Virtual data centers are the foundation of the platform; they act as logical containers for all other objects you create, such as servers and storage volumes. You can provision as many data centers as needed. Data centers have their own private networks and are logically segmented from each other to create isolation.

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

api_instance = Ionoscloud::DataCentersApi.new
datacenter = Ionoscloud::Datacenter.new({properties: Ionoscloud::DatacenterProperties.new({location: 'us/las'})}) # Datacenter | The data center to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create data centers
  result = api_instance.datacenters_post(datacenter, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_post: #{e}"
end
```

#### Using the datacenters_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_post_with_http_info(datacenter, opts)

```ruby
begin
  # Create data centers
  data, status_code, headers = api_instance.datacenters_post_with_http_info(datacenter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter** | [**Datacenter**](Datacenter.md) | The data center to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Datacenter**](../models/Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_put

> <Datacenter> datacenters_put(datacenter_id, datacenter, opts)

Modify data centers

Modify the properties of the specified data center, rename it, or change the description.

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

api_instance = Ionoscloud::DataCentersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
datacenter = Ionoscloud::Datacenter.new({properties: Ionoscloud::DatacenterProperties.new({location: 'us/las'})}) # Datacenter | The modified data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify data centers
  result = api_instance.datacenters_put(datacenter_id, datacenter, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_put: #{e}"
end
```

#### Using the datacenters_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_put_with_http_info(datacenter_id, datacenter, opts)

```ruby
begin
  # Modify data centers
  data, status_code, headers = api_instance.datacenters_put_with_http_info(datacenter_id, datacenter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCentersApi->datacenters_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **datacenter** | [**Datacenter**](Datacenter.md) | The modified data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Datacenter**](../models/Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

