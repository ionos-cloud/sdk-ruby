# ImageApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**images\_delete**](imageapi.md#images_delete) | **DELETE** /images/{imageId} | Delete an Image |
| [**images\_find\_by\_id**](imageapi.md#images_find_by_id) | **GET** /images/{imageId} | Retrieve an Image |
| [**images\_get**](imageapi.md#images_get) | **GET** /images | List Images |
| [**images\_patch**](imageapi.md#images_patch) | **PATCH** /images/{imageId} | Partially modify an Image |
| [**images\_put**](imageapi.md#images_put) | **PUT** /images/{imageId} | Modify an Image |

## images\_delete

> Object images\_delete\(image\_id, opts\)

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

api_instance = Ionoscloud::ImageApi.new
image_id = 'image_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete an Image
  result = api_instance.images_delete(image_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_delete: #{e}"
end
```

#### Using the images\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> images\_delete\_with\_http\_info\(image\_id, opts\)

```ruby
begin
  # Delete an Image
  data, status_code, headers = api_instance.images_delete_with_http_info(image_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **image\_id** | **String** |  |  |
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

## images\_find\_by\_id

> images\_find\_by\_id\(image\_id, opts\)

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

api_instance = Ionoscloud::ImageApi.new
image_id = 'image_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve an Image
  result = api_instance.images_find_by_id(image_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_find_by_id: #{e}"
end
```

#### Using the images\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; images\_find\_by\_id\_with\_http\_info\(image\_id, opts\)

```ruby
begin
  # Retrieve an Image
  data, status_code, headers = api_instance.images_find_by_id_with_http_info(image_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **image\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Image**](../models/image.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## images\_get

> images\_get\(opts\)

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

api_instance = Ionoscloud::ImageApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Images 
  result = api_instance.images_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_get: #{e}"
end
```

#### Using the images\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; images\_get\_with\_http\_info\(opts\)

```ruby
begin
  # List Images 
  data, status_code, headers = api_instance.images_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Images>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Images**](../models/images.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## images\_patch

> images\_patch\(image\_id, image, opts\)

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

api_instance = Ionoscloud::ImageApi.new
image_id = 'image_id_example' # String | 
image = Ionoscloud::ImageProperties.new({licence_type: 'UNKNOWN'}) # ImageProperties | Modified Image
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify an Image
  result = api_instance.images_patch(image_id, image, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_patch: #{e}"
end
```

#### Using the images\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; images\_patch\_with\_http\_info\(image\_id, image, opts\)

```ruby
begin
  # Partially modify an Image
  data, status_code, headers = api_instance.images_patch_with_http_info(image_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **image\_id** | **String** |  |  |
| **image** | [**ImageProperties**](../models/imageproperties.md) | Modified Image |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Image**](../models/image.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## images\_put

> images\_put\(image\_id, image, opts\)

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

api_instance = Ionoscloud::ImageApi.new
image_id = 'image_id_example' # String | 
image = Ionoscloud::Image.new({properties: Ionoscloud::ImageProperties.new({licence_type: 'UNKNOWN'})}) # Image | Modified Image
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify an Image
  result = api_instance.images_put(image_id, image, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_put: #{e}"
end
```

#### Using the images\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; images\_put\_with\_http\_info\(image\_id, image, opts\)

```ruby
begin
  # Modify an Image
  data, status_code, headers = api_instance.images_put_with_http_info(image_id, image, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ImageApi->images_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **image\_id** | **String** |  |  |
| **image** | [**Image**](../models/image.md) | Modified Image |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Image**](../models/image.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

