# DataCenterApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_delete**](DataCenterApi.md#datacenters_delete) | **DELETE** /datacenters/{datacenterId} | Delete a Data Center |
| [**datacenters_find_by_id**](DataCenterApi.md#datacenters_find_by_id) | **GET** /datacenters/{datacenterId} | Retrieve a Data Center |
| [**datacenters_get**](DataCenterApi.md#datacenters_get) | **GET** /datacenters | List Data Centers under your account |
| [**datacenters_patch**](DataCenterApi.md#datacenters_patch) | **PATCH** /datacenters/{datacenterId} | Partially modify a Data Center |
| [**datacenters_post**](DataCenterApi.md#datacenters_post) | **POST** /datacenters | Create a Data Center |
| [**datacenters_put**](DataCenterApi.md#datacenters_put) | **PUT** /datacenters/{datacenterId} | Modify a Data Center |


## datacenters_delete

> Object datacenters_delete(datacenter_id, opts)

Delete a Data Center

Will remove all objects within the datacenter and remove the datacenter object itself, too. This is a highly destructive method which should be used with caution

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

api_instance = Ionoscloud::DataCenterApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Data Center
  result = api_instance.datacenters_delete(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_delete: #{e}"
end
```

#### Using the datacenters_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_delete_with_http_info(datacenter_id, opts)

```ruby
begin
  # Delete a Data Center
  data, status_code, headers = api_instance.datacenters_delete_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
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


## datacenters_find_by_id

> <Datacenter> datacenters_find_by_id(datacenter_id, opts)

Retrieve a Data Center

You can retrieve a data center by using the resource's ID. This value can be found in the response body when a datacenter is created or when you GET a list of datacenters.

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

api_instance = Ionoscloud::DataCenterApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Data Center
  result = api_instance.datacenters_find_by_id(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_find_by_id: #{e}"
end
```

#### Using the datacenters_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_find_by_id_with_http_info(datacenter_id, opts)

```ruby
begin
  # Retrieve a Data Center
  data, status_code, headers = api_instance.datacenters_find_by_id_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Datacenter**](Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_get

> <Datacenters> datacenters_get(opts)

List Data Centers under your account

You can retrieve a complete list of data centers provisioned under your account

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

api_instance = Ionoscloud::DataCenterApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Data Centers under your account
  result = api_instance.datacenters_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_get: #{e}"
end
```

#### Using the datacenters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenters>, Integer, Hash)> datacenters_get_with_http_info(opts)

```ruby
begin
  # List Data Centers under your account
  data, status_code, headers = api_instance.datacenters_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenters>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

### Return type

[**Datacenters**](Datacenters.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_patch

> <Datacenter> datacenters_patch(datacenter_id, datacenter, opts)

Partially modify a Data Center

You can use update datacenter to re-name the datacenter or update its description

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

api_instance = Ionoscloud::DataCenterApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
datacenter = Ionoscloud::DatacenterProperties.new({location: 'us/las'}) # DatacenterProperties | Modified properties of Data Center
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Data Center
  result = api_instance.datacenters_patch(datacenter_id, datacenter, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_patch: #{e}"
end
```

#### Using the datacenters_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_patch_with_http_info(datacenter_id, datacenter, opts)

```ruby
begin
  # Partially modify a Data Center
  data, status_code, headers = api_instance.datacenters_patch_with_http_info(datacenter_id, datacenter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **datacenter** | [**DatacenterProperties**](DatacenterProperties.md) | Modified properties of Data Center |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Datacenter**](Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_post

> <Datacenter> datacenters_post(datacenter, opts)

Create a Data Center

Virtual data centers are the foundation of the platform. They act as logical containers for all other objects you will be creating, e.g. servers. You can provision as many data centers as you want. Datacenters have their own private network and are logically segmented from each other to create isolation. You can use this POST method to create a simple datacenter or to create a datacenter with multiple objects under it such as servers and storage volumes.

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

api_instance = Ionoscloud::DataCenterApi.new
datacenter = Ionoscloud::Datacenter.new({properties: Ionoscloud::DatacenterProperties.new({location: 'us/las'})}) # Datacenter | Datacenter to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Data Center
  result = api_instance.datacenters_post(datacenter, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_post: #{e}"
end
```

#### Using the datacenters_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_post_with_http_info(datacenter, opts)

```ruby
begin
  # Create a Data Center
  data, status_code, headers = api_instance.datacenters_post_with_http_info(datacenter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter** | [**Datacenter**](Datacenter.md) | Datacenter to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Datacenter**](Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_put

> <Datacenter> datacenters_put(datacenter_id, datacenter, opts)

Modify a Data Center

You can use update datacenter to re-name the datacenter or update its description

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

api_instance = Ionoscloud::DataCenterApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
datacenter = Ionoscloud::Datacenter.new({properties: Ionoscloud::DatacenterProperties.new({location: 'us/las'})}) # Datacenter | Modified Data Center
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Data Center
  result = api_instance.datacenters_put(datacenter_id, datacenter, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_put: #{e}"
end
```

#### Using the datacenters_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Datacenter>, Integer, Hash)> datacenters_put_with_http_info(datacenter_id, datacenter, opts)

```ruby
begin
  # Modify a Data Center
  data, status_code, headers = api_instance.datacenters_put_with_http_info(datacenter_id, datacenter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Datacenter>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DataCenterApi->datacenters_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **datacenter** | [**Datacenter**](Datacenter.md) | Modified Data Center |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Datacenter**](Datacenter.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

