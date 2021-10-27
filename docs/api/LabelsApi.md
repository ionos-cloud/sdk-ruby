# LabelsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_labels_delete**](LabelsApi.md#datacenters_labels_delete) | **DELETE** /datacenters/{datacenterId}/labels/{key} | Delete a Label from Data Center |
| [**datacenters_labels_find_by_key**](LabelsApi.md#datacenters_labels_find_by_key) | **GET** /datacenters/{datacenterId}/labels/{key} | Retrieve a Label of Data Center |
| [**datacenters_labels_get**](LabelsApi.md#datacenters_labels_get) | **GET** /datacenters/{datacenterId}/labels | List all Data Center Labels |
| [**datacenters_labels_post**](LabelsApi.md#datacenters_labels_post) | **POST** /datacenters/{datacenterId}/labels | Add a Label to Data Center |
| [**datacenters_labels_put**](LabelsApi.md#datacenters_labels_put) | **PUT** /datacenters/{datacenterId}/labels/{key} | Modify a Label of Data Center |
| [**datacenters_servers_labels_delete**](LabelsApi.md#datacenters_servers_labels_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Delete a Label from Server |
| [**datacenters_servers_labels_find_by_key**](LabelsApi.md#datacenters_servers_labels_find_by_key) | **GET** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Retrieve a Label of Server |
| [**datacenters_servers_labels_get**](LabelsApi.md#datacenters_servers_labels_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/labels | List all Server Labels |
| [**datacenters_servers_labels_post**](LabelsApi.md#datacenters_servers_labels_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/labels | Add a Label to Server |
| [**datacenters_servers_labels_put**](LabelsApi.md#datacenters_servers_labels_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Modify a Label of Server |
| [**datacenters_volumes_labels_delete**](LabelsApi.md#datacenters_volumes_labels_delete) | **DELETE** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Delete a Label from Volume |
| [**datacenters_volumes_labels_find_by_key**](LabelsApi.md#datacenters_volumes_labels_find_by_key) | **GET** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Retrieve a Label of Volume |
| [**datacenters_volumes_labels_get**](LabelsApi.md#datacenters_volumes_labels_get) | **GET** /datacenters/{datacenterId}/volumes/{volumeId}/labels | List all Volume Labels |
| [**datacenters_volumes_labels_post**](LabelsApi.md#datacenters_volumes_labels_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/labels | Add a Label to Volume |
| [**datacenters_volumes_labels_put**](LabelsApi.md#datacenters_volumes_labels_put) | **PUT** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Modify a Label of Volume |
| [**ipblocks_labels_delete**](LabelsApi.md#ipblocks_labels_delete) | **DELETE** /ipblocks/{ipblockId}/labels/{key} | Delete a Label from IP Block |
| [**ipblocks_labels_find_by_key**](LabelsApi.md#ipblocks_labels_find_by_key) | **GET** /ipblocks/{ipblockId}/labels/{key} | Retrieve a Label of IP Block |
| [**ipblocks_labels_get**](LabelsApi.md#ipblocks_labels_get) | **GET** /ipblocks/{ipblockId}/labels | List all Ip Block Labels |
| [**ipblocks_labels_post**](LabelsApi.md#ipblocks_labels_post) | **POST** /ipblocks/{ipblockId}/labels | Add a Label to IP Block |
| [**ipblocks_labels_put**](LabelsApi.md#ipblocks_labels_put) | **PUT** /ipblocks/{ipblockId}/labels/{key} | Modify a Label of IP Block |
| [**labels_find_by_urn**](LabelsApi.md#labels_find_by_urn) | **GET** /labels/{labelurn} | Returns the label by its URN. |
| [**labels_get**](LabelsApi.md#labels_get) | **GET** /labels | List Labels  |
| [**snapshots_labels_delete**](LabelsApi.md#snapshots_labels_delete) | **DELETE** /snapshots/{snapshotId}/labels/{key} | Delete a Label from Snapshot |
| [**snapshots_labels_find_by_key**](LabelsApi.md#snapshots_labels_find_by_key) | **GET** /snapshots/{snapshotId}/labels/{key} | Retrieve a Label of Snapshot |
| [**snapshots_labels_get**](LabelsApi.md#snapshots_labels_get) | **GET** /snapshots/{snapshotId}/labels | List all Snapshot Labels |
| [**snapshots_labels_post**](LabelsApi.md#snapshots_labels_post) | **POST** /snapshots/{snapshotId}/labels | Add a Label to Snapshot |
| [**snapshots_labels_put**](LabelsApi.md#snapshots_labels_put) | **PUT** /snapshots/{snapshotId}/labels/{key} | Modify a Label of Snapshot |


## datacenters_labels_delete

> datacenters_labels_delete(datacenter_id, key, opts)

Delete a Label from Data Center

This will remove a label from the data center.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Label from Data Center
  api_instance.datacenters_labels_delete(datacenter_id, key, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_delete: #{e}"
end
```

#### Using the datacenters_labels_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_labels_delete_with_http_info(datacenter_id, key, opts)

```ruby
begin
  # Delete a Label from Data Center
  data, status_code, headers = api_instance.datacenters_labels_delete_with_http_info(datacenter_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Data Center |  |
| **key** | **String** | The key of the Label |  |
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


## datacenters_labels_find_by_key

> <LabelResource> datacenters_labels_find_by_key(datacenter_id, key, opts)

Retrieve a Label of Data Center

This will retrieve the properties of a associated label to a data center.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a Label of Data Center
  result = api_instance.datacenters_labels_find_by_key(datacenter_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_find_by_key: #{e}"
end
```

#### Using the datacenters_labels_find_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_labels_find_by_key_with_http_info(datacenter_id, key, opts)

```ruby
begin
  # Retrieve a Label of Data Center
  data, status_code, headers = api_instance.datacenters_labels_find_by_key_with_http_info(datacenter_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Data Center |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_labels_get

> <LabelResources> datacenters_labels_get(datacenter_id, opts)

List all Data Center Labels

You can retrieve a list of all labels associated with a data center.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all Data Center Labels
  result = api_instance.datacenters_labels_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_get: #{e}"
end
```

#### Using the datacenters_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResources>, Integer, Hash)> datacenters_labels_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List all Data Center Labels
  data, status_code, headers = api_instance.datacenters_labels_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Data Center |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_labels_post

> <LabelResource> datacenters_labels_post(datacenter_id, label, opts)

Add a Label to Data Center

This will add a label to the data center.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add a Label to Data Center
  result = api_instance.datacenters_labels_post(datacenter_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_post: #{e}"
end
```

#### Using the datacenters_labels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_labels_post_with_http_info(datacenter_id, label, opts)

```ruby
begin
  # Add a Label to Data Center
  data, status_code, headers = api_instance.datacenters_labels_post_with_http_info(datacenter_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Data Center |  |
| **label** | [**LabelResource**](LabelResource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_labels_put

> <LabelResource> datacenters_labels_put(datacenter_id, key, label, opts)

Modify a Label of Data Center

This will modify the value of the label on a data center.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Label of Data Center
  result = api_instance.datacenters_labels_put(datacenter_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_put: #{e}"
end
```

#### Using the datacenters_labels_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_labels_put_with_http_info(datacenter_id, key, label, opts)

```ruby
begin
  # Modify a Label of Data Center
  data, status_code, headers = api_instance.datacenters_labels_put_with_http_info(datacenter_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the Data Center |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](LabelResource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_labels_delete

> datacenters_servers_labels_delete(datacenter_id, server_id, key, opts)

Delete a Label from Server

This will remove a label from the server.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the Server
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Label from Server
  api_instance.datacenters_servers_labels_delete(datacenter_id, server_id, key, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_delete: #{e}"
end
```

#### Using the datacenters_servers_labels_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_labels_delete_with_http_info(datacenter_id, server_id, key, opts)

```ruby
begin
  # Delete a Label from Server
  data, status_code, headers = api_instance.datacenters_servers_labels_delete_with_http_info(datacenter_id, server_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **key** | **String** | The key of the Label |  |
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


## datacenters_servers_labels_find_by_key

> <LabelResource> datacenters_servers_labels_find_by_key(datacenter_id, server_id, key, opts)

Retrieve a Label of Server

This will retrieve the properties of a associated label to a server.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the Server
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a Label of Server
  result = api_instance.datacenters_servers_labels_find_by_key(datacenter_id, server_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_find_by_key: #{e}"
end
```

#### Using the datacenters_servers_labels_find_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_servers_labels_find_by_key_with_http_info(datacenter_id, server_id, key, opts)

```ruby
begin
  # Retrieve a Label of Server
  data, status_code, headers = api_instance.datacenters_servers_labels_find_by_key_with_http_info(datacenter_id, server_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_labels_get

> <LabelResources> datacenters_servers_labels_get(datacenter_id, server_id, opts)

List all Server Labels

You can retrieve a list of all labels associated with a server.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all Server Labels
  result = api_instance.datacenters_servers_labels_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_get: #{e}"
end
```

#### Using the datacenters_servers_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResources>, Integer, Hash)> datacenters_servers_labels_get_with_http_info(datacenter_id, server_id, opts)

```ruby
begin
  # List all Server Labels
  data, status_code, headers = api_instance.datacenters_servers_labels_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_labels_post

> <LabelResource> datacenters_servers_labels_post(datacenter_id, server_id, label, opts)

Add a Label to Server

This will add a label to the server.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the Server
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add a Label to Server
  result = api_instance.datacenters_servers_labels_post(datacenter_id, server_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_post: #{e}"
end
```

#### Using the datacenters_servers_labels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_servers_labels_post_with_http_info(datacenter_id, server_id, label, opts)

```ruby
begin
  # Add a Label to Server
  data, status_code, headers = api_instance.datacenters_servers_labels_post_with_http_info(datacenter_id, server_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **label** | [**LabelResource**](LabelResource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_labels_put

> <LabelResource> datacenters_servers_labels_put(datacenter_id, server_id, key, label, opts)

Modify a Label of Server

This will modify the value of the label on a server.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the Server
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Label of Server
  result = api_instance.datacenters_servers_labels_put(datacenter_id, server_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_put: #{e}"
end
```

#### Using the datacenters_servers_labels_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_servers_labels_put_with_http_info(datacenter_id, server_id, key, label, opts)

```ruby
begin
  # Modify a Label of Server
  data, status_code, headers = api_instance.datacenters_servers_labels_put_with_http_info(datacenter_id, server_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_servers_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](LabelResource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_volumes_labels_delete

> datacenters_volumes_labels_delete(datacenter_id, volume_id, key, opts)

Delete a Label from Volume

This will remove a label from the volume.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the Volume
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Label from Volume
  api_instance.datacenters_volumes_labels_delete(datacenter_id, volume_id, key, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_delete: #{e}"
end
```

#### Using the datacenters_volumes_labels_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_volumes_labels_delete_with_http_info(datacenter_id, volume_id, key, opts)

```ruby
begin
  # Delete a Label from Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_delete_with_http_info(datacenter_id, volume_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
| **key** | **String** | The key of the Label |  |
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


## datacenters_volumes_labels_find_by_key

> <LabelResource> datacenters_volumes_labels_find_by_key(datacenter_id, volume_id, key, opts)

Retrieve a Label of Volume

This will retrieve the properties of a associated label to a volume.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the Volume
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a Label of Volume
  result = api_instance.datacenters_volumes_labels_find_by_key(datacenter_id, volume_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_find_by_key: #{e}"
end
```

#### Using the datacenters_volumes_labels_find_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_volumes_labels_find_by_key_with_http_info(datacenter_id, volume_id, key, opts)

```ruby
begin
  # Retrieve a Label of Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_find_by_key_with_http_info(datacenter_id, volume_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_labels_get

> <LabelResources> datacenters_volumes_labels_get(datacenter_id, volume_id, opts)

List all Volume Labels

You can retrieve a list of all labels associated with a volume.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all Volume Labels
  result = api_instance.datacenters_volumes_labels_get(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_get: #{e}"
end
```

#### Using the datacenters_volumes_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResources>, Integer, Hash)> datacenters_volumes_labels_get_with_http_info(datacenter_id, volume_id, opts)

```ruby
begin
  # List all Volume Labels
  data, status_code, headers = api_instance.datacenters_volumes_labels_get_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_labels_post

> <LabelResource> datacenters_volumes_labels_post(datacenter_id, volume_id, label, opts)

Add a Label to Volume

This will add a label to the volume.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the Volume
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add a Label to Volume
  result = api_instance.datacenters_volumes_labels_post(datacenter_id, volume_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_post: #{e}"
end
```

#### Using the datacenters_volumes_labels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_volumes_labels_post_with_http_info(datacenter_id, volume_id, label, opts)

```ruby
begin
  # Add a Label to Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_post_with_http_info(datacenter_id, volume_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
| **label** | [**LabelResource**](LabelResource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_volumes_labels_put

> <LabelResource> datacenters_volumes_labels_put(datacenter_id, volume_id, key, label, opts)

Modify a Label of Volume

This will modify the value of the label on a volume.

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

api_instance = Ionoscloud::LabelsApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the Volume
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Label of Volume
  result = api_instance.datacenters_volumes_labels_put(datacenter_id, volume_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_put: #{e}"
end
```

#### Using the datacenters_volumes_labels_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> datacenters_volumes_labels_put_with_http_info(datacenter_id, volume_id, key, label, opts)

```ruby
begin
  # Modify a Label of Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_put_with_http_info(datacenter_id, volume_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->datacenters_volumes_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the Volume |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](LabelResource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipblocks_labels_delete

> ipblocks_labels_delete(ipblock_id, key, opts)

Delete a Label from IP Block

This will remove a label from the Ip Block.

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

api_instance = Ionoscloud::LabelsApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Label from IP Block
  api_instance.ipblocks_labels_delete(ipblock_id, key, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_delete: #{e}"
end
```

#### Using the ipblocks_labels_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ipblocks_labels_delete_with_http_info(ipblock_id, key, opts)

```ruby
begin
  # Delete a Label from IP Block
  data, status_code, headers = api_instance.ipblocks_labels_delete_with_http_info(ipblock_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the Ip Block |  |
| **key** | **String** | The key of the Label |  |
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


## ipblocks_labels_find_by_key

> <LabelResource> ipblocks_labels_find_by_key(ipblock_id, key, opts)

Retrieve a Label of IP Block

This will retrieve the properties of a associated label to a Ip Block.

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

api_instance = Ionoscloud::LabelsApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a Label of IP Block
  result = api_instance.ipblocks_labels_find_by_key(ipblock_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_find_by_key: #{e}"
end
```

#### Using the ipblocks_labels_find_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> ipblocks_labels_find_by_key_with_http_info(ipblock_id, key, opts)

```ruby
begin
  # Retrieve a Label of IP Block
  data, status_code, headers = api_instance.ipblocks_labels_find_by_key_with_http_info(ipblock_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the Ip Block |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipblocks_labels_get

> <LabelResources> ipblocks_labels_get(ipblock_id, opts)

List all Ip Block Labels

You can retrieve a list of all labels associated with a IP Block.

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

api_instance = Ionoscloud::LabelsApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all Ip Block Labels
  result = api_instance.ipblocks_labels_get(ipblock_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_get: #{e}"
end
```

#### Using the ipblocks_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResources>, Integer, Hash)> ipblocks_labels_get_with_http_info(ipblock_id, opts)

```ruby
begin
  # List all Ip Block Labels
  data, status_code, headers = api_instance.ipblocks_labels_get_with_http_info(ipblock_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the Ip Block |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipblocks_labels_post

> <LabelResource> ipblocks_labels_post(ipblock_id, label, opts)

Add a Label to IP Block

This will add a label to the Ip Block.

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

api_instance = Ionoscloud::LabelsApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add a Label to IP Block
  result = api_instance.ipblocks_labels_post(ipblock_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_post: #{e}"
end
```

#### Using the ipblocks_labels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> ipblocks_labels_post_with_http_info(ipblock_id, label, opts)

```ruby
begin
  # Add a Label to IP Block
  data, status_code, headers = api_instance.ipblocks_labels_post_with_http_info(ipblock_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the Ip Block |  |
| **label** | [**LabelResource**](LabelResource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipblocks_labels_put

> <LabelResource> ipblocks_labels_put(ipblock_id, key, label, opts)

Modify a Label of IP Block

This will modify the value of the label on a Ip Block.

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

api_instance = Ionoscloud::LabelsApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Label of IP Block
  result = api_instance.ipblocks_labels_put(ipblock_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_put: #{e}"
end
```

#### Using the ipblocks_labels_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> ipblocks_labels_put_with_http_info(ipblock_id, key, label, opts)

```ruby
begin
  # Modify a Label of IP Block
  data, status_code, headers = api_instance.ipblocks_labels_put_with_http_info(ipblock_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->ipblocks_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipblock_id** | **String** | The unique ID of the Ip Block |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](LabelResource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## labels_find_by_urn

> <Label> labels_find_by_urn(labelurn, opts)

Returns the label by its URN.

You can retrieve the details of a specific label using its URN. A URN is for uniqueness of a Label and composed using urn:label:<resource_type>:<resource_uuid>:<key>

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

api_instance = Ionoscloud::LabelsApi.new
labelurn = 'labelurn_example' # String | The URN representing the unique ID of the label. A URN is for uniqueness of a Label and composed using urn:label:<resource_type>:<resource_uuid>:<key>
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Returns the label by its URN.
  result = api_instance.labels_find_by_urn(labelurn, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->labels_find_by_urn: #{e}"
end
```

#### Using the labels_find_by_urn_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Label>, Integer, Hash)> labels_find_by_urn_with_http_info(labelurn, opts)

```ruby
begin
  # Returns the label by its URN.
  data, status_code, headers = api_instance.labels_find_by_urn_with_http_info(labelurn, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Label>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->labels_find_by_urn_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **labelurn** | **String** | The URN representing the unique ID of the label. A URN is for uniqueness of a Label and composed using urn:label:&lt;resource_type&gt;:&lt;resource_uuid&gt;:&lt;key&gt; |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Label**](Label.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## labels_get

> <Labels> labels_get(opts)

List Labels 

You can retrieve a complete list of labels that you have access to.

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

api_instance = Ionoscloud::LabelsApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Labels 
  result = api_instance.labels_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->labels_get: #{e}"
end
```

#### Using the labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Labels>, Integer, Hash)> labels_get_with_http_info(opts)

```ruby
begin
  # List Labels 
  data, status_code, headers = api_instance.labels_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Labels>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Labels**](Labels.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_labels_delete

> snapshots_labels_delete(snapshot_id, key, opts)

Delete a Label from Snapshot

This will remove a label from the snapshot.

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

api_instance = Ionoscloud::LabelsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Label from Snapshot
  api_instance.snapshots_labels_delete(snapshot_id, key, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_delete: #{e}"
end
```

#### Using the snapshots_labels_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> snapshots_labels_delete_with_http_info(snapshot_id, key, opts)

```ruby
begin
  # Delete a Label from Snapshot
  data, status_code, headers = api_instance.snapshots_labels_delete_with_http_info(snapshot_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **key** | **String** | The key of the Label |  |
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


## snapshots_labels_find_by_key

> <LabelResource> snapshots_labels_find_by_key(snapshot_id, key, opts)

Retrieve a Label of Snapshot

This will retrieve the properties of a associated label to a snapshot.

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

api_instance = Ionoscloud::LabelsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve a Label of Snapshot
  result = api_instance.snapshots_labels_find_by_key(snapshot_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_find_by_key: #{e}"
end
```

#### Using the snapshots_labels_find_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> snapshots_labels_find_by_key_with_http_info(snapshot_id, key, opts)

```ruby
begin
  # Retrieve a Label of Snapshot
  data, status_code, headers = api_instance.snapshots_labels_find_by_key_with_http_info(snapshot_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_labels_get

> <LabelResources> snapshots_labels_get(snapshot_id, opts)

List all Snapshot Labels

You can retrieve a list of all labels associated with a snapshot.

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

api_instance = Ionoscloud::LabelsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all Snapshot Labels
  result = api_instance.snapshots_labels_get(snapshot_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_get: #{e}"
end
```

#### Using the snapshots_labels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResources>, Integer, Hash)> snapshots_labels_get_with_http_info(snapshot_id, opts)

```ruby
begin
  # List all Snapshot Labels
  data, status_code, headers = api_instance.snapshots_labels_get_with_http_info(snapshot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_labels_post

> <LabelResource> snapshots_labels_post(snapshot_id, label, opts)

Add a Label to Snapshot

This will add a label to the snapshot.

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

api_instance = Ionoscloud::LabelsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add a Label to Snapshot
  result = api_instance.snapshots_labels_post(snapshot_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_post: #{e}"
end
```

#### Using the snapshots_labels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> snapshots_labels_post_with_http_info(snapshot_id, label, opts)

```ruby
begin
  # Add a Label to Snapshot
  data, status_code, headers = api_instance.snapshots_labels_post_with_http_info(snapshot_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **label** | [**LabelResource**](LabelResource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## snapshots_labels_put

> <LabelResource> snapshots_labels_put(snapshot_id, key, label, opts)

Modify a Label of Snapshot

This will modify the value of the label on a snapshot.

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

api_instance = Ionoscloud::LabelsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Label of Snapshot
  result = api_instance.snapshots_labels_put(snapshot_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_put: #{e}"
end
```

#### Using the snapshots_labels_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LabelResource>, Integer, Hash)> snapshots_labels_put_with_http_info(snapshot_id, key, label, opts)

```ruby
begin
  # Modify a Label of Snapshot
  data, status_code, headers = api_instance.snapshots_labels_put_with_http_info(snapshot_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelsApi->snapshots_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](LabelResource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
