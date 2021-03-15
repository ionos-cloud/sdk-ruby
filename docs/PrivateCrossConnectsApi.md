# PrivateCrossConnectsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pccs_delete**](PrivateCrossConnectsApi.md#pccs_delete) | **DELETE** /pccs/{pccId} | Delete a Private Cross-Connect |
| [**pccs_find_by_id**](PrivateCrossConnectsApi.md#pccs_find_by_id) | **GET** /pccs/{pccId} | Retrieve a Private Cross-Connect |
| [**pccs_get**](PrivateCrossConnectsApi.md#pccs_get) | **GET** /pccs | List Private Cross-Connects |
| [**pccs_patch**](PrivateCrossConnectsApi.md#pccs_patch) | **PATCH** /pccs/{pccId} | Partially Modify a Private Cross-Connect |
| [**pccs_post**](PrivateCrossConnectsApi.md#pccs_post) | **POST** /pccs | Create a Private Cross-Connect |


## pccs_delete

> Object pccs_delete(pcc_id, opts)

Delete a Private Cross-Connect

Delete a private cross-connect if no datacenters are joined to the given PCC

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

api_instance = Ionoscloud::PrivateCrossConnectsApi.new
pcc_id = 'pcc_id_example' # String | The unique ID of the private cross-connect
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Private Cross-Connect
  result = api_instance.pccs_delete(pcc_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_delete: #{e}"
end
```

#### Using the pccs_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pccs_delete_with_http_info(pcc_id, opts)

```ruby
begin
  # Delete a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_delete_with_http_info(pcc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pcc_id** | **String** | The unique ID of the private cross-connect |  |
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


## pccs_find_by_id

> <PrivateCrossConnect> pccs_find_by_id(pcc_id, opts)

Retrieve a Private Cross-Connect

You can retrieve a private cross-connect by using the resource's ID. This value can be found in the response body when a private cross-connect is created or when you GET a list of private cross-connects.

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

api_instance = Ionoscloud::PrivateCrossConnectsApi.new
pcc_id = 'pcc_id_example' # String | The unique ID of the private cross-connect
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Private Cross-Connect
  result = api_instance.pccs_find_by_id(pcc_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_find_by_id: #{e}"
end
```

#### Using the pccs_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateCrossConnect>, Integer, Hash)> pccs_find_by_id_with_http_info(pcc_id, opts)

```ruby
begin
  # Retrieve a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_find_by_id_with_http_info(pcc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnect>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pcc_id** | **String** | The unique ID of the private cross-connect |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**PrivateCrossConnect**](PrivateCrossConnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pccs_get

> <PrivateCrossConnects> pccs_get(opts)

List Private Cross-Connects

You can retrieve a complete list of private cross-connects provisioned under your account

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

api_instance = Ionoscloud::PrivateCrossConnectsApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Private Cross-Connects
  result = api_instance.pccs_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_get: #{e}"
end
```

#### Using the pccs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateCrossConnects>, Integer, Hash)> pccs_get_with_http_info(opts)

```ruby
begin
  # List Private Cross-Connects
  data, status_code, headers = api_instance.pccs_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnects>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**PrivateCrossConnects**](PrivateCrossConnects.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pccs_patch

> <PrivateCrossConnect> pccs_patch(pcc_id, pcc, opts)

Partially Modify a Private Cross-Connect

You can use update private cross-connect to re-name or update its description

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

api_instance = Ionoscloud::PrivateCrossConnectsApi.new
pcc_id = 'pcc_id_example' # String | The unique ID of the private cross-connect
pcc = Ionoscloud::PrivateCrossConnectProperties.new # PrivateCrossConnectProperties | Modified properties of private cross-connect
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
}

begin
  # Partially Modify a Private Cross-Connect
  result = api_instance.pccs_patch(pcc_id, pcc, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_patch: #{e}"
end
```

#### Using the pccs_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateCrossConnect>, Integer, Hash)> pccs_patch_with_http_info(pcc_id, pcc, opts)

```ruby
begin
  # Partially Modify a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_patch_with_http_info(pcc_id, pcc, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnect>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pcc_id** | **String** | The unique ID of the private cross-connect |  |
| **pcc** | [**PrivateCrossConnectProperties**](PrivateCrossConnectProperties.md) | Modified properties of private cross-connect |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**PrivateCrossConnect**](PrivateCrossConnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pccs_post

> <PrivateCrossConnect> pccs_post(pcc, opts)

Create a Private Cross-Connect

You can use this POST method to create a private cross-connect.

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

api_instance = Ionoscloud::PrivateCrossConnectsApi.new
pcc = Ionoscloud::PrivateCrossConnect.new({properties: Ionoscloud::PrivateCrossConnectProperties.new}) # PrivateCrossConnect | Private Cross-Connect to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Private Cross-Connect
  result = api_instance.pccs_post(pcc, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_post: #{e}"
end
```

#### Using the pccs_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateCrossConnect>, Integer, Hash)> pccs_post_with_http_info(pcc, opts)

```ruby
begin
  # Create a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_post_with_http_info(pcc, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnect>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pcc** | [**PrivateCrossConnect**](PrivateCrossConnect.md) | Private Cross-Connect to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**PrivateCrossConnect**](PrivateCrossConnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

