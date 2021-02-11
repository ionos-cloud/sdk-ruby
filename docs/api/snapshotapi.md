# SnapshotApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**snapshots\_delete**](snapshotapi.md#snapshots_delete) | **DELETE** /snapshots/{snapshotId} | Delete a Snapshot |
| [**snapshots\_find\_by\_id**](snapshotapi.md#snapshots_find_by_id) | **GET** /snapshots/{snapshotId} | Retrieve a Snapshot by its uuid. |
| [**snapshots\_get**](snapshotapi.md#snapshots_get) | **GET** /snapshots | List Snapshots |
| [**snapshots\_patch**](snapshotapi.md#snapshots_patch) | **PATCH** /snapshots/{snapshotId} | Partially modify a Snapshot |
| [**snapshots\_put**](snapshotapi.md#snapshots_put) | **PUT** /snapshots/{snapshotId} | Modify a Snapshot |

## snapshots\_delete

> Object snapshots\_delete\(snapshot\_id, opts\)

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

#### Using the snapshots\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> snapshots\_delete\_with\_http\_info\(snapshot\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_find\_by\_id

> snapshots\_find\_by\_id\(snapshot\_id, opts\)

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

#### Using the snapshots\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_find\_by\_id\_with\_http\_info\(snapshot\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Snapshot**](../models/snapshot.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_get

> snapshots\_get\(opts\)

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

#### Using the snapshots\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_get\_with\_http\_info\(opts\)

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
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Snapshots**](../models/snapshots.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_patch

> snapshots\_patch\(snapshot\_id, snapshot, opts\)

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

#### Using the snapshots\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_patch\_with\_http\_info\(snapshot\_id, snapshot, opts\)

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
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **snapshot** | [**SnapshotProperties**](../models/snapshotproperties.md) | Modified Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Snapshot**](../models/snapshot.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## snapshots\_put

> snapshots\_put\(snapshot\_id, snapshot, opts\)

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

#### Using the snapshots\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_put\_with\_http\_info\(snapshot\_id, snapshot, opts\)

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
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **snapshot** | [**Snapshot**](../models/snapshot.md) | Modified Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Snapshot**](../models/snapshot.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

