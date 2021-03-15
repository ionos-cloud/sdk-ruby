# FlowLogsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_nics_flowlogs_delete**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Delete a Flow Log |
| [**datacenters_servers_nics_flowlogs_find_by_id**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Retrieve a Flow Log |
| [**datacenters_servers_nics_flowlogs_get**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs | List Flow Logs |
| [**datacenters_servers_nics_flowlogs_patch**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Partially update a Flow Log |
| [**datacenters_servers_nics_flowlogs_post**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs | Create a Flow Log |
| [**datacenters_servers_nics_flowlogs_put**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Modify a Flow Log |


## datacenters_servers_nics_flowlogs_delete

> Object datacenters_servers_nics_flowlogs_delete(datacenter_id, server_id, nic_id, flowlog_id, opts)

Delete a Flow Log

Removes the specified Flow Log.

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

api_instance = Ionoscloud::FlowLogsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Delete a Flow Log
  result = api_instance.datacenters_servers_nics_flowlogs_delete(datacenter_id, server_id, nic_id, flowlog_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_delete: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_nics_flowlogs_delete_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, opts)

```ruby
begin
  # Delete a Flow Log
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_delete_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

**Object**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_find_by_id

> <FlowLog> datacenters_servers_nics_flowlogs_find_by_id(datacenter_id, server_id, nic_id, flowlog_id, opts)

Retrieve a Flow Log

Retrieves the attributes of a given Flow Log.

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

api_instance = Ionoscloud::FlowLogsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Retrieve a Flow Log
  result = api_instance.datacenters_servers_nics_flowlogs_find_by_id(datacenter_id, server_id, nic_id, flowlog_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_servers_nics_flowlogs_find_by_id_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, opts)

```ruby
begin
  # Retrieve a Flow Log
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_find_by_id_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_get

> <FlowLogs> datacenters_servers_nics_flowlogs_get(datacenter_id, server_id, nic_id, opts)

List Flow Logs

Retrieves a list of Flow Logs associated with a particular network interface.

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

api_instance = Ionoscloud::FlowLogsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
}

begin
  # List Flow Logs
  result = api_instance.datacenters_servers_nics_flowlogs_get(datacenter_id, server_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_get: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLogs>, Integer, Hash)> datacenters_servers_nics_flowlogs_get_with_http_info(datacenter_id, server_id, nic_id, opts)

```ruby
begin
  # List Flow Logs
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_get_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLogs>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_get_with_http_info: #{e}"
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
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**FlowLogs**](FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_patch

> <FlowLog> datacenters_servers_nics_flowlogs_patch(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)

Partially update a Flow Log

This will partially update a Flow Log record.

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

api_instance = Ionoscloud::FlowLogsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log
flowlog = Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'}) # FlowLogProperties | Modified Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Partially update a Flow Log
  result = api_instance.datacenters_servers_nics_flowlogs_patch(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_patch: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_servers_nics_flowlogs_patch_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)

```ruby
begin
  # Partially update a Flow Log
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_patch_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log |  |
| **flowlog** | [**FlowLogProperties**](FlowLogProperties.md) | Modified Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_post

> <FlowLog> datacenters_servers_nics_flowlogs_post(datacenter_id, server_id, nic_id, flowlog, opts)

Create a Flow Log

This will add a Flow Log to the network interface.

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

api_instance = Ionoscloud::FlowLogsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
flowlog = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLog | Flow Log to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Create a Flow Log
  result = api_instance.datacenters_servers_nics_flowlogs_post(datacenter_id, server_id, nic_id, flowlog, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_post: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_servers_nics_flowlogs_post_with_http_info(datacenter_id, server_id, nic_id, flowlog, opts)

```ruby
begin
  # Create a Flow Log
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_post_with_http_info(datacenter_id, server_id, nic_id, flowlog, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **flowlog** | [**FlowLog**](FlowLog.md) | Flow Log to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_put

> <FlowLog> datacenters_servers_nics_flowlogs_put(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)

Modify a Flow Log

This will update a Flow Log record.

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

api_instance = Ionoscloud::FlowLogsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log
flowlog = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLogPut | Modified Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Modify a Flow Log
  result = api_instance.datacenters_servers_nics_flowlogs_put(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_put: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_servers_nics_flowlogs_put_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)

```ruby
begin
  # Modify a Flow Log
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_put_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log |  |
| **flowlog** | [**FlowLogPut**](FlowLogPut.md) | Modified Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

