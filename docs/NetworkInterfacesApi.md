# NetworkInterfacesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_nics_delete**](NetworkInterfacesApi.md#datacenters_servers_nics_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Delete a Network Interface |
| [**datacenters_servers_nics_find_by_id**](NetworkInterfacesApi.md#datacenters_servers_nics_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Retrieve a Network Interface |
| [**datacenters_servers_nics_get**](NetworkInterfacesApi.md#datacenters_servers_nics_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics | List Network Interfaces |
| [**datacenters_servers_nics_patch**](NetworkInterfacesApi.md#datacenters_servers_nics_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Partially Modify a Network Interface |
| [**datacenters_servers_nics_post**](NetworkInterfacesApi.md#datacenters_servers_nics_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics | Create a Network Interface |
| [**datacenters_servers_nics_put**](NetworkInterfacesApi.md#datacenters_servers_nics_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Modify a Network Interface |


## datacenters_servers_nics_delete

> datacenters_servers_nics_delete(datacenter_id, server_id, nic_id, opts)

Delete a Network Interface

Deletes the specified network interface.

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

api_instance = Ionoscloud::NetworkInterfacesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Network Interface
  api_instance.datacenters_servers_nics_delete(datacenter_id, server_id, nic_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_delete: #{e}"
end
```

#### Using the datacenters_servers_nics_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_nics_delete_with_http_info(datacenter_id, server_id, nic_id, opts)

```ruby
begin
  # Delete a Network Interface
  data, status_code, headers = api_instance.datacenters_servers_nics_delete_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_find_by_id

> <Nic> datacenters_servers_nics_find_by_id(datacenter_id, server_id, nic_id, opts)

Retrieve a Network Interface

Retrieves the attributes of a given network interface.

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

api_instance = Ionoscloud::NetworkInterfacesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Network Interface
  result = api_instance.datacenters_servers_nics_find_by_id(datacenter_id, server_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_nics_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_servers_nics_find_by_id_with_http_info(datacenter_id, server_id, nic_id, opts)

```ruby
begin
  # Retrieve a Network Interface
  data, status_code, headers = api_instance.datacenters_servers_nics_find_by_id_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
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


## datacenters_servers_nics_get

> <Nics> datacenters_servers_nics_get(datacenter_id, server_id, opts)

List Network Interfaces

Retrieves a list of network interfaces.

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

api_instance = Ionoscloud::NetworkInterfacesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
}

begin
  # List Network Interfaces
  result = api_instance.datacenters_servers_nics_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_get: #{e}"
end
```

#### Using the datacenters_servers_nics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nics>, Integer, Hash)> datacenters_servers_nics_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # List Network Interfaces
  data, status_code, headers = api_instance.datacenters_servers_nics_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**Nics**](Nics.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_patch

> <Nic> datacenters_servers_nics_patch(datacenter_id, server_id, nic_id, nic, opts)

Partially Modify a Network Interface

You can use update attributes of a network interface.

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

api_instance = Ionoscloud::NetworkInterfacesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
nic = Ionoscloud::NicProperties.new({lan: 2}) # NicProperties | Modified properties of Nic
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially Modify a Network Interface
  result = api_instance.datacenters_servers_nics_patch(datacenter_id, server_id, nic_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_patch: #{e}"
end
```

#### Using the datacenters_servers_nics_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_servers_nics_patch_with_http_info(datacenter_id, server_id, nic_id, nic, opts)

```ruby
begin
  # Partially Modify a Network Interface
  data, status_code, headers = api_instance.datacenters_servers_nics_patch_with_http_info(datacenter_id, server_id, nic_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **nic** | [**NicProperties**](NicProperties.md) | Modified properties of Nic |  |
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


## datacenters_servers_nics_post

> <Nic> datacenters_servers_nics_post(datacenter_id, server_id, nic, opts)

Create a Network Interface

Adds a network interface to the target server. Combined count of network interfaces and volumes attached to the server should not exceed size 24.

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

api_instance = Ionoscloud::NetworkInterfacesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Nic to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Network Interface
  result = api_instance.datacenters_servers_nics_post(datacenter_id, server_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_post: #{e}"
end
```

#### Using the datacenters_servers_nics_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_servers_nics_post_with_http_info(datacenter_id, server_id, nic, opts)

```ruby
begin
  # Create a Network Interface
  data, status_code, headers = api_instance.datacenters_servers_nics_post_with_http_info(datacenter_id, server_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic** | [**Nic**](Nic.md) | Nic to be created |  |
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


## datacenters_servers_nics_put

> <Nic> datacenters_servers_nics_put(datacenter_id, server_id, nic_id, nic, opts)

Modify a Network Interface

You can use update attributes of a network interface.

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

api_instance = Ionoscloud::NetworkInterfacesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
nic = Ionoscloud::NicPut.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # NicPut | Modified Nic
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Network Interface
  result = api_instance.datacenters_servers_nics_put(datacenter_id, server_id, nic_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_put: #{e}"
end
```

#### Using the datacenters_servers_nics_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_servers_nics_put_with_http_info(datacenter_id, server_id, nic_id, nic, opts)

```ruby
begin
  # Modify a Network Interface
  data, status_code, headers = api_instance.datacenters_servers_nics_put_with_http_info(datacenter_id, server_id, nic_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkInterfacesApi->datacenters_servers_nics_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **nic** | [**NicPut**](NicPut.md) | Modified Nic |  |
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

