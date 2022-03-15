# PrivateCrossConnectsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pccs_delete**](PrivateCrossConnectsApi.md#pccs_delete) | **DELETE** /pccs/{pccId} | Delete private Cross-Connects |
| [**pccs_find_by_id**](PrivateCrossConnectsApi.md#pccs_find_by_id) | **GET** /pccs/{pccId} | Retrieve private Cross-Connects |
| [**pccs_get**](PrivateCrossConnectsApi.md#pccs_get) | **GET** /pccs | List private Cross-Connects |
| [**pccs_patch**](PrivateCrossConnectsApi.md#pccs_patch) | **PATCH** /pccs/{pccId} | Partially modify private Cross-Connects |
| [**pccs_post**](PrivateCrossConnectsApi.md#pccs_post) | **POST** /pccs | Create private Cross-Connects |


## pccs_delete

> pccs_delete(pcc_id, opts)

Delete private Cross-Connects

Remove the specified private Cross-Connect (only if not connected to any data centers).

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
pcc_id = 'pcc_id_example' # String | The unique ID of the private Cross-Connect.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete private Cross-Connects
  api_instance.pccs_delete(pcc_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_delete: #{e}"
end
```

#### Using the pccs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> pccs_delete_with_http_info(pcc_id, opts)

```ruby
begin
  # Delete private Cross-Connects
  data, status_code, headers = api_instance.pccs_delete_with_http_info(pcc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectsApi->pccs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pcc_id** | **String** | The unique ID of the private Cross-Connect. |  |
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


## pccs_find_by_id

> <PrivateCrossConnect> pccs_find_by_id(pcc_id, opts)

Retrieve private Cross-Connects

Retrieve a private Cross-Connect by the resource ID. Cross-Connect ID is in the response body when the private Cross-Connect is created, and in the list of private Cross-Connects, returned by GET.

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
pcc_id = 'pcc_id_example' # String | The unique ID of the private Cross-Connect.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve private Cross-Connects
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
  # Retrieve private Cross-Connects
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
| **pcc_id** | **String** | The unique ID of the private Cross-Connect. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**PrivateCrossConnect**](../models/PrivateCrossConnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pccs_get

> <PrivateCrossConnects> pccs_get(opts)

List private Cross-Connects

List all private Cross-Connects for your account.

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
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List private Cross-Connects
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
  # List private Cross-Connects
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
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**PrivateCrossConnects**](../models/PrivateCrossConnects.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pccs_patch

> <PrivateCrossConnect> pccs_patch(pcc_id, pcc, opts)

Partially modify private Cross-Connects

Update the properties of the specified private Cross-Connect.

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
pcc_id = 'pcc_id_example' # String | The unique ID of the private Cross-Connect.
pcc = Ionoscloud::PrivateCrossConnectProperties.new # PrivateCrossConnectProperties | The properties of the private Cross-Connect to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify private Cross-Connects
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
  # Partially modify private Cross-Connects
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
| **pcc_id** | **String** | The unique ID of the private Cross-Connect. |  |
| **pcc** | [**PrivateCrossConnectProperties**](PrivateCrossConnectProperties.md) | The properties of the private Cross-Connect to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**PrivateCrossConnect**](../models/PrivateCrossConnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pccs_post

> <PrivateCrossConnect> pccs_post(pcc, opts)

Create private Cross-Connects

Create a private Cross-Connect.

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
pcc = Ionoscloud::PrivateCrossConnect.new({properties: Ionoscloud::PrivateCrossConnectProperties.new}) # PrivateCrossConnect | The private Cross-Connect to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create private Cross-Connects
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
  # Create private Cross-Connects
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
| **pcc** | [**PrivateCrossConnect**](PrivateCrossConnect.md) | The private Cross-Connect to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**PrivateCrossConnect**](../models/PrivateCrossConnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

