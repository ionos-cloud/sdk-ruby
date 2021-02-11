# ServerApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_cdroms_delete**](ServerApi.md#datacenters_servers_cdroms_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/cdroms/{cdromId} | Detach a CD-ROM |
| [**datacenters_servers_cdroms_find_by_id**](ServerApi.md#datacenters_servers_cdroms_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/cdroms/{cdromId} | Retrieve an attached CD-ROM |
| [**datacenters_servers_cdroms_get**](ServerApi.md#datacenters_servers_cdroms_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/cdroms | List attached CD-ROMs  |
| [**datacenters_servers_cdroms_post**](ServerApi.md#datacenters_servers_cdroms_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/cdroms | Attach a CD-ROM |
| [**datacenters_servers_delete**](ServerApi.md#datacenters_servers_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId} | Delete a Server |
| [**datacenters_servers_find_by_id**](ServerApi.md#datacenters_servers_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId} | Retrieve a Server |
| [**datacenters_servers_get**](ServerApi.md#datacenters_servers_get) | **GET** /datacenters/{datacenterId}/servers | List Servers  |
| [**datacenters_servers_patch**](ServerApi.md#datacenters_servers_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId} | Partially modify a Server |
| [**datacenters_servers_post**](ServerApi.md#datacenters_servers_post) | **POST** /datacenters/{datacenterId}/servers | Create a Server |
| [**datacenters_servers_put**](ServerApi.md#datacenters_servers_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId} | Modify a Server |
| [**datacenters_servers_reboot_post**](ServerApi.md#datacenters_servers_reboot_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/reboot | Reboot a Server |
| [**datacenters_servers_start_post**](ServerApi.md#datacenters_servers_start_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/start | Start a Server |
| [**datacenters_servers_stop_post**](ServerApi.md#datacenters_servers_stop_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/stop | Stop a Server |
| [**datacenters_servers_upgrade_post**](ServerApi.md#datacenters_servers_upgrade_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/upgrade | Upgrade a Server |
| [**datacenters_servers_volumes_delete**](ServerApi.md#datacenters_servers_volumes_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/volumes/{volumeId} | Detach a volume |
| [**datacenters_servers_volumes_find_by_id**](ServerApi.md#datacenters_servers_volumes_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/volumes/{volumeId} | Retrieve an attached volume |
| [**datacenters_servers_volumes_get**](ServerApi.md#datacenters_servers_volumes_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/volumes | List Attached Volumes |
| [**datacenters_servers_volumes_post**](ServerApi.md#datacenters_servers_volumes_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/volumes | Attach a volume |


## datacenters_servers_cdroms_delete

> Object datacenters_servers_cdroms_delete(datacenter_id, server_id, cdrom_id, opts)

Detach a CD-ROM

This will detach a CD-ROM from the server

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
cdrom_id = 'cdrom_id_example' # String | The unique ID of the CD-ROM
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Detach a CD-ROM
  result = api_instance.datacenters_servers_cdroms_delete(datacenter_id, server_id, cdrom_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_delete: #{e}"
end
```

#### Using the datacenters_servers_cdroms_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_cdroms_delete_with_http_info(datacenter_id, server_id, cdrom_id, opts)

```ruby
begin
  # Detach a CD-ROM
  data, status_code, headers = api_instance.datacenters_servers_cdroms_delete_with_http_info(datacenter_id, server_id, cdrom_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **cdrom_id** | **String** | The unique ID of the CD-ROM |  |
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


## datacenters_servers_cdroms_find_by_id

> <Image> datacenters_servers_cdroms_find_by_id(datacenter_id, server_id, cdrom_id, opts)

Retrieve an attached CD-ROM

You can retrieve a specific CD-ROM attached to the server

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
cdrom_id = 'cdrom_id_example' # String | The unique ID of the CD-ROM
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve an attached CD-ROM
  result = api_instance.datacenters_servers_cdroms_find_by_id(datacenter_id, server_id, cdrom_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_cdroms_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> datacenters_servers_cdroms_find_by_id_with_http_info(datacenter_id, server_id, cdrom_id, opts)

```ruby
begin
  # Retrieve an attached CD-ROM
  data, status_code, headers = api_instance.datacenters_servers_cdroms_find_by_id_with_http_info(datacenter_id, server_id, cdrom_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **cdrom_id** | **String** | The unique ID of the CD-ROM |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_cdroms_get

> <Cdroms> datacenters_servers_cdroms_get(datacenter_id, server_id, opts)

List attached CD-ROMs 

You can retrieve a list of CD-ROMs attached to the server.

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List attached CD-ROMs 
  result = api_instance.datacenters_servers_cdroms_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_get: #{e}"
end
```

#### Using the datacenters_servers_cdroms_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cdroms>, Integer, Hash)> datacenters_servers_cdroms_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # List attached CD-ROMs 
  data, status_code, headers = api_instance.datacenters_servers_cdroms_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cdroms>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

### Return type

[**Cdroms**](Cdroms.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_cdroms_post

> <Image> datacenters_servers_cdroms_post(datacenter_id, server_id, cdrom, opts)

Attach a CD-ROM

You can attach a CD-ROM to an existing server. You can attach up to 2 CD-ROMs to one server. 

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
cdrom = Ionoscloud::Image.new({properties: Ionoscloud::ImageProperties.new({licence_type: 'UNKNOWN'})}) # Image | CD-ROM to be attached
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Attach a CD-ROM
  result = api_instance.datacenters_servers_cdroms_post(datacenter_id, server_id, cdrom, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_post: #{e}"
end
```

#### Using the datacenters_servers_cdroms_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> datacenters_servers_cdroms_post_with_http_info(datacenter_id, server_id, cdrom, opts)

```ruby
begin
  # Attach a CD-ROM
  data, status_code, headers = api_instance.datacenters_servers_cdroms_post_with_http_info(datacenter_id, server_id, cdrom, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_cdroms_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **cdrom** | [**Image**](Image.md) | CD-ROM to be attached |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_delete

> Object datacenters_servers_delete(datacenter_id, server_id, opts)

Delete a Server

This will remove a server from your datacenter; however, it will not remove the storage volumes attached to the server. You will need to make a separate API call to perform that action

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Server
  result = api_instance.datacenters_servers_delete(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_delete: #{e}"
end
```

#### Using the datacenters_servers_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_delete_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Delete a Server
  data, status_code, headers = api_instance.datacenters_servers_delete_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_delete_with_http_info: #{e}"
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

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_find_by_id

> <Server> datacenters_servers_find_by_id(datacenter_id, server_id, opts)

Retrieve a Server

Returns information about a server such as its configuration, provisioning status, etc.

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Server
  result = api_instance.datacenters_servers_find_by_id(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_find_by_id_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Retrieve a Server
  data, status_code, headers = api_instance.datacenters_servers_find_by_id_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_find_by_id_with_http_info: #{e}"
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

### Return type

[**Server**](Server.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_get

> <Servers> datacenters_servers_get(datacenter_id, opts)

List Servers 

You can retrieve a list of servers within a datacenter

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  upgrade_needed: true, # Boolean | It can be used to filter which servers can be upgraded which can not be upgraded.
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Servers 
  result = api_instance.datacenters_servers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_get: #{e}"
end
```

#### Using the datacenters_servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Servers>, Integer, Hash)> datacenters_servers_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List Servers 
  data, status_code, headers = api_instance.datacenters_servers_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Servers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **upgrade_needed** | **Boolean** | It can be used to filter which servers can be upgraded which can not be upgraded. | [optional] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

### Return type

[**Servers**](Servers.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_patch

> <Server> datacenters_servers_patch(datacenter_id, server_id, server, opts)

Partially modify a Server

You can use update attributes of a server

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the server
server = Ionoscloud::ServerProperties.new({cores: 4, ram: 4096}) # ServerProperties | Modified properties of Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Server
  result = api_instance.datacenters_servers_patch(datacenter_id, server_id, server, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_patch: #{e}"
end
```

#### Using the datacenters_servers_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_patch_with_http_info(datacenter_id, server_id, server, opts)

```ruby
begin
  # Partially modify a Server
  data, status_code, headers = api_instance.datacenters_servers_patch_with_http_info(datacenter_id, server_id, server, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the server |  |
| **server** | [**ServerProperties**](ServerProperties.md) | Modified properties of Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_post

> <Server> datacenters_servers_post(datacenter_id, server, opts)

Create a Server

Creates a server within an existing datacenter. You can configure the boot volume and connect the server to an existing LAN.

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server = Ionoscloud::Server.new({properties: Ionoscloud::ServerProperties.new({cores: 4, ram: 4096})}) # Server | Server to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Server
  result = api_instance.datacenters_servers_post(datacenter_id, server, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_post: #{e}"
end
```

#### Using the datacenters_servers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_post_with_http_info(datacenter_id, server, opts)

```ruby
begin
  # Create a Server
  data, status_code, headers = api_instance.datacenters_servers_post_with_http_info(datacenter_id, server, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server** | [**Server**](Server.md) | Server to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_put

> <Server> datacenters_servers_put(datacenter_id, server_id, server, opts)

Modify a Server

Allows to modify the attributes of a Server. From v5 onwards 'allowReboot' attribute will no longer be available. For certain server property change it was earlier forced to be provided. Now this behaviour is implicit and backend will do this automatically e.g. in earlier versions, when CPU family changes, the 'allowReboot' property was required to be set to true which will no longer be the case and the server will be rebooted automatically

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the server
server = Ionoscloud::Server.new({properties: Ionoscloud::ServerProperties.new({cores: 4, ram: 4096})}) # Server | Modified Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Server
  result = api_instance.datacenters_servers_put(datacenter_id, server_id, server, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_put: #{e}"
end
```

#### Using the datacenters_servers_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_put_with_http_info(datacenter_id, server_id, server, opts)

```ruby
begin
  # Modify a Server
  data, status_code, headers = api_instance.datacenters_servers_put_with_http_info(datacenter_id, server_id, server, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the server |  |
| **server** | [**Server**](Server.md) | Modified Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_reboot_post

> Object datacenters_servers_reboot_post(datacenter_id, server_id, opts)

Reboot a Server

This will force a hard reboot of the server. Do not use this method if you want to gracefully reboot the machine. This is the equivalent of powering off the machine and turning it back on.

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Reboot a Server
  result = api_instance.datacenters_servers_reboot_post(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_reboot_post: #{e}"
end
```

#### Using the datacenters_servers_reboot_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_reboot_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Reboot a Server
  data, status_code, headers = api_instance.datacenters_servers_reboot_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_reboot_post_with_http_info: #{e}"
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

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_start_post

> Object datacenters_servers_start_post(datacenter_id, server_id, opts)

Start a Server

This will start a server. If the server's public IP was deallocated then a new IP will be assigned

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Start a Server
  result = api_instance.datacenters_servers_start_post(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_start_post: #{e}"
end
```

#### Using the datacenters_servers_start_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_start_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Start a Server
  data, status_code, headers = api_instance.datacenters_servers_start_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_start_post_with_http_info: #{e}"
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

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_stop_post

> Object datacenters_servers_stop_post(datacenter_id, server_id, opts)

Stop a Server

This will stop a server. The machine will be forcefully powered off, billing will cease, and the public IP, if one is allocated, will be deallocated. The operation is not supported for Cube servers.

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Stop a Server
  result = api_instance.datacenters_servers_stop_post(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_stop_post: #{e}"
end
```

#### Using the datacenters_servers_stop_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_stop_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Stop a Server
  data, status_code, headers = api_instance.datacenters_servers_stop_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_stop_post_with_http_info: #{e}"
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

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_upgrade_post

> Object datacenters_servers_upgrade_post(datacenter_id, server_id, opts)

Upgrade a Server

This will upgrade the version of the server, if needed. To verify if there is an upgrade available for a server, call '/datacenters/{datacenterId}/servers?upgradeNeeded=true'

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Upgrade a Server
  result = api_instance.datacenters_servers_upgrade_post(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_upgrade_post: #{e}"
end
```

#### Using the datacenters_servers_upgrade_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_upgrade_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Upgrade a Server
  data, status_code, headers = api_instance.datacenters_servers_upgrade_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_upgrade_post_with_http_info: #{e}"
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

### Return type

**Object**

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_volumes_delete

> Object datacenters_servers_volumes_delete(datacenter_id, server_id, volume_id, opts)

Detach a volume

This will detach the volume from the server. This will not delete the volume from your datacenter. You will need to make a separate request to perform a deletion

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Detach a volume
  result = api_instance.datacenters_servers_volumes_delete(datacenter_id, server_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_delete: #{e}"
end
```

#### Using the datacenters_servers_volumes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_volumes_delete_with_http_info(datacenter_id, server_id, volume_id, opts)

```ruby
begin
  # Detach a volume
  data, status_code, headers = api_instance.datacenters_servers_volumes_delete_with_http_info(datacenter_id, server_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
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


## datacenters_servers_volumes_find_by_id

> <Volume> datacenters_servers_volumes_find_by_id(datacenter_id, server_id, volume_id, opts)

Retrieve an attached volume

This will retrieve the properties of an attached volume.

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

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve an attached volume
  result = api_instance.datacenters_servers_volumes_find_by_id(datacenter_id, server_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_volumes_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_servers_volumes_find_by_id_with_http_info(datacenter_id, server_id, volume_id, opts)

```ruby
begin
  # Retrieve an attached volume
  data, status_code, headers = api_instance.datacenters_servers_volumes_find_by_id_with_http_info(datacenter_id, server_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Volume**](Volume.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_volumes_get

> <AttachedVolumes> datacenters_servers_volumes_get(datacenter_id, server_id, opts)

List Attached Volumes

You can retrieve a list of volumes attached to the server

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Attached Volumes
  result = api_instance.datacenters_servers_volumes_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_get: #{e}"
end
```

#### Using the datacenters_servers_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttachedVolumes>, Integer, Hash)> datacenters_servers_volumes_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # List Attached Volumes
  data, status_code, headers = api_instance.datacenters_servers_volumes_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttachedVolumes>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

### Return type

[**AttachedVolumes**](AttachedVolumes.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_volumes_post

> <Volume> datacenters_servers_volumes_post(datacenter_id, server_id, volume, opts)

Attach a volume

This will attach a pre-existing storage volume to the server. It is also possible to create and attach a volume in one step just by providing a new volume description as payload. Combine count of Nics and volumes attached to the server should not exceed size 24.

### Examples

```ruby
require 'time'
require 'ionoscloud'
# setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Ionoscloud::ServerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
volume = Ionoscloud::Volume.new({properties: Ionoscloud::VolumeProperties.new({size: 100.0})}) # Volume | Volume to be attached (created and attached)
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Attach a volume
  result = api_instance.datacenters_servers_volumes_post(datacenter_id, server_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_post: #{e}"
end
```

#### Using the datacenters_servers_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_servers_volumes_post_with_http_info(datacenter_id, server_id, volume, opts)

```ruby
begin
  # Attach a volume
  data, status_code, headers = api_instance.datacenters_servers_volumes_post_with_http_info(datacenter_id, server_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServerApi->datacenters_servers_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **volume** | [**Volume**](Volume.md) | Volume to be attached (created and attached) |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Volume**](Volume.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

