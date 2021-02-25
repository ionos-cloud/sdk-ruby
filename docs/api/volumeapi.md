# VolumeApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**datacenters\_volumes\_create\_snapshot\_post**](volumeapi.md#datacenters_volumes_create_snapshot_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/create-snapshot | Create Volume Snapshot |
| [**datacenters\_volumes\_delete**](volumeapi.md#datacenters_volumes_delete) | **DELETE** /datacenters/{datacenterId}/volumes/{volumeId} | Delete a Volume |
| [**datacenters\_volumes\_find\_by\_id**](volumeapi.md#datacenters_volumes_find_by_id) | **GET** /datacenters/{datacenterId}/volumes/{volumeId} | Retrieve a Volume |
| [**datacenters\_volumes\_get**](volumeapi.md#datacenters_volumes_get) | **GET** /datacenters/{datacenterId}/volumes | List Volumes |
| [**datacenters\_volumes\_patch**](volumeapi.md#datacenters_volumes_patch) | **PATCH** /datacenters/{datacenterId}/volumes/{volumeId} | Partially modify a Volume |
| [**datacenters\_volumes\_post**](volumeapi.md#datacenters_volumes_post) | **POST** /datacenters/{datacenterId}/volumes | Create a Volume |
| [**datacenters\_volumes\_put**](volumeapi.md#datacenters_volumes_put) | **PUT** /datacenters/{datacenterId}/volumes/{volumeId} | Modify a Volume |
| [**datacenters\_volumes\_restore\_snapshot\_post**](volumeapi.md#datacenters_volumes_restore_snapshot_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/restore-snapshot | Restore Volume Snapshot |

## datacenters\_volumes\_create\_snapshot\_post

> datacenters\_volumes\_create\_snapshot\_post\(datacenter\_id, volume\_id, opts\)

Create Volume Snapshot

Creates a snapshot of a volume within the datacenter. You can use a snapshot to create a new storage volume or to restore a storage volume.

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  name: 'name_example', # String | The name of the snapshot
  description: 'description_example', # String | The description of the snapshot
  sec_auth_protection: true, # Boolean | Flag representing if extra protection is enabled on snapshot e.g. Two Factor protection etc.
  licence_type: 'UNKNOWN' # String | The OS type of this Snapshot
}

begin
  # Create Volume Snapshot
  result = api_instance.datacenters_volumes_create_snapshot_post(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_create_snapshot_post: #{e}"
end
```

#### Using the datacenters\_volumes\_create\_snapshot\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_create\_snapshot\_post\_with\_http\_info\(datacenter\_id, volume\_id, opts\)

```ruby
begin
  # Create Volume Snapshot
  data, status_code, headers = api_instance.datacenters_volumes_create_snapshot_post_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_create_snapshot_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **name** | **String** | The name of the snapshot | \[optional\] |
| **description** | **String** | The description of the snapshot | \[optional\] |
| **sec\_auth\_protection** | **Boolean** | Flag representing if extra protection is enabled on snapshot e.g. Two Factor protection etc. | \[optional\] |
| **licence\_type** | **String** | The OS type of this Snapshot | \[optional\] |

### Return type

[**Snapshot**](../models/snapshot.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/x-www-form-urlencoded
* **Accept**: application/json

## datacenters\_volumes\_delete

> Object datacenters\_volumes\_delete\(datacenter\_id, volume\_id, opts\)

Delete a Volume

Deletes the specified volume. This will result in the volume being removed from your datacenter. Use this with caution.

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Volume
  result = api_instance.datacenters_volumes_delete(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_delete: #{e}"
end
```

#### Using the datacenters\_volumes\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_volumes\_delete\_with\_http\_info\(datacenter\_id, volume\_id, opts\)

```ruby
begin
  # Delete a Volume
  data, status_code, headers = api_instance.datacenters_volumes_delete_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_volumes\_find\_by\_id

> datacenters\_volumes\_find\_by\_id\(datacenter\_id, volume\_id, opts\)

Retrieve a Volume

Retrieves the attributes of a given Volume

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Volume
  result = api_instance.datacenters_volumes_find_by_id(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_find_by_id: #{e}"
end
```

#### Using the datacenters\_volumes\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_find\_by\_id\_with\_http\_info\(datacenter\_id, volume\_id, opts\)

```ruby
begin
  # Retrieve a Volume
  data, status_code, headers = api_instance.datacenters_volumes_find_by_id_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Volume**](../models/volume.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_volumes\_get

> datacenters\_volumes\_get\(datacenter\_id, opts\)

List Volumes

Retrieves a list of Volumes.

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Volumes 
  result = api_instance.datacenters_volumes_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_get: #{e}"
end
```

#### Using the datacenters\_volumes\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_get\_with\_http\_info\(datacenter\_id, opts\)

```ruby
begin
  # List Volumes 
  data, status_code, headers = api_instance.datacenters_volumes_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volumes>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**Volumes**](../models/volumes.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_volumes\_patch

> datacenters\_volumes\_patch\(datacenter\_id, volume\_id, volume, opts\)

Partially modify a Volume

You can use update attributes of a Volume

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
volume = Ionoscloud::VolumeProperties.new({size: 100.0}) # VolumeProperties | Modified properties of Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Volume
  result = api_instance.datacenters_volumes_patch(datacenter_id, volume_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_patch: #{e}"
end
```

#### Using the datacenters\_volumes\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_patch\_with\_http\_info\(datacenter\_id, volume\_id, volume, opts\)

```ruby
begin
  # Partially modify a Volume
  data, status_code, headers = api_instance.datacenters_volumes_patch_with_http_info(datacenter_id, volume_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **volume** | [**VolumeProperties**](../models/volumeproperties.md) | Modified properties of Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Volume**](../models/volume.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_volumes\_post

> datacenters\_volumes\_post\(datacenter\_id, volume, opts\)

Create a Volume

Creates a volume within the datacenter. This will not attach the volume to a server. Please see the Servers section for details on how to attach storage volumes

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume = Ionoscloud::Volume.new({properties: Ionoscloud::VolumeProperties.new({size: 100.0})}) # Volume | Volume to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Volume
  result = api_instance.datacenters_volumes_post(datacenter_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_post: #{e}"
end
```

#### Using the datacenters\_volumes\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_post\_with\_http\_info\(datacenter\_id, volume, opts\)

```ruby
begin
  # Create a Volume
  data, status_code, headers = api_instance.datacenters_volumes_post_with_http_info(datacenter_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume** | [**Volume**](../models/volume.md) | Volume to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Volume**](../models/volume.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_volumes\_put

> datacenters\_volumes\_put\(datacenter\_id, volume\_id, volume, opts\)

Modify a Volume

You can use update attributes of a Volume

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
volume = Ionoscloud::Volume.new({properties: Ionoscloud::VolumeProperties.new({size: 100.0})}) # Volume | Modified Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Volume
  result = api_instance.datacenters_volumes_put(datacenter_id, volume_id, volume, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_put: #{e}"
end
```

#### Using the datacenters\_volumes\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_put\_with\_http\_info\(datacenter\_id, volume\_id, volume, opts\)

```ruby
begin
  # Modify a Volume
  data, status_code, headers = api_instance.datacenters_volumes_put_with_http_info(datacenter_id, volume_id, volume, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **volume** | [**Volume**](../models/volume.md) | Modified Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Volume**](../models/volume.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_volumes\_restore\_snapshot\_post

> Object datacenters\_volumes\_restore\_snapshot\_post\(datacenter\_id, volume\_id, opts\)

Restore Volume Snapshot

This will restore a snapshot onto a volume. A snapshot is created as just another image that can be used to create subsequent volumes if you want or to restore an existing volume.

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

api_instance = Ionoscloud::VolumeApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  snapshot_id: 'snapshot_id_example' # String | This is the ID of the snapshot
}

begin
  # Restore Volume Snapshot
  result = api_instance.datacenters_volumes_restore_snapshot_post(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_restore_snapshot_post: #{e}"
end
```

#### Using the datacenters\_volumes\_restore\_snapshot\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_volumes\_restore\_snapshot\_post\_with\_http\_info\(datacenter\_id, volume\_id, opts\)

```ruby
begin
  # Restore Volume Snapshot
  data, status_code, headers = api_instance.datacenters_volumes_restore_snapshot_post_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling VolumeApi->datacenters_volumes_restore_snapshot_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **snapshot\_id** | **String** | This is the ID of the snapshot | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/x-www-form-urlencoded
* **Accept**: application/json

