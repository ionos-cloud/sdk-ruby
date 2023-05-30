# LabelsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_labels_delete**](LabelsApi.md#datacenters_labels_delete) | **DELETE** /datacenters/{datacenterId}/labels/{key} | Delete data center labels |
| [**datacenters_labels_find_by_key**](LabelsApi.md#datacenters_labels_find_by_key) | **GET** /datacenters/{datacenterId}/labels/{key} | Retrieve data center labels |
| [**datacenters_labels_get**](LabelsApi.md#datacenters_labels_get) | **GET** /datacenters/{datacenterId}/labels | List data center labels |
| [**datacenters_labels_post**](LabelsApi.md#datacenters_labels_post) | **POST** /datacenters/{datacenterId}/labels | Create a Data Center Label |
| [**datacenters_labels_put**](LabelsApi.md#datacenters_labels_put) | **PUT** /datacenters/{datacenterId}/labels/{key} | Modify a Data Center Label by Key |
| [**datacenters_servers_labels_delete**](LabelsApi.md#datacenters_servers_labels_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Delete server labels |
| [**datacenters_servers_labels_find_by_key**](LabelsApi.md#datacenters_servers_labels_find_by_key) | **GET** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Retrieve server labels |
| [**datacenters_servers_labels_get**](LabelsApi.md#datacenters_servers_labels_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/labels | List server labels |
| [**datacenters_servers_labels_post**](LabelsApi.md#datacenters_servers_labels_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/labels | Create a Server Label |
| [**datacenters_servers_labels_put**](LabelsApi.md#datacenters_servers_labels_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Modify a Server Label |
| [**datacenters_volumes_labels_delete**](LabelsApi.md#datacenters_volumes_labels_delete) | **DELETE** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Delete volume labels |
| [**datacenters_volumes_labels_find_by_key**](LabelsApi.md#datacenters_volumes_labels_find_by_key) | **GET** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Retrieve volume labels |
| [**datacenters_volumes_labels_get**](LabelsApi.md#datacenters_volumes_labels_get) | **GET** /datacenters/{datacenterId}/volumes/{volumeId}/labels | List volume labels |
| [**datacenters_volumes_labels_post**](LabelsApi.md#datacenters_volumes_labels_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/labels | Create a Volume Label |
| [**datacenters_volumes_labels_put**](LabelsApi.md#datacenters_volumes_labels_put) | **PUT** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Modify a Volume Label |
| [**ipblocks_labels_delete**](LabelsApi.md#ipblocks_labels_delete) | **DELETE** /ipblocks/{ipblockId}/labels/{key} | Delete IP block labels |
| [**ipblocks_labels_find_by_key**](LabelsApi.md#ipblocks_labels_find_by_key) | **GET** /ipblocks/{ipblockId}/labels/{key} | Retrieve IP block labels |
| [**ipblocks_labels_get**](LabelsApi.md#ipblocks_labels_get) | **GET** /ipblocks/{ipblockId}/labels | List IP block labels |
| [**ipblocks_labels_post**](LabelsApi.md#ipblocks_labels_post) | **POST** /ipblocks/{ipblockId}/labels | Create IP block labels |
| [**ipblocks_labels_put**](LabelsApi.md#ipblocks_labels_put) | **PUT** /ipblocks/{ipblockId}/labels/{key} | Modify a IP Block Label by ID |
| [**labels_find_by_urn**](LabelsApi.md#labels_find_by_urn) | **GET** /labels/{labelurn} | Retrieve labels by URN |
| [**labels_get**](LabelsApi.md#labels_get) | **GET** /labels | List labels  |
| [**snapshots_labels_delete**](LabelsApi.md#snapshots_labels_delete) | **DELETE** /snapshots/{snapshotId}/labels/{key} | Delete snapshot labels |
| [**snapshots_labels_find_by_key**](LabelsApi.md#snapshots_labels_find_by_key) | **GET** /snapshots/{snapshotId}/labels/{key} | Retrieve snapshot labels |
| [**snapshots_labels_get**](LabelsApi.md#snapshots_labels_get) | **GET** /snapshots/{snapshotId}/labels | List snapshot labels |
| [**snapshots_labels_post**](LabelsApi.md#snapshots_labels_post) | **POST** /snapshots/{snapshotId}/labels | Create a Snapshot Label |
| [**snapshots_labels_put**](LabelsApi.md#snapshots_labels_put) | **PUT** /snapshots/{snapshotId}/labels/{key} | Modify a Snapshot Label by ID |


## datacenters_labels_delete

> datacenters_labels_delete(datacenter_id, key, opts)

Delete data center labels

Delete the specified data center label.

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
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete data center labels
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
  # Delete data center labels
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **key** | **String** | The label key |  |
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


## datacenters_labels_find_by_key

> <LabelResource> datacenters_labels_find_by_key(datacenter_id, key, opts)

Retrieve data center labels

Retrieve the properties of the specified data center label.

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
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve data center labels
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
  # Retrieve data center labels
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **key** | **String** | The label key |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_labels_get

> <LabelResources> datacenters_labels_get(datacenter_id, opts)

List data center labels

List all the the labels for the specified data center.

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
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List data center labels
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
  # List data center labels
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](../models/LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_labels_post

> <LabelResource> datacenters_labels_post(datacenter_id, label, opts)

Create a Data Center Label

Adds a new label to the specified data center.

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
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The label to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Data Center Label
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
  # Create a Data Center Label
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The label to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_labels_put

> <LabelResource> datacenters_labels_put(datacenter_id, key, label, opts)

Modify a Data Center Label by Key

Modifies the specified data center label.

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
key = 'key_example' # String | The label key
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The modified label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Data Center Label by Key
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
  # Modify a Data Center Label by Key
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **key** | **String** | The label key |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The modified label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_labels_delete

> datacenters_servers_labels_delete(datacenter_id, server_id, key, opts)

Delete server labels

Delete the specified server label.

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
server_id = 'server_id_example' # String | The unique ID of the server.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete server labels
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
  # Delete server labels
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
| **server_id** | **String** | The unique ID of the server. |  |
| **key** | **String** | The label key |  |
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


## datacenters_servers_labels_find_by_key

> <LabelResource> datacenters_servers_labels_find_by_key(datacenter_id, server_id, key, opts)

Retrieve server labels

Retrieve the properties of the specified server label.

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
server_id = 'server_id_example' # String | The unique ID of the server.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve server labels
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
  # Retrieve server labels
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
| **server_id** | **String** | The unique ID of the server. |  |
| **key** | **String** | The label key |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_labels_get

> <LabelResources> datacenters_servers_labels_get(datacenter_id, server_id, opts)

List server labels

List all the the labels for the specified server.

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
server_id = 'server_id_example' # String | The unique ID of the server.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List server labels
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
  # List server labels
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
| **server_id** | **String** | The unique ID of the server. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](../models/LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_labels_post

> <LabelResource> datacenters_servers_labels_post(datacenter_id, server_id, label, opts)

Create a Server Label

Adds a new label to the specified server.

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
server_id = 'server_id_example' # String | The unique ID of the server.
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The label to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Server Label
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
  # Create a Server Label
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
| **server_id** | **String** | The unique ID of the server. |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The label to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_labels_put

> <LabelResource> datacenters_servers_labels_put(datacenter_id, server_id, key, label, opts)

Modify a Server Label

Modifies the specified server label.

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
server_id = 'server_id_example' # String | The unique ID of the server.
key = 'key_example' # String | The label key
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The modified label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Server Label
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
  # Modify a Server Label
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
| **server_id** | **String** | The unique ID of the server. |  |
| **key** | **String** | The label key |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The modified label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_volumes_labels_delete

> datacenters_volumes_labels_delete(datacenter_id, volume_id, key, opts)

Delete volume labels

Delete the specified volume label.

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
volume_id = 'volume_id_example' # String | The unique ID of the volume.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete volume labels
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
  # Delete volume labels
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
| **volume_id** | **String** | The unique ID of the volume. |  |
| **key** | **String** | The label key |  |
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


## datacenters_volumes_labels_find_by_key

> <LabelResource> datacenters_volumes_labels_find_by_key(datacenter_id, volume_id, key, opts)

Retrieve volume labels

Retrieve the properties of the specified volume label.

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
volume_id = 'volume_id_example' # String | The unique ID of the volume.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve volume labels
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
  # Retrieve volume labels
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
| **volume_id** | **String** | The unique ID of the volume. |  |
| **key** | **String** | The label key |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_labels_get

> <LabelResources> datacenters_volumes_labels_get(datacenter_id, volume_id, opts)

List volume labels

List all the the labels for the specified volume.

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
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List volume labels
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
  # List volume labels
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
| **volume_id** | **String** | The unique ID of the volume. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](../models/LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_labels_post

> <LabelResource> datacenters_volumes_labels_post(datacenter_id, volume_id, label, opts)

Create a Volume Label

Adds a new label to the specified volume.

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
volume_id = 'volume_id_example' # String | The unique ID of the volume.
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The label to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Volume Label
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
  # Create a Volume Label
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
| **volume_id** | **String** | The unique ID of the volume. |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The label to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_volumes_labels_put

> <LabelResource> datacenters_volumes_labels_put(datacenter_id, volume_id, key, label, opts)

Modify a Volume Label

Modifies the specified volume label.

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
volume_id = 'volume_id_example' # String | The unique ID of the volume.
key = 'key_example' # String | The label key
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The modified label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Volume Label
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
  # Modify a Volume Label
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
| **volume_id** | **String** | The unique ID of the volume. |  |
| **key** | **String** | The label key |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The modified label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipblocks_labels_delete

> ipblocks_labels_delete(ipblock_id, key, opts)

Delete IP block labels

Delete the specified IP block label.

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
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete IP block labels
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
  # Delete IP block labels
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
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **key** | **String** | The label key |  |
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


## ipblocks_labels_find_by_key

> <LabelResource> ipblocks_labels_find_by_key(ipblock_id, key, opts)

Retrieve IP block labels

Retrieve the properties of the specified IP block label.

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
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve IP block labels
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
  # Retrieve IP block labels
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
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **key** | **String** | The label key |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipblocks_labels_get

> <LabelResources> ipblocks_labels_get(ipblock_id, opts)

List IP block labels

List all the the labels for the specified IP block.

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
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List IP block labels
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
  # List IP block labels
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
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](../models/LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ipblocks_labels_post

> <LabelResource> ipblocks_labels_post(ipblock_id, label, opts)

Create IP block labels

Add a new label to the specified IP block.

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
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The label to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create IP block labels
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
  # Create IP block labels
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
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The label to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ipblocks_labels_put

> <LabelResource> ipblocks_labels_put(ipblock_id, key, label, opts)

Modify a IP Block Label by ID

Modifies the specified IP block label.

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
ipblock_id = 'ipblock_id_example' # String | The unique ID of the IP block.
key = 'key_example' # String | The label key
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The modified label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a IP Block Label by ID
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
  # Modify a IP Block Label by ID
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
| **ipblock_id** | **String** | The unique ID of the IP block. |  |
| **key** | **String** | The label key |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The modified label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## labels_find_by_urn

> <Label> labels_find_by_urn(labelurn, opts)

Retrieve labels by URN

Retrieve a label by label URN.  The URN is unique for each label, and consists of:  urn:label:<resource_type>:<resource_uuid>:<key>

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
labelurn = 'labelurn_example' # String | The label URN; URN is unique for each label, and consists of:  urn:label:<resource_type>:<resource_uuid>:<key><key>
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve labels by URN
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
  # Retrieve labels by URN
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
| **labelurn** | **String** | The label URN; URN is unique for each label, and consists of:  urn:label:&lt;resource_type&gt;:&lt;resource_uuid&gt;:&lt;key&gt;&lt;key&gt; |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Label**](../models/Label.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## labels_get

> <Labels> labels_get(opts)

List labels 

List all available labels.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List labels 
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
  # List labels 
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Labels**](../models/Labels.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_labels_delete

> snapshots_labels_delete(snapshot_id, key, opts)

Delete snapshot labels

Delete the specified snapshot label.

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
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete snapshot labels
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
  # Delete snapshot labels
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
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **key** | **String** | The label key |  |
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


## snapshots_labels_find_by_key

> <LabelResource> snapshots_labels_find_by_key(snapshot_id, key, opts)

Retrieve snapshot labels

Retrieve the properties of the specified snapshot label.

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
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
key = 'key_example' # String | The label key
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve snapshot labels
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
  # Retrieve snapshot labels
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
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **key** | **String** | The label key |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_labels_get

> <LabelResources> snapshots_labels_get(snapshot_id, opts)

List snapshot labels

List all the the labels for the specified snapshot.

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
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List snapshot labels
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
  # List snapshot labels
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
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResources**](../models/LabelResources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_labels_post

> <LabelResource> snapshots_labels_post(snapshot_id, label, opts)

Create a Snapshot Label

Adds a new label to the specified snapshot.

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
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The label to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Snapshot Label
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
  # Create a Snapshot Label
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
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The label to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## snapshots_labels_put

> <LabelResource> snapshots_labels_put(snapshot_id, key, label, opts)

Modify a Snapshot Label by ID

Modifies the specified snapshot label.

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
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
key = 'key_example' # String | The label key
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | The modified label
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Snapshot Label by ID
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
  # Modify a Snapshot Label by ID
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
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **key** | **String** | The label key |  |
| **label** | [**LabelResource**](../models/LabelResource.md) | The modified label |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**LabelResource**](../models/LabelResource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

