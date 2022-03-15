# FlowLogsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_nics_flowlogs_delete**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Delete Flow Logs |
| [**datacenters_servers_nics_flowlogs_find_by_id**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Retrieve Flow Logs |
| [**datacenters_servers_nics_flowlogs_get**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs | List Flow Logs |
| [**datacenters_servers_nics_flowlogs_patch**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Partially modify Flow Logs |
| [**datacenters_servers_nics_flowlogs_post**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs | Create Flow Logs |
| [**datacenters_servers_nics_flowlogs_put**](FlowLogsApi.md#datacenters_servers_nics_flowlogs_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/flowlogs/{flowlogId} | Modify Flow Logs |


## datacenters_servers_nics_flowlogs_delete

> datacenters_servers_nics_flowlogs_delete(datacenter_id, server_id, nic_id, flowlog_id, opts)

Delete Flow Logs

Delete the specified Flow Log.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Delete Flow Logs
  api_instance.datacenters_servers_nics_flowlogs_delete(datacenter_id, server_id, nic_id, flowlog_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_delete: #{e}"
end
```

#### Using the datacenters_servers_nics_flowlogs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_nics_flowlogs_delete_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, opts)

```ruby
begin
  # Delete Flow Logs
  data, status_code, headers = api_instance.datacenters_servers_nics_flowlogs_delete_with_http_info(datacenter_id, server_id, nic_id, flowlog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling FlowLogsApi->datacenters_servers_nics_flowlogs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_find_by_id

> <FlowLog> datacenters_servers_nics_flowlogs_find_by_id(datacenter_id, server_id, nic_id, flowlog_id, opts)

Retrieve Flow Logs

Retrieve the properties of the specified Flow Log.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Retrieve Flow Logs
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
  # Retrieve Flow Logs
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_get

> <FlowLogs> datacenters_servers_nics_flowlogs_get(datacenter_id, server_id, nic_id, opts)

List Flow Logs

List all the Flow Logs for the specified NIC.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**FlowLogs**](../models/FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_patch

> <FlowLog> datacenters_servers_nics_flowlogs_patch(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)

Partially modify Flow Logs

Update the specified Flow Log record.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log.
flowlog = Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'}) # FlowLogProperties | The Flow Log record to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Partially modify Flow Logs
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
  # Partially modify Flow Logs
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log. |  |
| **flowlog** | [**FlowLogProperties**](FlowLogProperties.md) | The Flow Log record to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_post

> <FlowLog> datacenters_servers_nics_flowlogs_post(datacenter_id, server_id, nic_id, flowlog, opts)

Create Flow Logs

Add a new Flow Log for the specified NIC.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
flowlog = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLog | The Flow Log to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Create Flow Logs
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
  # Create Flow Logs
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **flowlog** | [**FlowLog**](FlowLog.md) | The Flow Log to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_flowlogs_put

> <FlowLog> datacenters_servers_nics_flowlogs_put(datacenter_id, server_id, nic_id, flowlog_id, flowlog, opts)

Modify Flow Logs

Modify the specified Flow Log record.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
flowlog_id = 'flowlog_id_example' # String | The unique ID of the Flow Log.
flowlog = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLogPut | The modified Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Modify Flow Logs
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
  # Modify Flow Logs
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **flowlog_id** | **String** | The unique ID of the Flow Log. |  |
| **flowlog** | [**FlowLogPut**](FlowLogPut.md) | The modified Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

