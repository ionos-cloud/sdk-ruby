# ImagesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**images_delete**](ImagesApi.md#images_delete) | **DELETE** /images/{imageId} | Delete an Image |
| [**images_find_by_id**](ImagesApi.md#images_find_by_id) | **GET** /images/{imageId} | Retrieve an Image |
| [**images_get**](ImagesApi.md#images_get) | **GET** /images | List Images |
| [**images_patch**](ImagesApi.md#images_patch) | **PATCH** /images/{imageId} | Partially modify an Image |
| [**images_put**](ImagesApi.md#images_put) | **PUT** /images/{imageId} | Modify an Image |


## images_delete

> images_delete(image_id, opts)

Delete an Image

Deletes the specified image. This operation is permitted on private image only.

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

api_instance = Ionoscloud::ImagesApi.new
image_id = 'image_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete an Image
  api_instance.images_delete(image_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_delete: #{e}"
end
```

#### Using the images_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> images_delete_with_http_info(image_id, opts)

```ruby
begin
  # Delete an Image
  data, status_code, headers = api_instance.images_delete_with_http_info(image_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** |  |  |
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


## images_find_by_id

> <Image> images_find_by_id(image_id, opts)

Retrieve an Image

Retrieves the attributes of a given image.

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

api_instance = Ionoscloud::ImagesApi.new
image_id = 'image_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve an Image
  result = api_instance.images_find_by_id(image_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_find_by_id: #{e}"
end
```

#### Using the images_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> images_find_by_id_with_http_info(image_id, opts)

```ruby
begin
  # Retrieve an Image
  data, status_code, headers = api_instance.images_find_by_id_with_http_info(image_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## images_get

> <Images> images_get(opts)

List Images

Retrieve a list of images within the datacenter

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

api_instance = Ionoscloud::ImagesApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Images
  result = api_instance.images_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_get: #{e}"
end
```

#### Using the images_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Images>, Integer, Hash)> images_get_with_http_info(opts)

```ruby
begin
  # List Images
  data, status_code, headers = api_instance.images_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Images>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Images**](Images.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## images_patch

> <Image> images_patch(image_id, image, opts)

Partially modify an Image

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

api_instance = Ionoscloud::ImagesApi.new
image_id = 'image_id_example' # String | 
image = Ionoscloud::ImageProperties.new({licence_type: 'UNKNOWN'}) # ImageProperties | Modified Image
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify an Image
  result = api_instance.images_patch(image_id, image, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_patch: #{e}"
end
```

#### Using the images_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> images_patch_with_http_info(image_id, image, opts)

```ruby
begin
  # Partially modify an Image
  data, status_code, headers = api_instance.images_patch_with_http_info(image_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** |  |  |
| **image** | [**ImageProperties**](ImageProperties.md) | Modified Image |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## images_put

> <Image> images_put(image_id, image, opts)

Modify an Image

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

api_instance = Ionoscloud::ImagesApi.new
image_id = 'image_id_example' # String | 
image = Ionoscloud::Image.new({properties: Ionoscloud::ImageProperties.new({licence_type: 'UNKNOWN'})}) # Image | Modified Image
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify an Image
  result = api_instance.images_put(image_id, image, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_put: #{e}"
end
```

#### Using the images_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> images_put_with_http_info(image_id, image, opts)

```ruby
begin
  # Modify an Image
  data, status_code, headers = api_instance.images_put_with_http_info(image_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImagesApi->images_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** |  |  |
| **image** | [**Image**](Image.md) | Modified Image |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Image**](Image.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

