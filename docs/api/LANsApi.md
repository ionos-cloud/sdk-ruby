# LANsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_lans_delete**](LANsApi.md#datacenters_lans_delete) | **DELETE** /datacenters/{datacenterId}/lans/{lanId} | Delete LANs |
| [**datacenters_lans_find_by_id**](LANsApi.md#datacenters_lans_find_by_id) | **GET** /datacenters/{datacenterId}/lans/{lanId} | Retrieve LANs |
| [**datacenters_lans_get**](LANsApi.md#datacenters_lans_get) | **GET** /datacenters/{datacenterId}/lans | List LANs |
| [**datacenters_lans_nics_find_by_id**](LANsApi.md#datacenters_lans_nics_find_by_id) | **GET** /datacenters/{datacenterId}/lans/{lanId}/nics/{nicId} | Retrieve attached NICs |
| [**datacenters_lans_nics_get**](LANsApi.md#datacenters_lans_nics_get) | **GET** /datacenters/{datacenterId}/lans/{lanId}/nics | List LAN members |
| [**datacenters_lans_nics_post**](LANsApi.md#datacenters_lans_nics_post) | **POST** /datacenters/{datacenterId}/lans/{lanId}/nics | Attach NICs |
| [**datacenters_lans_patch**](LANsApi.md#datacenters_lans_patch) | **PATCH** /datacenters/{datacenterId}/lans/{lanId} | Partially modify LANs |
| [**datacenters_lans_post**](LANsApi.md#datacenters_lans_post) | **POST** /datacenters/{datacenterId}/lans | Create LANs |
| [**datacenters_lans_put**](LANsApi.md#datacenters_lans_put) | **PUT** /datacenters/{datacenterId}/lans/{lanId} | Modify LANs |


## datacenters_lans_delete

> datacenters_lans_delete(datacenter_id, lan_id, opts)

Delete LANs

Delete the specified LAN within the data center.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete LANs
  api_instance.datacenters_lans_delete(datacenter_id, lan_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_delete: #{e}"
end
```

#### Using the datacenters_lans_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_lans_delete_with_http_info(datacenter_id, lan_id, opts)

```ruby
begin
  # Delete LANs
  data, status_code, headers = api_instance.datacenters_lans_delete_with_http_info(datacenter_id, lan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
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


## datacenters_lans_find_by_id

> <Lan> datacenters_lans_find_by_id(datacenter_id, lan_id, opts)

Retrieve LANs

Retrieve the properties of the specified LAN within the data center.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve LANs
  result = api_instance.datacenters_lans_find_by_id(datacenter_id, lan_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_find_by_id: #{e}"
end
```

#### Using the datacenters_lans_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lan>, Integer, Hash)> datacenters_lans_find_by_id_with_http_info(datacenter_id, lan_id, opts)

```ruby
begin
  # Retrieve LANs
  data, status_code, headers = api_instance.datacenters_lans_find_by_id_with_http_info(datacenter_id, lan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lan>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Lan**](../models/Lan.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_get

> <Lans> datacenters_lans_get(datacenter_id, opts)

List LANs

List all LANs within the data center.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List LANs
  result = api_instance.datacenters_lans_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_get: #{e}"
end
```

#### Using the datacenters_lans_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lans>, Integer, Hash)> datacenters_lans_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List LANs
  data, status_code, headers = api_instance.datacenters_lans_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lans>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**Lans**](../models/Lans.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_nics_find_by_id

> <Nic> datacenters_lans_nics_find_by_id(datacenter_id, lan_id, nic_id, opts)

Retrieve attached NICs

Retrieve the properties of the NIC, attached to the specified LAN.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve attached NICs
  result = api_instance.datacenters_lans_nics_find_by_id(datacenter_id, lan_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_nics_find_by_id: #{e}"
end
```

#### Using the datacenters_lans_nics_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_lans_nics_find_by_id_with_http_info(datacenter_id, lan_id, nic_id, opts)

```ruby
begin
  # Retrieve attached NICs
  data, status_code, headers = api_instance.datacenters_lans_nics_find_by_id_with_http_info(datacenter_id, lan_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_nics_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Nic**](../models/Nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_nics_get

> <LanNics> datacenters_lans_nics_get(datacenter_id, lan_id, opts)

List LAN members

List all NICs, attached to the specified LAN.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List LAN members
  result = api_instance.datacenters_lans_nics_get(datacenter_id, lan_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_nics_get: #{e}"
end
```

#### Using the datacenters_lans_nics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanNics>, Integer, Hash)> datacenters_lans_nics_get_with_http_info(datacenter_id, lan_id, opts)

```ruby
begin
  # List LAN members
  data, status_code, headers = api_instance.datacenters_lans_nics_get_with_http_info(datacenter_id, lan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanNics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_nics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**LanNics**](../models/LanNics.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_nics_post

> <Nic> datacenters_lans_nics_post(datacenter_id, lan_id, nic, opts)

Attach NICs

Attach an existing NIC to the specified LAN.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | The NIC to be attached.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Attach NICs
  result = api_instance.datacenters_lans_nics_post(datacenter_id, lan_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_nics_post: #{e}"
end
```

#### Using the datacenters_lans_nics_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_lans_nics_post_with_http_info(datacenter_id, lan_id, nic, opts)

```ruby
begin
  # Attach NICs
  data, status_code, headers = api_instance.datacenters_lans_nics_post_with_http_info(datacenter_id, lan_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_nics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
| **nic** | [**Nic**](Nic.md) | The NIC to be attached. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Nic**](../models/Nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_lans_patch

> <Lan> datacenters_lans_patch(datacenter_id, lan_id, lan, opts)

Partially modify LANs

Update the properties of the specified LAN within the data center.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
lan = Ionoscloud::LanProperties.new # LanProperties | The properties of the LAN to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify LANs
  result = api_instance.datacenters_lans_patch(datacenter_id, lan_id, lan, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_patch: #{e}"
end
```

#### Using the datacenters_lans_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lan>, Integer, Hash)> datacenters_lans_patch_with_http_info(datacenter_id, lan_id, lan, opts)

```ruby
begin
  # Partially modify LANs
  data, status_code, headers = api_instance.datacenters_lans_patch_with_http_info(datacenter_id, lan_id, lan, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lan>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
| **lan** | [**LanProperties**](LanProperties.md) | The properties of the LAN to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Lan**](../models/Lan.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_lans_post

> <LanPost> datacenters_lans_post(datacenter_id, lan, opts)

Create LANs

Create a LAN within the data center.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan = Ionoscloud::LanPost.new({properties: Ionoscloud::LanPropertiesPost.new}) # LanPost | The LAN to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create LANs
  result = api_instance.datacenters_lans_post(datacenter_id, lan, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_post: #{e}"
end
```

#### Using the datacenters_lans_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanPost>, Integer, Hash)> datacenters_lans_post_with_http_info(datacenter_id, lan, opts)

```ruby
begin
  # Create LANs
  data, status_code, headers = api_instance.datacenters_lans_post_with_http_info(datacenter_id, lan, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanPost>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan** | [**LanPost**](LanPost.md) | The LAN to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LanPost**](../models/LanPost.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_lans_put

> <Lan> datacenters_lans_put(datacenter_id, lan_id, lan, opts)

Modify LANs

Modify the properties of the specified LAN within the data center.

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

api_instance = Ionoscloud::LANsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
lan_id = 'lan_id_example' # String | The unique ID of the LAN.
lan = Ionoscloud::Lan.new({properties: Ionoscloud::LanProperties.new}) # Lan | The modified LAN
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify LANs
  result = api_instance.datacenters_lans_put(datacenter_id, lan_id, lan, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_put: #{e}"
end
```

#### Using the datacenters_lans_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lan>, Integer, Hash)> datacenters_lans_put_with_http_info(datacenter_id, lan_id, lan, opts)

```ruby
begin
  # Modify LANs
  data, status_code, headers = api_instance.datacenters_lans_put_with_http_info(datacenter_id, lan_id, lan, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lan>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LANsApi->datacenters_lans_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **lan_id** | **String** | The unique ID of the LAN. |  |
| **lan** | [**Lan**](Lan.md) | The modified LAN |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Lan**](../models/Lan.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

