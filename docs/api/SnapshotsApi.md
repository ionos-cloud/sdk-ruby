# SnapshotsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**snapshots_delete**](SnapshotsApi.md#snapshots_delete) | **DELETE** /snapshots/{snapshotId} | Delete snapshots |
| [**snapshots_find_by_id**](SnapshotsApi.md#snapshots_find_by_id) | **GET** /snapshots/{snapshotId} | Retrieve snapshots by ID |
| [**snapshots_get**](SnapshotsApi.md#snapshots_get) | **GET** /snapshots | List snapshots |
| [**snapshots_patch**](SnapshotsApi.md#snapshots_patch) | **PATCH** /snapshots/{snapshotId} | Partially modify snapshots |
| [**snapshots_put**](SnapshotsApi.md#snapshots_put) | **PUT** /snapshots/{snapshotId} | Modify a Snapshot by ID |


## snapshots_delete

> snapshots_delete(snapshot_id, opts)

Delete snapshots

Deletes the specified snapshot.

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

api_instance = Ionoscloud::SnapshotsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete snapshots
  api_instance.snapshots_delete(snapshot_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_delete: #{e}"
end
```

#### Using the snapshots_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> snapshots_delete_with_http_info(snapshot_id, opts)

```ruby
begin
  # Delete snapshots
  data, status_code, headers = api_instance.snapshots_delete_with_http_info(snapshot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_find_by_id

> <Snapshot> snapshots_find_by_id(snapshot_id, opts)

Retrieve snapshots by ID

Retrieve the properties of the specified snapshot.

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

api_instance = Ionoscloud::SnapshotsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve snapshots by ID
  result = api_instance.snapshots_find_by_id(snapshot_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_find_by_id: #{e}"
end
```

#### Using the snapshots_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_find_by_id_with_http_info(snapshot_id, opts)

```ruby
begin
  # Retrieve snapshots by ID
  data, status_code, headers = api_instance.snapshots_find_by_id_with_http_info(snapshot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_find_by_id_with_http_info: #{e}"
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

[**Snapshot**](../models/Snapshot.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_get

> <Snapshots> snapshots_get(opts)

List snapshots

List all available snapshots.

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

api_instance = Ionoscloud::SnapshotsApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List snapshots
  result = api_instance.snapshots_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_get: #{e}"
end
```

#### Using the snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshots>, Integer, Hash)> snapshots_get_with_http_info(opts)

```ruby
begin
  # List snapshots
  data, status_code, headers = api_instance.snapshots_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshots>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Snapshots**](../models/Snapshots.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_patch

> <Snapshot> snapshots_patch(snapshot_id, snapshot, opts)

Partially modify snapshots

Update the properties of the specified snapshot.

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

api_instance = Ionoscloud::SnapshotsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
snapshot = Ionoscloud::SnapshotProperties.new # SnapshotProperties | The properties of the snapshot to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify snapshots
  result = api_instance.snapshots_patch(snapshot_id, snapshot, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_patch: #{e}"
end
```

#### Using the snapshots_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_patch_with_http_info(snapshot_id, snapshot, opts)

```ruby
begin
  # Partially modify snapshots
  data, status_code, headers = api_instance.snapshots_patch_with_http_info(snapshot_id, snapshot, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **snapshot** | [**SnapshotProperties**](../models/SnapshotProperties.md) | The properties of the snapshot to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Snapshot**](../models/Snapshot.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## snapshots_put

> <Snapshot> snapshots_put(snapshot_id, snapshot, opts)

Modify a Snapshot by ID

Modifies the properties of the specified snapshot.

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

api_instance = Ionoscloud::SnapshotsApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the snapshot.
snapshot = Ionoscloud::Snapshot.new({properties: Ionoscloud::SnapshotProperties.new}) # Snapshot | The modified snapshot
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Snapshot by ID
  result = api_instance.snapshots_put(snapshot_id, snapshot, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_put: #{e}"
end
```

#### Using the snapshots_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_put_with_http_info(snapshot_id, snapshot, opts)

```ruby
begin
  # Modify a Snapshot by ID
  data, status_code, headers = api_instance.snapshots_put_with_http_info(snapshot_id, snapshot, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotsApi->snapshots_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the snapshot. |  |
| **snapshot** | [**Snapshot**](../models/Snapshot.md) | The modified snapshot |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Snapshot**](../models/Snapshot.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

