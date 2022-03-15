# VolumesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_volumes_create_snapshot_post**](VolumesApi.md#datacenters_volumes_create_snapshot_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/create-snapshot | Create volume snapshots |
| [**datacenters_volumes_delete**](VolumesApi.md#datacenters_volumes_delete) | **DELETE** /datacenters/{datacenterId}/volumes/{volumeId} | Delete volumes |
| [**datacenters_volumes_find_by_id**](VolumesApi.md#datacenters_volumes_find_by_id) | **GET** /datacenters/{datacenterId}/volumes/{volumeId} | Retrieve volumes |
| [**datacenters_volumes_get**](VolumesApi.md#datacenters_volumes_get) | **GET** /datacenters/{datacenterId}/volumes | List volumes |
| [**datacenters_volumes_patch**](VolumesApi.md#datacenters_volumes_patch) | **PATCH** /datacenters/{datacenterId}/volumes/{volumeId} | Partially modify volumes |
| [**datacenters_volumes_post**](VolumesApi.md#datacenters_volumes_post) | **POST** /datacenters/{datacenterId}/volumes | Create volumes |
| [**datacenters_volumes_put**](VolumesApi.md#datacenters_volumes_put) | **PUT** /datacenters/{datacenterId}/volumes/{volumeId} | Modify volumes |
| [**datacenters_volumes_restore_snapshot_post**](VolumesApi.md#datacenters_volumes_restore_snapshot_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/restore-snapshot | Restore volume snapshots |


## datacenters_volumes_create_snapshot_post

> <Snapshot> datacenters_volumes_create_snapshot_post(datacenter_id, volume_id, opts)

Create volume snapshots

Create a snapshot of the specified volume within the data center; this snapshot can later be used to restore this volume.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  name: 'name_example', # String | Snapshot name
  description: 'description_example', # String | Snapshot description
  sec_auth_protection: true, # Boolean | Flag for enabling extra protection for this snapshot, such as two-step verification.
  licence_type: 'UNKNOWN' # String | The OS type for this snapshot.
}

begin
  # Create volume snapshots
  result = api_instance.datacenters_volumes_create_snapshot_post(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_create_snapshot_post: #{e}"
end
```

#### Using the datacenters_volumes_create_snapshot_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> datacenters_volumes_create_snapshot_post_with_http_info(datacenter_id, volume_id, opts)

```ruby
begin
  # Create volume snapshots
  data, status_code, headers = api_instance.datacenters_volumes_create_snapshot_post_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_create_snapshot_post_with_http_info: #{e}"
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
| **name** | **String** | Snapshot name | [optional] |
| **description** | **String** | Snapshot description | [optional] |
| **sec_auth_protection** | **Boolean** | Flag for enabling extra protection for this snapshot, such as two-step verification. | [optional] |
| **licence_type** | **String** | The OS type for this snapshot. | [optional] |

### Return type

[**Snapshot**](../models/Snapshot.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## datacenters_volumes_delete

> datacenters_volumes_delete(datacenter_id, volume_id, opts)

Delete volumes

Delete the specified volume within the data center. Use with caution, the volume will be permanently removed!

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete volumes
  api_instance.datacenters_volumes_delete(datacenter_id, volume_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_delete: #{e}"
end
```

#### Using the datacenters_volumes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_volumes_delete_with_http_info(datacenter_id, volume_id, opts)

```ruby
begin
  # Delete volumes
  data, status_code, headers = api_instance.datacenters_volumes_delete_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_find_by_id

> <Volume> datacenters_volumes_find_by_id(datacenter_id, volume_id, opts)

Retrieve volumes

Retrieve the properties of the specified volume within the data center.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve volumes
  result = api_instance.datacenters_volumes_find_by_id(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_find_by_id: #{e}"
end
```

#### Using the datacenters_volumes_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_volumes_find_by_id_with_http_info(datacenter_id, volume_id, opts)

```ruby
begin
  # Retrieve volumes
  data, status_code, headers = api_instance.datacenters_volumes_find_by_id_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_find_by_id_with_http_info: #{e}"
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

[**Volume**](../models/Volume.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_get

> <Volumes> datacenters_volumes_get(datacenter_id, opts)

List volumes

List all the volumes within the data center.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List volumes
  result = api_instance.datacenters_volumes_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_get: #{e}"
end
```

#### Using the datacenters_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volumes>, Integer, Hash)> datacenters_volumes_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List volumes
  data, status_code, headers = api_instance.datacenters_volumes_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volumes>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**Volumes**](../models/Volumes.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_volumes_patch

> <Volume> datacenters_volumes_patch(datacenter_id, volume_id, volume, opts)

Partially modify volumes

Update the properties of the specified storage volume within the data center.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
volume = Ionoscloud::VolumeProperties.new({size: 100.0}) # VolumeProperties | The properties of the volume to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify volumes
  result = api_instance.datacenters_volumes_patch(datacenter_id, volume_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_patch: #{e}"
end
```

#### Using the datacenters_volumes_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_volumes_patch_with_http_info(datacenter_id, volume_id, volume, opts)

```ruby
begin
  # Partially modify volumes
  data, status_code, headers = api_instance.datacenters_volumes_patch_with_http_info(datacenter_id, volume_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the volume. |  |
| **volume** | [**VolumeProperties**](VolumeProperties.md) | The properties of the volume to be updated. |  |
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


## datacenters_volumes_post

> <Volume> datacenters_volumes_post(datacenter_id, volume, opts)

Create volumes

Create a storage volume within the specified data center. The volume will not be attached! Attaching volumes is described in the Servers section.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume = Ionoscloud::Volume.new({properties: Ionoscloud::VolumeProperties.new({size: 100.0})}) # Volume | The volume to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create volumes
  result = api_instance.datacenters_volumes_post(datacenter_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_post: #{e}"
end
```

#### Using the datacenters_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_volumes_post_with_http_info(datacenter_id, volume, opts)

```ruby
begin
  # Create volumes
  data, status_code, headers = api_instance.datacenters_volumes_post_with_http_info(datacenter_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume** | [**Volume**](Volume.md) | The volume to create. |  |
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


## datacenters_volumes_put

> <Volume> datacenters_volumes_put(datacenter_id, volume_id, volume, opts)

Modify volumes

Modify the properties of the specified volume within the data center.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
volume = Ionoscloud::Volume.new({properties: Ionoscloud::VolumeProperties.new({size: 100.0})}) # Volume | The modified volume
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify volumes
  result = api_instance.datacenters_volumes_put(datacenter_id, volume_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_put: #{e}"
end
```

#### Using the datacenters_volumes_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> datacenters_volumes_put_with_http_info(datacenter_id, volume_id, volume, opts)

```ruby
begin
  # Modify volumes
  data, status_code, headers = api_instance.datacenters_volumes_put_with_http_info(datacenter_id, volume_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **volume_id** | **String** | The unique ID of the volume. |  |
| **volume** | [**Volume**](Volume.md) | The modified volume |  |
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


## datacenters_volumes_restore_snapshot_post

> datacenters_volumes_restore_snapshot_post(datacenter_id, volume_id, opts)

Restore volume snapshots

Restore a snapshot for the specified volume within the data center. A snapshot is an image of a volume, which can be used to restore this volume at a later time.

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

api_instance = Ionoscloud::VolumesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
volume_id = 'volume_id_example' # String | The unique ID of the volume.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  snapshot_id: 'snapshot_id_example' # String | The unique ID of the snapshot.
}

begin
  # Restore volume snapshots
  api_instance.datacenters_volumes_restore_snapshot_post(datacenter_id, volume_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_restore_snapshot_post: #{e}"
end
```

#### Using the datacenters_volumes_restore_snapshot_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_volumes_restore_snapshot_post_with_http_info(datacenter_id, volume_id, opts)

```ruby
begin
  # Restore volume snapshots
  data, status_code, headers = api_instance.datacenters_volumes_restore_snapshot_post_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumesApi->datacenters_volumes_restore_snapshot_post_with_http_info: #{e}"
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
| **snapshot_id** | **String** | The unique ID of the snapshot. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

