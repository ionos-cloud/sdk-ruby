# SnapshotApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**snapshots_delete**](SnapshotApi.md#snapshots_delete) | **DELETE** /snapshots/{snapshotId} | Delete a Snapshot |
| [**snapshots_find_by_id**](SnapshotApi.md#snapshots_find_by_id) | **GET** /snapshots/{snapshotId} | Retrieve a Snapshot by its uuid. |
| [**snapshots_get**](SnapshotApi.md#snapshots_get) | **GET** /snapshots | List Snapshots  |
| [**snapshots_patch**](SnapshotApi.md#snapshots_patch) | **PATCH** /snapshots/{snapshotId} | Partially modify a Snapshot |
| [**snapshots_put**](SnapshotApi.md#snapshots_put) | **PUT** /snapshots/{snapshotId} | Modify a Snapshot |


## snapshots_delete

> Object snapshots_delete(snapshot_id, opts)

Delete a Snapshot

Deletes the specified Snapshot.

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

api_instance = Ionoscloud::SnapshotApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Snapshot
  result = api_instance.snapshots_delete(snapshot_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_delete: #{e}"
end
```

#### Using the snapshots_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> snapshots_delete_with_http_info(snapshot_id, opts)

```ruby
begin
  # Delete a Snapshot
  data, status_code, headers = api_instance.snapshots_delete_with_http_info(snapshot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
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


## snapshots_find_by_id

> <Snapshot> snapshots_find_by_id(snapshot_id, opts)

Retrieve a Snapshot by its uuid.

Retrieves the attributes of a given Snapshot.

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

api_instance = Ionoscloud::SnapshotApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Snapshot by its uuid.
  result = api_instance.snapshots_find_by_id(snapshot_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_find_by_id: #{e}"
end
```

#### Using the snapshots_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_find_by_id_with_http_info(snapshot_id, opts)

```ruby
begin
  # Retrieve a Snapshot by its uuid.
  data, status_code, headers = api_instance.snapshots_find_by_id_with_http_info(snapshot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_get

> <Snapshots> snapshots_get(opts)

List Snapshots 

Retrieve a list of available snapshots.

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

api_instance = Ionoscloud::SnapshotApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Snapshots 
  result = api_instance.snapshots_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_get: #{e}"
end
```

#### Using the snapshots_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshots>, Integer, Hash)> snapshots_get_with_http_info(opts)

```ruby
begin
  # List Snapshots 
  data, status_code, headers = api_instance.snapshots_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshots>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Snapshots**](Snapshots.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## snapshots_patch

> <Snapshot> snapshots_patch(snapshot_id, snapshot, opts)

Partially modify a Snapshot

You can use this method to update attributes of a Snapshot.

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

api_instance = Ionoscloud::SnapshotApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
snapshot = Ionoscloud::SnapshotProperties.new # SnapshotProperties | Modified Snapshot
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Snapshot
  result = api_instance.snapshots_patch(snapshot_id, snapshot, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_patch: #{e}"
end
```

#### Using the snapshots_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_patch_with_http_info(snapshot_id, snapshot, opts)

```ruby
begin
  # Partially modify a Snapshot
  data, status_code, headers = api_instance.snapshots_patch_with_http_info(snapshot_id, snapshot, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **snapshot** | [**SnapshotProperties**](SnapshotProperties.md) | Modified Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## snapshots_put

> <Snapshot> snapshots_put(snapshot_id, snapshot, opts)

Modify a Snapshot

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

api_instance = Ionoscloud::SnapshotApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
snapshot = Ionoscloud::Snapshot.new({properties: Ionoscloud::SnapshotProperties.new}) # Snapshot | Modified Snapshot
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Snapshot
  result = api_instance.snapshots_put(snapshot_id, snapshot, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_put: #{e}"
end
```

#### Using the snapshots_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> snapshots_put_with_http_info(snapshot_id, snapshot, opts)

```ruby
begin
  # Modify a Snapshot
  data, status_code, headers = api_instance.snapshots_put_with_http_info(snapshot_id, snapshot, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling SnapshotApi->snapshots_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **snapshot_id** | **String** | The unique ID of the Snapshot |  |
| **snapshot** | [**Snapshot**](Snapshot.md) | Modified Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

