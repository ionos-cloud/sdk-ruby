# UserS3KeysApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**um_users_s3keys_delete**](UserS3KeysApi.md#um_users_s3keys_delete) | **DELETE** /um/users/{userId}/s3keys/{keyId} | Delete S3 keys |
| [**um_users_s3keys_find_by_key_id**](UserS3KeysApi.md#um_users_s3keys_find_by_key_id) | **GET** /um/users/{userId}/s3keys/{keyId} | Retrieve user S3 keys by key ID |
| [**um_users_s3keys_get**](UserS3KeysApi.md#um_users_s3keys_get) | **GET** /um/users/{userId}/s3keys | List user S3 keys |
| [**um_users_s3keys_post**](UserS3KeysApi.md#um_users_s3keys_post) | **POST** /um/users/{userId}/s3keys | Create user S3 keys |
| [**um_users_s3keys_put**](UserS3KeysApi.md#um_users_s3keys_put) | **PUT** /um/users/{userId}/s3keys/{keyId} | Modify S3 keys by key ID |
| [**um_users_s3ssourl_get**](UserS3KeysApi.md#um_users_s3ssourl_get) | **GET** /um/users/{userId}/s3ssourl | Retrieve S3 single sign-on URLs |


## um_users_s3keys_delete

> um_users_s3keys_delete(user_id, key_id, opts)

Delete S3 keys

Delete the specified user S3 key.

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

api_instance = Ionoscloud::UserS3KeysApi.new
user_id = 'user_id_example' # String | The unique ID of the user.
key_id = 'key_id_example' # String | The unique ID of the S3 key.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete S3 keys
  api_instance.um_users_s3keys_delete(user_id, key_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_delete: #{e}"
end
```

#### Using the um_users_s3keys_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> um_users_s3keys_delete_with_http_info(user_id, key_id, opts)

```ruby
begin
  # Delete S3 keys
  data, status_code, headers = api_instance.um_users_s3keys_delete_with_http_info(user_id, key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user. |  |
| **key_id** | **String** | The unique ID of the S3 key. |  |
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


## um_users_s3keys_find_by_key_id

> <S3Key> um_users_s3keys_find_by_key_id(user_id, key_id, opts)

Retrieve user S3 keys by key ID

Retrieve the specified user S3 key. The user ID is in the response body when the user is created, and in the list of the users, returned by GET. The key ID is in the response body when the S3 key is created, and in the list of all user S3 keys, returned by GET.

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

api_instance = Ionoscloud::UserS3KeysApi.new
user_id = 'user_id_example' # String | The unique ID of the user.
key_id = 'key_id_example' # String | The unique ID of the S3 key.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve user S3 keys by key ID
  result = api_instance.um_users_s3keys_find_by_key_id(user_id, key_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_find_by_key_id: #{e}"
end
```

#### Using the um_users_s3keys_find_by_key_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<S3Key>, Integer, Hash)> um_users_s3keys_find_by_key_id_with_http_info(user_id, key_id, opts)

```ruby
begin
  # Retrieve user S3 keys by key ID
  data, status_code, headers = api_instance.um_users_s3keys_find_by_key_id_with_http_info(user_id, key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Key>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_find_by_key_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user. |  |
| **key_id** | **String** | The unique ID of the S3 key. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**S3Key**](../models/S3Key.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_get

> <S3Keys> um_users_s3keys_get(user_id, opts)

List user S3 keys

List S3 keys by user ID. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.

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

api_instance = Ionoscloud::UserS3KeysApi.new
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List user S3 keys
  result = api_instance.um_users_s3keys_get(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_get: #{e}"
end
```

#### Using the um_users_s3keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<S3Keys>, Integer, Hash)> um_users_s3keys_get_with_http_info(user_id, opts)

```ruby
begin
  # List user S3 keys
  data, status_code, headers = api_instance.um_users_s3keys_get_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Keys>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**S3Keys**](../models/S3Keys.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_post

> <S3Key> um_users_s3keys_post(user_id, opts)

Create user S3 keys

Create an S3 key for the specified user. The user ID is in the response body when the user is created, and in the list of the users, returned by GET. A maximum of five keys per user can be generated.

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

api_instance = Ionoscloud::UserS3KeysApi.new
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create user S3 keys
  result = api_instance.um_users_s3keys_post(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_post: #{e}"
end
```

#### Using the um_users_s3keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<S3Key>, Integer, Hash)> um_users_s3keys_post_with_http_info(user_id, opts)

```ruby
begin
  # Create user S3 keys
  data, status_code, headers = api_instance.um_users_s3keys_post_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Key>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**S3Key**](../models/S3Key.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_put

> <S3Key> um_users_s3keys_put(user_id, key_id, s3_key, opts)

Modify S3 keys by key ID

Enable or disable the specified user S3 key.

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

api_instance = Ionoscloud::UserS3KeysApi.new
user_id = 'user_id_example' # String | The unique ID of the user.
key_id = 'key_id_example' # String | The unique ID of the S3 key.
s3_key = Ionoscloud::S3Key.new({properties: Ionoscloud::S3KeyProperties.new}) # S3Key | The modified S3 key.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify S3 keys by key ID
  result = api_instance.um_users_s3keys_put(user_id, key_id, s3_key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_put: #{e}"
end
```

#### Using the um_users_s3keys_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<S3Key>, Integer, Hash)> um_users_s3keys_put_with_http_info(user_id, key_id, s3_key, opts)

```ruby
begin
  # Modify S3 keys by key ID
  data, status_code, headers = api_instance.um_users_s3keys_put_with_http_info(user_id, key_id, s3_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Key>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user. |  |
| **key_id** | **String** | The unique ID of the S3 key. |  |
| **s3_key** | [**S3Key**](S3Key.md) | The modified S3 key. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**S3Key**](../models/S3Key.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_users_s3ssourl_get

> <S3ObjectStorageSSO> um_users_s3ssourl_get(user_id, opts)

Retrieve S3 single sign-on URLs

Retrieve S3 Object Storage single sign-on URLs for the the specified user. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.

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

api_instance = Ionoscloud::UserS3KeysApi.new
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve S3 single sign-on URLs
  result = api_instance.um_users_s3ssourl_get(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3ssourl_get: #{e}"
end
```

#### Using the um_users_s3ssourl_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<S3ObjectStorageSSO>, Integer, Hash)> um_users_s3ssourl_get_with_http_info(user_id, opts)

```ruby
begin
  # Retrieve S3 single sign-on URLs
  data, status_code, headers = api_instance.um_users_s3ssourl_get_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3ObjectStorageSSO>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3ssourl_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**S3ObjectStorageSSO**](../models/S3ObjectStorageSSO.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

