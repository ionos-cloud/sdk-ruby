# Ionoscloud::LanApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_lans_delete**](LanApi.md#datacenters_lans_delete) | **DELETE** /datacenters/{datacenterId}/lans/{lanId} | Delete a Lan. |
| [**datacenters_lans_find_by_id**](LanApi.md#datacenters_lans_find_by_id) | **GET** /datacenters/{datacenterId}/lans/{lanId} | Retrieve a Lan |
| [**datacenters_lans_get**](LanApi.md#datacenters_lans_get) | **GET** /datacenters/{datacenterId}/lans | List Lans |
| [**datacenters_lans_nics_find_by_id**](LanApi.md#datacenters_lans_nics_find_by_id) | **GET** /datacenters/{datacenterId}/lans/{lanId}/nics/{nicId} | Retrieve a nic attached to lan |
| [**datacenters_lans_nics_get**](LanApi.md#datacenters_lans_nics_get) | **GET** /datacenters/{datacenterId}/lans/{lanId}/nics | List Lan Members  |
| [**datacenters_lans_nics_post**](LanApi.md#datacenters_lans_nics_post) | **POST** /datacenters/{datacenterId}/lans/{lanId}/nics | Attach a nic |
| [**datacenters_lans_patch**](LanApi.md#datacenters_lans_patch) | **PATCH** /datacenters/{datacenterId}/lans/{lanId} | Partially modify a Lan |
| [**datacenters_lans_post**](LanApi.md#datacenters_lans_post) | **POST** /datacenters/{datacenterId}/lans | Create a Lan |
| [**datacenters_lans_put**](LanApi.md#datacenters_lans_put) | **PUT** /datacenters/{datacenterId}/lans/{lanId} | Modify a Lan |


## datacenters_lans_delete

> Object datacenters_lans_delete(datacenter_id, lan_id, opts)

Delete a Lan.

Removes the specific Lan

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Lan.
  result = api_instance.datacenters_lans_delete(datacenter_id, lan_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_delete: #{e}"
end
```

#### Using the datacenters_lans_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_lans_delete_with_http_info(datacenter_id, lan_id, opts)

```ruby
begin
  # Delete a Lan.
  data, status_code, headers = api_instance.datacenters_lans_delete_with_http_info(datacenter_id, lan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
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


## datacenters_lans_find_by_id

> <Lan> datacenters_lans_find_by_id(datacenter_id, lan_id, opts)

Retrieve a Lan

Retrieves the attributes of a given LAN

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Lan
  result = api_instance.datacenters_lans_find_by_id(datacenter_id, lan_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_find_by_id: #{e}"
end
```

#### Using the datacenters_lans_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lan>, Integer, Hash)> datacenters_lans_find_by_id_with_http_info(datacenter_id, lan_id, opts)

```ruby
begin
  # Retrieve a Lan
  data, status_code, headers = api_instance.datacenters_lans_find_by_id_with_http_info(datacenter_id, lan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lan>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Lan**](Lan.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_get

> <Lans> datacenters_lans_get(datacenter_id, opts)

List Lans

Retrieve a list of LANs within the datacenter

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Lans
  result = api_instance.datacenters_lans_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_get: #{e}"
end
```

#### Using the datacenters_lans_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lans>, Integer, Hash)> datacenters_lans_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List Lans
  data, status_code, headers = api_instance.datacenters_lans_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lans>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_get_with_http_info: #{e}"
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

[**Lans**](Lans.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_nics_find_by_id

> <Nic> datacenters_lans_nics_find_by_id(datacenter_id, lan_id, nic_id, opts)

Retrieve a nic attached to lan

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a nic attached to lan
  result = api_instance.datacenters_lans_nics_find_by_id(datacenter_id, lan_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_nics_find_by_id: #{e}"
end
```

#### Using the datacenters_lans_nics_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_lans_nics_find_by_id_with_http_info(datacenter_id, lan_id, nic_id, opts)

```ruby
begin
  # Retrieve a nic attached to lan
  data, status_code, headers = api_instance.datacenters_lans_nics_find_by_id_with_http_info(datacenter_id, lan_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_nics_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Nic**](Nic.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_nics_get

> <LanNics> datacenters_lans_nics_get(datacenter_id, lan_id, opts)

List Lan Members 

You can retrieve a list of nics attached to a lan

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Lan Members 
  result = api_instance.datacenters_lans_nics_get(datacenter_id, lan_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_nics_get: #{e}"
end
```

#### Using the datacenters_lans_nics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanNics>, Integer, Hash)> datacenters_lans_nics_get_with_http_info(datacenter_id, lan_id, opts)

```ruby
begin
  # List Lan Members 
  data, status_code, headers = api_instance.datacenters_lans_nics_get_with_http_info(datacenter_id, lan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanNics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_nics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

### Return type

[**LanNics**](LanNics.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_lans_nics_post

> <Nic> datacenters_lans_nics_post(datacenter_id, lan_id, nic, opts)

Attach a nic

This will attach a pre-existing nic to a lan. 

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Nic to be attached
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Attach a nic
  result = api_instance.datacenters_lans_nics_post(datacenter_id, lan_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_nics_post: #{e}"
end
```

#### Using the datacenters_lans_nics_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Nic>, Integer, Hash)> datacenters_lans_nics_post_with_http_info(datacenter_id, lan_id, nic, opts)

```ruby
begin
  # Attach a nic
  data, status_code, headers = api_instance.datacenters_lans_nics_post_with_http_info(datacenter_id, lan_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_nics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
| **nic** | [**Nic**](Nic.md) | Nic to be attached |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Nic**](Nic.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_lans_patch

> <Lan> datacenters_lans_patch(datacenter_id, lan_id, lan, opts)

Partially modify a Lan

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
lan = Ionoscloud::LanProperties.new # LanProperties | Modified Lan
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Lan
  result = api_instance.datacenters_lans_patch(datacenter_id, lan_id, lan, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_patch: #{e}"
end
```

#### Using the datacenters_lans_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lan>, Integer, Hash)> datacenters_lans_patch_with_http_info(datacenter_id, lan_id, lan, opts)

```ruby
begin
  # Partially modify a Lan
  data, status_code, headers = api_instance.datacenters_lans_patch_with_http_info(datacenter_id, lan_id, lan, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lan>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
| **lan** | [**LanProperties**](LanProperties.md) | Modified Lan |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Lan**](Lan.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_lans_post

> <LanPost> datacenters_lans_post(datacenter_id, lan, opts)

Create a Lan

Creates a LAN within the datacenter

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan = Ionoscloud::LanPost.new({properties: Ionoscloud::LanPropertiesPost.new}) # LanPost | Lan to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Lan
  result = api_instance.datacenters_lans_post(datacenter_id, lan, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_post: #{e}"
end
```

#### Using the datacenters_lans_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanPost>, Integer, Hash)> datacenters_lans_post_with_http_info(datacenter_id, lan, opts)

```ruby
begin
  # Create a Lan
  data, status_code, headers = api_instance.datacenters_lans_post_with_http_info(datacenter_id, lan, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanPost>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan** | [**LanPost**](LanPost.md) | Lan to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**LanPost**](LanPost.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_lans_put

> <Lan> datacenters_lans_put(datacenter_id, lan_id, lan, opts)

Modify a Lan

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

api_instance = Ionoscloud::LanApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
lan_id = 'lan_id_example' # String | The unique ID of the LAN
lan = Ionoscloud::Lan.new({properties: Ionoscloud::LanProperties.new}) # Lan | Modified Lan
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Lan
  result = api_instance.datacenters_lans_put(datacenter_id, lan_id, lan, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_put: #{e}"
end
```

#### Using the datacenters_lans_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Lan>, Integer, Hash)> datacenters_lans_put_with_http_info(datacenter_id, lan_id, lan, opts)

```ruby
begin
  # Modify a Lan
  data, status_code, headers = api_instance.datacenters_lans_put_with_http_info(datacenter_id, lan_id, lan, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Lan>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LanApi->datacenters_lans_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **lan_id** | **String** | The unique ID of the LAN |  |
| **lan** | [**Lan**](Lan.md) | Modified Lan |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Lan**](Lan.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

