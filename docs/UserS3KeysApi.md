# UserS3KeysApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**um_users_s3keys_delete**](UserS3KeysApi.md#um_users_s3keys_delete) | **DELETE** /um/users/{userId}/s3keys/{keyId} | Delete an S3 Key |
| [**um_users_s3keys_find_by_key_id**](UserS3KeysApi.md#um_users_s3keys_find_by_key_id) | **GET** /um/users/{userId}/s3keys/{keyId} | Retrieve given S3 Key belonging to the given User |
| [**um_users_s3keys_get**](UserS3KeysApi.md#um_users_s3keys_get) | **GET** /um/users/{userId}/s3keys | Retrieve a User&#39;s S3 keys |
| [**um_users_s3keys_post**](UserS3KeysApi.md#um_users_s3keys_post) | **POST** /um/users/{userId}/s3keys | Create a S3 Key for the given User |
| [**um_users_s3keys_put**](UserS3KeysApi.md#um_users_s3keys_put) | **PUT** /um/users/{userId}/s3keys/{keyId} | Modify a S3 key having the given key id |
| [**um_users_s3ssourl_get**](UserS3KeysApi.md#um_users_s3ssourl_get) | **GET** /um/users/{userId}/s3ssourl | Retrieve S3 object storage single signon URL for the given user |


## um_users_s3keys_delete

> Object um_users_s3keys_delete(user_id, key_id, opts)

Delete an S3 Key

Delete an S3 key.

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
user_id = 'user_id_example' # String | The unique ID of the user
key_id = 'key_id_example' # String | The unique access key ID of the S3 key
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete an S3 Key
  result = api_instance.um_users_s3keys_delete(user_id, key_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_delete: #{e}"
end
```

#### Using the um_users_s3keys_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> um_users_s3keys_delete_with_http_info(user_id, key_id, opts)

```ruby
begin
  # Delete an S3 Key
  data, status_code, headers = api_instance.um_users_s3keys_delete_with_http_info(user_id, key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserS3KeysApi->um_users_s3keys_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The unique ID of the user |  |
| **key_id** | **String** | The unique access key ID of the S3 key |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

**Object**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_find_by_key_id

> <S3Key> um_users_s3keys_find_by_key_id(user_id, key_id, opts)

Retrieve given S3 Key belonging to the given User

You can retrieve S3 key belonging to the given User. This user Id can be found in the response body when a user is created or when you GET a list of users. The key Id can be found in the response body when a S3 key is created or when you GET a list of all S3 keys of a user

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
user_id = 'user_id_example' # String | The unique ID of the user
key_id = 'key_id_example' # String | The unique access key ID of the S3 key
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve given S3 Key belonging to the given User
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
  # Retrieve given S3 Key belonging to the given User
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
| **user_id** | **String** | The unique ID of the user |  |
| **key_id** | **String** | The unique access key ID of the S3 key |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**S3Key**](S3Key.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_get

> <S3Keys> um_users_s3keys_get(user_id, opts)

Retrieve a User's S3 keys

You can retrieve S3 keys owned by a user by using the users ID. This user Id can be found in the response body when a user is created or when you GET a list of users.

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
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a User's S3 keys
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
  # Retrieve a User's S3 keys
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
| **user_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**S3Keys**](S3Keys.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_post

> <S3Key> um_users_s3keys_post(user_id, opts)

Create a S3 Key for the given User

Creates a S3 key for the given user. This user Id can be found in the response body when a user is created or when you GET a list of users. Maximum of 5 keys can be generated for a given user

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
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a S3 Key for the given User
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
  # Create a S3 Key for the given User
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
| **user_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**S3Key**](S3Key.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_s3keys_put

> <S3Key> um_users_s3keys_put(user_id, key_id, s3_key, opts)

Modify a S3 key having the given key id

You can enable or disable a given S3 key.

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
user_id = 'user_id_example' # String | 
key_id = 'key_id_example' # String | The unique access key ID of the S3 key
s3_key = Ionoscloud::S3Key.new({properties: Ionoscloud::S3KeyProperties.new}) # S3Key | Modified S3 key
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a S3 key having the given key id
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
  # Modify a S3 key having the given key id
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
| **user_id** | **String** |  |  |
| **key_id** | **String** | The unique access key ID of the S3 key |  |
| **s3_key** | [**S3Key**](S3Key.md) | Modified S3 key |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**S3Key**](S3Key.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_users_s3ssourl_get

> <S3ObjectStorageSSO> um_users_s3ssourl_get(user_id, opts)

Retrieve S3 object storage single signon URL for the given user

You can retrieve S3 object storage single signon URL for the given user. This user Id can be found in the response body when a user is created or when you GET a list of users.

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
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve S3 object storage single signon URL for the given user
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
  # Retrieve S3 object storage single signon URL for the given user
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
| **user_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**S3ObjectStorageSSO**](S3ObjectStorageSSO.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

