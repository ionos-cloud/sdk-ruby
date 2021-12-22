# IPBlocksApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ipblocks_delete**](IPBlocksApi.md#ipblocks_delete) | **DELETE** /ipblocks/{ipblockId} | Delete IP blocks |
| [**ipblocks_find_by_id**](IPBlocksApi.md#ipblocks_find_by_id) | **GET** /ipblocks/{ipblockId} | Retrieve IP blocks |
| [**ipblocks_get**](IPBlocksApi.md#ipblocks_get) | **GET** /ipblocks | List IP blocks  |
| [**ipblocks_patch**](IPBlocksApi.md#ipblocks_patch) | **PATCH** /ipblocks/{ipblockId} | Partially modify IP blocks |
| [**ipblocks_post**](IPBlocksApi.md#ipblocks_post) | **POST** /ipblocks | Reserve IP blocks |
| [**ipblocks_put**](IPBlocksApi.md#ipblocks_put) | **PUT** /ipblocks/{ipblockId} | Modify IP blocks |


## ipblocks_delete

> ipblocks_delete(ipblock_id, opts)

Delete IP blocks

Remove the specified IP block.

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete IP blocks
  api_instance.ipblocks_delete(ipblock_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_delete: #{e}"
end
```

#### Using the ipblocks_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ipblocks_delete_with_http_info(ipblock_id, opts)

```ruby
begin
  # Delete IP blocks
  data, status_code, headers = api_instance.ipblocks_delete_with_http_info(ipblock_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
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


## ipblocks_find_by_id

> <IpBlock> ipblocks_find_by_id(ipblock_id, opts)

Retrieve IP blocks

Retrieve the properties of the specified IP block.

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve IP blocks
  result = api_instance.ipblocks_find_by_id(ipblock_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_find_by_id: #{e}"
end
```

#### Using the ipblocks_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ipblocks_find_by_id_with_http_info(ipblock_id, opts)

```ruby
begin
  # Retrieve IP blocks
  data, status_code, headers = api_instance.ipblocks_find_by_id_with_http_info(ipblock_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**IpBlock**](../models/IpBlock.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipblocks_get

> <IpBlocks> ipblocks_get(opts)

List IP blocks 

List all reserved IP blocks.

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

api_instance = Ionoscloud::IPBlocksApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List IP blocks 
  result = api_instance.ipblocks_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_get: #{e}"
end
```

#### Using the ipblocks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlocks>, Integer, Hash)> ipblocks_get_with_http_info(opts)

```ruby
begin
  # List IP blocks 
  data, status_code, headers = api_instance.ipblocks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlocks>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 100] |

### Return type

[**IpBlocks**](../models/IpBlocks.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipblocks_patch

> <IpBlock> ipblocks_patch(ipblock_id, ipblock, opts)

Partially modify IP blocks

Update the properties of the specified IP block.

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
ipblock = Ionoscloud::IpBlockProperties.new({location: 'us/las', size: 5}) # IpBlockProperties | The properties of the IP block to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify IP blocks
  result = api_instance.ipblocks_patch(ipblock_id, ipblock, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_patch: #{e}"
end
```

#### Using the ipblocks_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ipblocks_patch_with_http_info(ipblock_id, ipblock, opts)

```ruby
begin
  # Partially modify IP blocks
  data, status_code, headers = api_instance.ipblocks_patch_with_http_info(ipblock_id, ipblock, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **ipblock** | [**IpBlockProperties**](IpBlockProperties.md) | The properties of the IP block to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**IpBlock**](../models/IpBlock.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipblocks_post

> <IpBlock> ipblocks_post(ipblock, opts)

Reserve IP blocks

Reserve a new IP block.

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock = Ionoscloud::IpBlock.new({properties: Ionoscloud::IpBlockProperties.new({location: 'us/las', size: 5})}) # IpBlock | The IP block to be reserved.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Reserve IP blocks
  result = api_instance.ipblocks_post(ipblock, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_post: #{e}"
end
```

#### Using the ipblocks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ipblocks_post_with_http_info(ipblock, opts)

```ruby
begin
  # Reserve IP blocks
  data, status_code, headers = api_instance.ipblocks_post_with_http_info(ipblock, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock** | [**IpBlock**](IpBlock.md) | The IP block to be reserved. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**IpBlock**](../models/IpBlock.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipblocks_put

> <IpBlock> ipblocks_put(ipblock_id, ipblock, opts)

Modify IP blocks

Modify the properties of the specified IP block.

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
ipblock = Ionoscloud::IpBlock.new({properties: Ionoscloud::IpBlockProperties.new({location: 'us/las', size: 5})}) # IpBlock | The modified IP block.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify IP blocks
  result = api_instance.ipblocks_put(ipblock_id, ipblock, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_put: #{e}"
end
```

#### Using the ipblocks_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ipblocks_put_with_http_info(ipblock_id, ipblock, opts)

```ruby
begin
  # Modify IP blocks
  data, status_code, headers = api_instance.ipblocks_put_with_http_info(ipblock_id, ipblock, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **ipblock** | [**IpBlock**](IpBlock.md) | The modified IP block. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**IpBlock**](../models/IpBlock.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

