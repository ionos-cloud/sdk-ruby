# ServersApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_cdroms_delete**](ServersApi.md#datacenters_servers_cdroms_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/cdroms/{cdromId} | Detach a CD-ROM by ID |
| [**datacenters_servers_cdroms_find_by_id**](ServersApi.md#datacenters_servers_cdroms_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/cdroms/{cdromId} | Get Attached CD-ROM by ID |
| [**datacenters_servers_cdroms_get**](ServersApi.md#datacenters_servers_cdroms_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/cdroms | Get Attached CD-ROMs  |
| [**datacenters_servers_cdroms_post**](ServersApi.md#datacenters_servers_cdroms_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/cdroms | Attach a CD-ROM |
| [**datacenters_servers_delete**](ServersApi.md#datacenters_servers_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId} | Delete servers |
| [**datacenters_servers_find_by_id**](ServersApi.md#datacenters_servers_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId} | Retrieve servers by ID |
| [**datacenters_servers_get**](ServersApi.md#datacenters_servers_get) | **GET** /datacenters/{datacenterId}/servers | List servers  |
| [**datacenters_servers_patch**](ServersApi.md#datacenters_servers_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId} | Partially modify servers |
| [**datacenters_servers_post**](ServersApi.md#datacenters_servers_post) | **POST** /datacenters/{datacenterId}/servers | Create a Server |
| [**datacenters_servers_put**](ServersApi.md#datacenters_servers_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId} | Modify a Server by ID |
| [**datacenters_servers_reboot_post**](ServersApi.md#datacenters_servers_reboot_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/reboot | Reboot servers |
| [**datacenters_servers_remote_console_get**](ServersApi.md#datacenters_servers_remote_console_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/remoteconsole | Get Remote Console link |
| [**datacenters_servers_resume_post**](ServersApi.md#datacenters_servers_resume_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/resume | Resume a Cube Server by ID |
| [**datacenters_servers_start_post**](ServersApi.md#datacenters_servers_start_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/start | Start an Enterprise Server by ID |
| [**datacenters_servers_stop_post**](ServersApi.md#datacenters_servers_stop_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/stop | Stop an Enterprise Server by ID |
| [**datacenters_servers_suspend_post**](ServersApi.md#datacenters_servers_suspend_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/suspend | Suspend a Cube Server by ID |
| [**datacenters_servers_token_get**](ServersApi.md#datacenters_servers_token_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/token | Get JASON Web Token |
| [**datacenters_servers_upgrade_post**](ServersApi.md#datacenters_servers_upgrade_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/upgrade | Upgrade a Server by ID |
| [**datacenters_servers_volumes_delete**](ServersApi.md#datacenters_servers_volumes_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/volumes/{volumeId} | Detach a Volume by ID |
| [**datacenters_servers_volumes_find_by_id**](ServersApi.md#datacenters_servers_volumes_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/volumes/{volumeId} | Get Attached Volume by ID |
| [**datacenters_servers_volumes_get**](ServersApi.md#datacenters_servers_volumes_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/volumes | Get Attached Volumes |
| [**datacenters_servers_volumes_post**](ServersApi.md#datacenters_servers_volumes_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/volumes | Attach a Volume to a Server |


## datacenters_servers_cdroms_delete

> datacenters_servers_cdroms_delete(datacenter_id, server_id, cdrom_id, opts)

Detach a CD-ROM by ID

Detachs the specified CD-ROM from the server.  Detaching a CD-ROM deletes the CD-ROM. The image will not be deleted.  Note that detaching a CD-ROM leads to a reset of the server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
cdrom_id = 'cdrom_id_example' # String | The unique ID of the CD-ROM.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Detach a CD-ROM by ID
  api_instance.datacenters_servers_cdroms_delete(datacenter_id, server_id, cdrom_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_delete: #{e}"
end
```

#### Using the datacenters_servers_cdroms_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_cdroms_delete_with_http_info(datacenter_id, server_id, cdrom_id, opts)

```ruby
begin
  # Detach a CD-ROM by ID
  data, status_code, headers = api_instance.datacenters_servers_cdroms_delete_with_http_info(datacenter_id, server_id, cdrom_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **cdrom_id** | **String** | The unique ID of the CD-ROM. |  |
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


## datacenters_servers_cdroms_find_by_id

> <Image> datacenters_servers_cdroms_find_by_id(datacenter_id, server_id, cdrom_id, opts)

Get Attached CD-ROM by ID

Retrieves the properties of the CD-ROM attached to the specified server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
cdrom_id = 'cdrom_id_example' # String | The unique ID of the CD-ROM.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Attached CD-ROM by ID
  result = api_instance.datacenters_servers_cdroms_find_by_id(datacenter_id, server_id, cdrom_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_cdroms_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> datacenters_servers_cdroms_find_by_id_with_http_info(datacenter_id, server_id, cdrom_id, opts)

```ruby
begin
  # Get Attached CD-ROM by ID
  data, status_code, headers = api_instance.datacenters_servers_cdroms_find_by_id_with_http_info(datacenter_id, server_id, cdrom_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **cdrom_id** | **String** | The unique ID of the CD-ROM. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Image**](../models/Image.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_cdroms_get

> <Cdroms> datacenters_servers_cdroms_get(datacenter_id, server_id, opts)

Get Attached CD-ROMs 

Lists all CD-ROMs attached to the specified server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # Get Attached CD-ROMs 
  result = api_instance.datacenters_servers_cdroms_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_get: #{e}"
end
```

#### Using the datacenters_servers_cdroms_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cdroms>, Integer, Hash)> datacenters_servers_cdroms_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Get Attached CD-ROMs 
  data, status_code, headers = api_instance.datacenters_servers_cdroms_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cdroms>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**Cdroms**](../models/Cdroms.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_cdroms_post

> <Image> datacenters_servers_cdroms_post(datacenter_id, server_id, cdrom, opts)

Attach a CD-ROM

Attachs a CD-ROM to an existing server specified by its ID.   CD-ROMs cannot be created stand-alone like volumes. They are either attached to a server or do not exist. They always have an ISO-Image associated; empty CD-ROMs can not be provisioned. It is possible to attach up to two CD-ROMs to the same server.   Note that attaching a CD-ROM leads to a reset of the server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
cdrom = Ionoscloud::Image.new({properties: Ionoscloud::ImageProperties.new({licence_type: 'UNKNOWN'})}) # Image | The CD-ROM to be attached.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Attach a CD-ROM
  result = api_instance.datacenters_servers_cdroms_post(datacenter_id, server_id, cdrom, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_cdroms_post: #{e}"
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
  puts "Error when calling ServersApi->datacenters_servers_cdroms_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **cdrom** | [**Image**](../models/Image.md) | The CD-ROM to be attached. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Image**](../models/Image.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_delete

> datacenters_servers_delete(datacenter_id, server_id, opts)

Delete servers

Delete the specified server in your data center. The attached storage volumes will also be removed if the query parameter is set to true otherwise a separate API call must be made for these actions.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  delete_volumes: true # Boolean | If true, all attached storage volumes will also be deleted.
}

begin
  # Delete servers
  api_instance.datacenters_servers_delete(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_delete: #{e}"
end
```

#### Using the datacenters_servers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_delete_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Delete servers
  data, status_code, headers = api_instance.datacenters_servers_delete_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **delete_volumes** | **Boolean** | If true, all attached storage volumes will also be deleted. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_find_by_id

> <Server> datacenters_servers_find_by_id(datacenter_id, server_id, opts)

Retrieve servers by ID

Retrieve information about the specified server within the data center, such as its configuration, provisioning status, and so on.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve servers by ID
  result = api_instance.datacenters_servers_find_by_id(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_find_by_id_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Retrieve servers by ID
  data, status_code, headers = api_instance.datacenters_servers_find_by_id_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Server**](../models/Server.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_get

> <Servers> datacenters_servers_get(datacenter_id, opts)

List servers 

List all servers within the data center.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  upgrade_needed: true, # Boolean | Filter servers that can or that cannot be upgraded.
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List servers 
  result = api_instance.datacenters_servers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_get: #{e}"
end
```

#### Using the datacenters_servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Servers>, Integer, Hash)> datacenters_servers_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List servers 
  data, status_code, headers = api_instance.datacenters_servers_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Servers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **upgrade_needed** | **Boolean** | Filter servers that can or that cannot be upgraded. | [optional] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**Servers**](../models/Servers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_patch

> <Server> datacenters_servers_patch(datacenter_id, server_id, server, opts)

Partially modify servers

Update the properties of the specified server within the data center.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
server = Ionoscloud::ServerProperties.new # ServerProperties | The properties of the server to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify servers
  result = api_instance.datacenters_servers_patch(datacenter_id, server_id, server, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_patch: #{e}"
end
```

#### Using the datacenters_servers_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_patch_with_http_info(datacenter_id, server_id, server, opts)

```ruby
begin
  # Partially modify servers
  data, status_code, headers = api_instance.datacenters_servers_patch_with_http_info(datacenter_id, server_id, server, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **server** | [**ServerProperties**](../models/ServerProperties.md) | The properties of the server to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Server**](../models/Server.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_post

> <Server> datacenters_servers_post(datacenter_id, server, opts)

Create a Server

Creates a server within the specified data center. You can also use this request to configure the boot volumes and connect to existing LANs at the same time.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server = Ionoscloud::Server.new({properties: Ionoscloud::ServerProperties.new}) # Server | The server to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Server
  result = api_instance.datacenters_servers_post(datacenter_id, server, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_post: #{e}"
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
  puts "Error when calling ServersApi->datacenters_servers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server** | [**Server**](../models/Server.md) | The server to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Server**](../models/Server.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_put

> <Server> datacenters_servers_put(datacenter_id, server_id, server, opts)

Modify a Server by ID

Modifies the properties of the specified server within the data center.  Starting with v5, the 'allowReboot' attribute is retired; while previously required for changing certain server properties, this behavior is now implicit, and the backend will perform this automatically. For example, in earlier versions, when the CPU family is changed, 'allowReboot' had to be set to 'true'; this is no longer required, the reboot will be performed automatically.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
server = Ionoscloud::Server.new({properties: Ionoscloud::ServerProperties.new}) # Server | The modified server
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Server by ID
  result = api_instance.datacenters_servers_put(datacenter_id, server_id, server, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_put: #{e}"
end
```

#### Using the datacenters_servers_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> datacenters_servers_put_with_http_info(datacenter_id, server_id, server, opts)

```ruby
begin
  # Modify a Server by ID
  data, status_code, headers = api_instance.datacenters_servers_put_with_http_info(datacenter_id, server_id, server, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **server** | [**Server**](../models/Server.md) | The modified server |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Server**](../models/Server.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_reboot_post

> datacenters_servers_reboot_post(datacenter_id, server_id, opts)

Reboot servers

Force a hard reboot of the specified server within the data center. Don't use this method if you wish to reboot gracefully. This is an equivalent of powering down a computer and turning it back on.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Reboot servers
  api_instance.datacenters_servers_reboot_post(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_reboot_post: #{e}"
end
```

#### Using the datacenters_servers_reboot_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_reboot_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Reboot servers
  data, status_code, headers = api_instance.datacenters_servers_reboot_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_reboot_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
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


## datacenters_servers_remote_console_get

> <RemoteConsoleUrl> datacenters_servers_remote_console_get(datacenter_id, server_id, opts)

Get Remote Console link

Retrieve a link with a JSON Web Token for accessing the server's Remote Console.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Remote Console link
  result = api_instance.datacenters_servers_remote_console_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_remote_console_get: #{e}"
end
```

#### Using the datacenters_servers_remote_console_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteConsoleUrl>, Integer, Hash)> datacenters_servers_remote_console_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Get Remote Console link
  data, status_code, headers = api_instance.datacenters_servers_remote_console_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteConsoleUrl>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_remote_console_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**RemoteConsoleUrl**](../models/RemoteConsoleUrl.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_resume_post

> datacenters_servers_resume_post(datacenter_id, server_id, opts)

Resume a Cube Server by ID

Resumes a suspended Cube Server specified by its ID.  Since the suspended instance was not deleted the allocated resources continue to be billed. You can perform this operation only for Cube Servers.  To check the status of the request, you can use the 'Location' HTTP header in the response (see 'Requests' for more information).

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Resume a Cube Server by ID
  api_instance.datacenters_servers_resume_post(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_resume_post: #{e}"
end
```

#### Using the datacenters_servers_resume_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_resume_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Resume a Cube Server by ID
  data, status_code, headers = api_instance.datacenters_servers_resume_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_resume_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
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


## datacenters_servers_start_post

> datacenters_servers_start_post(datacenter_id, server_id, opts)

Start an Enterprise Server by ID

Starts the Enterprise Server specified by its ID.  >Note that you cannot use this method to start a Cube Server.  By starting the Enterprise Server, cores and RAM are provisioned, and the billing continues.  If the server's public IPv4 address has been deallocated, a new IPv4 address will be assigned. IPv6 blocks and addresses will remain unchanged when stopping and starting a server.  To check the status of the request, you can use the 'Location' HTTP header in the response (see 'Requests' for more information).

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Start an Enterprise Server by ID
  api_instance.datacenters_servers_start_post(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_start_post: #{e}"
end
```

#### Using the datacenters_servers_start_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_start_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Start an Enterprise Server by ID
  data, status_code, headers = api_instance.datacenters_servers_start_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_start_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
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


## datacenters_servers_stop_post

> datacenters_servers_stop_post(datacenter_id, server_id, opts)

Stop an Enterprise Server by ID

Stops the Enterprise Server specified by its ID.   >Note that you cannot use this method to stop a Cube Server.   By stopping the Enterprise Server, cores and RAM are freed and no longer charged.  Public IPv4 IPs that are not reserved are returned to the IPv4 pool. IPv6 blocks and addresses will remain unchanged when stopping and starting a server.  To check the status of the request, you can use the 'Location' HTTP header in the response (see 'Requests' for more information).

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Stop an Enterprise Server by ID
  api_instance.datacenters_servers_stop_post(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_stop_post: #{e}"
end
```

#### Using the datacenters_servers_stop_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_stop_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Stop an Enterprise Server by ID
  data, status_code, headers = api_instance.datacenters_servers_stop_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_stop_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
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


## datacenters_servers_suspend_post

> datacenters_servers_suspend_post(datacenter_id, server_id, opts)

Suspend a Cube Server by ID

Suspends the specified Cubes instance within the data center.   The instance is not deleted and allocated resources continue to be billed. You can perform this operation only for Cube Servers.  To check the status of the request, you can use the 'Location' HTTP header in the response (see 'Requests' for more information).

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Suspend a Cube Server by ID
  api_instance.datacenters_servers_suspend_post(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_suspend_post: #{e}"
end
```

#### Using the datacenters_servers_suspend_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_suspend_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Suspend a Cube Server by ID
  data, status_code, headers = api_instance.datacenters_servers_suspend_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_suspend_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
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


## datacenters_servers_token_get

> <Token> datacenters_servers_token_get(datacenter_id, server_id, opts)

Get JASON Web Token

Retrieve a JSON Web Token from the server for use in login operations (such as accessing the server's console).

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get JASON Web Token
  result = api_instance.datacenters_servers_token_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_token_get: #{e}"
end
```

#### Using the datacenters_servers_token_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Token>, Integer, Hash)> datacenters_servers_token_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Get JASON Web Token
  data, status_code, headers = api_instance.datacenters_servers_token_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Token>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_token_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Token**](../models/Token.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_upgrade_post

> datacenters_servers_upgrade_post(datacenter_id, server_id, opts)

Upgrade a Server by ID

Upgrades the server version.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Upgrade a Server by ID
  api_instance.datacenters_servers_upgrade_post(datacenter_id, server_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_upgrade_post: #{e}"
end
```

#### Using the datacenters_servers_upgrade_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_upgrade_post_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Upgrade a Server by ID
  data, status_code, headers = api_instance.datacenters_servers_upgrade_post_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_upgrade_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
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


## datacenters_servers_volumes_delete

> datacenters_servers_volumes_delete(datacenter_id, server_id, volume_id, opts)

Detach a Volume by ID

Detachs the specified volume from the server.  Note that only the volume's connection to the specified server is disconnected. If you want to delete the volume, you must submit a separate request to perform the deletion.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Detach a Volume by ID
  api_instance.datacenters_servers_volumes_delete(datacenter_id, server_id, volume_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_delete: #{e}"
end
```

#### Using the datacenters_servers_volumes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_volumes_delete_with_http_info(datacenter_id, server_id, volume_id, opts)

```ruby
begin
  # Detach a Volume by ID
  data, status_code, headers = api_instance.datacenters_servers_volumes_delete_with_http_info(datacenter_id, server_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **volume_id** | **String** | The unique ID of the volume. |  |
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


## datacenters_servers_volumes_find_by_id

> <Volume> datacenters_servers_volumes_find_by_id(datacenter_id, server_id, volume_id, opts)

Get Attached Volume by ID

Retrieves the properties of the volume attached to the specified server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Attached Volume by ID
  result = api_instance.datacenters_servers_volumes_find_by_id(datacenter_id, server_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_volumes_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_servers_volumes_find_by_id_with_http_info(datacenter_id, server_id, volume_id, opts)

```ruby
begin
  # Get Attached Volume by ID
  data, status_code, headers = api_instance.datacenters_servers_volumes_find_by_id_with_http_info(datacenter_id, server_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **volume_id** | **String** | The unique ID of the volume. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Volume**](../models/Volume.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_volumes_get

> <AttachedVolumes> datacenters_servers_volumes_get(datacenter_id, server_id, opts)

Get Attached Volumes

Lists all volumes attached to the specified server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # Get Attached Volumes
  result = api_instance.datacenters_servers_volumes_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_get: #{e}"
end
```

#### Using the datacenters_servers_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttachedVolumes>, Integer, Hash)> datacenters_servers_volumes_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # Get Attached Volumes
  data, status_code, headers = api_instance.datacenters_servers_volumes_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttachedVolumes>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**AttachedVolumes**](../models/AttachedVolumes.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_volumes_post

> <Volume> datacenters_servers_volumes_post(datacenter_id, server_id, volume, opts)

Attach a Volume to a Server

Attachs an existing storage volume to the specified server.  You can attach an existing volume in the VDC to a server. To move a volume from one server to another, you must first detach the volume from the first server and attach it to the second server.  It is also possible to create and attach a volume in one step by simply providing a new volume description as a payload. The only difference is the URL; see 'Creating a Volume' for details about volumes.  Note that the combined total of attached volumes and NICs cannot exceed 24 per server.

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

api_instance = Ionoscloud::ServersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
volume = Ionoscloud::Volume.new({properties: Ionoscloud::VolumeProperties.new({size: 100.0})}) # Volume | The volume to be attached (or created and attached).
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Attach a Volume to a Server
  result = api_instance.datacenters_servers_volumes_post(datacenter_id, server_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_post: #{e}"
end
```

#### Using the datacenters_servers_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_servers_volumes_post_with_http_info(datacenter_id, server_id, volume, opts)

```ruby
begin
  # Attach a Volume to a Server
  data, status_code, headers = api_instance.datacenters_servers_volumes_post_with_http_info(datacenter_id, server_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ServersApi->datacenters_servers_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **volume** | [**Volume**](../models/Volume.md) | The volume to be attached (or created and attached). |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Volume**](../models/Volume.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

