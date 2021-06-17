# UserManagementApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**um_groups_delete**](UserManagementApi.md#um_groups_delete) | **DELETE** /um/groups/{groupId} | Delete a Group |
| [**um_groups_find_by_id**](UserManagementApi.md#um_groups_find_by_id) | **GET** /um/groups/{groupId} | Retrieve a Group |
| [**um_groups_get**](UserManagementApi.md#um_groups_get) | **GET** /um/groups | List All Groups. |
| [**um_groups_post**](UserManagementApi.md#um_groups_post) | **POST** /um/groups | Create a Group |
| [**um_groups_put**](UserManagementApi.md#um_groups_put) | **PUT** /um/groups/{groupId} | Modify a group |
| [**um_groups_resources_get**](UserManagementApi.md#um_groups_resources_get) | **GET** /um/groups/{groupId}/resources | Retrieve resources assigned to a group |
| [**um_groups_shares_delete**](UserManagementApi.md#um_groups_shares_delete) | **DELETE** /um/groups/{groupId}/shares/{resourceId} | Remove a resource from a group |
| [**um_groups_shares_find_by_resource_id**](UserManagementApi.md#um_groups_shares_find_by_resource_id) | **GET** /um/groups/{groupId}/shares/{resourceId} | Retrieve a group share |
| [**um_groups_shares_get**](UserManagementApi.md#um_groups_shares_get) | **GET** /um/groups/{groupId}/shares | List Group Shares  |
| [**um_groups_shares_post**](UserManagementApi.md#um_groups_shares_post) | **POST** /um/groups/{groupId}/shares/{resourceId} | Add a resource to a group |
| [**um_groups_shares_put**](UserManagementApi.md#um_groups_shares_put) | **PUT** /um/groups/{groupId}/shares/{resourceId} | Modify resource permissions of a group |
| [**um_groups_users_delete**](UserManagementApi.md#um_groups_users_delete) | **DELETE** /um/groups/{groupId}/users/{userId} | Remove a user from a group |
| [**um_groups_users_get**](UserManagementApi.md#um_groups_users_get) | **GET** /um/groups/{groupId}/users | List Group Members  |
| [**um_groups_users_post**](UserManagementApi.md#um_groups_users_post) | **POST** /um/groups/{groupId}/users | Add a user to a group |
| [**um_resources_find_by_type**](UserManagementApi.md#um_resources_find_by_type) | **GET** /um/resources/{resourceType} | Retrieve a list of Resources by type. |
| [**um_resources_find_by_type_and_id**](UserManagementApi.md#um_resources_find_by_type_and_id) | **GET** /um/resources/{resourceType}/{resourceId} | Retrieve a Resource by type. |
| [**um_resources_get**](UserManagementApi.md#um_resources_get) | **GET** /um/resources | List All Resources. |
| [**um_users_delete**](UserManagementApi.md#um_users_delete) | **DELETE** /um/users/{userId} | Delete a User |
| [**um_users_find_by_id**](UserManagementApi.md#um_users_find_by_id) | **GET** /um/users/{userId} | Retrieve a User |
| [**um_users_get**](UserManagementApi.md#um_users_get) | **GET** /um/users | List all Users  |
| [**um_users_groups_get**](UserManagementApi.md#um_users_groups_get) | **GET** /um/users/{userId}/groups | Retrieve a User&#39;s group resources |
| [**um_users_owns_get**](UserManagementApi.md#um_users_owns_get) | **GET** /um/users/{userId}/owns | Retrieve a User&#39;s own resources |
| [**um_users_post**](UserManagementApi.md#um_users_post) | **POST** /um/users | Create a user |
| [**um_users_put**](UserManagementApi.md#um_users_put) | **PUT** /um/users/{userId} | Modify a user |


## um_groups_delete

> um_groups_delete(group_id, opts)

Delete a Group

Delete a group

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | The unique ID of the group
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Group
  api_instance.um_groups_delete(group_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_delete: #{e}"
end
```

#### Using the um_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> um_groups_delete_with_http_info(group_id, opts)

```ruby
begin
  # Delete a Group
  data, status_code, headers = api_instance.um_groups_delete_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The unique ID of the group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_find_by_id

> <Group> um_groups_find_by_id(group_id, opts)

Retrieve a Group

You can retrieve a group by using the group ID. This value can be found in the response body when a group is created or when you GET a list of groups.

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | The unique ID of the group
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Group
  result = api_instance.um_groups_find_by_id(group_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_find_by_id: #{e}"
end
```

#### Using the um_groups_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> um_groups_find_by_id_with_http_info(group_id, opts)

```ruby
begin
  # Retrieve a Group
  data, status_code, headers = api_instance.um_groups_find_by_id_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The unique ID of the group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_get

> <Groups> um_groups_get(opts)

List All Groups.

You can retrieve a complete list of all groups that you have access to

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

api_instance = Ionoscloud::UserManagementApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List All Groups.
  result = api_instance.um_groups_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_get: #{e}"
end
```

#### Using the um_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Groups>, Integer, Hash)> um_groups_get_with_http_info(opts)

```ruby
begin
  # List All Groups.
  data, status_code, headers = api_instance.um_groups_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Groups>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Groups**](Groups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_post

> <Group> um_groups_post(group, opts)

Create a Group

You can use this POST method to create a group

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

api_instance = Ionoscloud::UserManagementApi.new
group = Ionoscloud::Group.new({properties: Ionoscloud::GroupProperties.new}) # Group | Group to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Group
  result = api_instance.um_groups_post(group, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_post: #{e}"
end
```

#### Using the um_groups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> um_groups_post_with_http_info(group, opts)

```ruby
begin
  # Create a Group
  data, status_code, headers = api_instance.um_groups_post_with_http_info(group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | [**Group**](Group.md) | Group to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_groups_put

> <Group> um_groups_put(group_id, group, opts)

Modify a group

You can use this method to update properties of the group.

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | The unique ID of the group
group = Ionoscloud::Group.new({properties: Ionoscloud::GroupProperties.new}) # Group | Modified properties of the Group
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a group
  result = api_instance.um_groups_put(group_id, group, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_put: #{e}"
end
```

#### Using the um_groups_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> um_groups_put_with_http_info(group_id, group, opts)

```ruby
begin
  # Modify a group
  data, status_code, headers = api_instance.um_groups_put_with_http_info(group_id, group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The unique ID of the group |  |
| **group** | [**Group**](Group.md) | Modified properties of the Group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_groups_resources_get

> <ResourceGroups> um_groups_resources_get(group_id, opts)

Retrieve resources assigned to a group

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | The unique ID of the group
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve resources assigned to a group
  result = api_instance.um_groups_resources_get(group_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_resources_get: #{e}"
end
```

#### Using the um_groups_resources_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroups>, Integer, Hash)> um_groups_resources_get_with_http_info(group_id, opts)

```ruby
begin
  # Retrieve resources assigned to a group
  data, status_code, headers = api_instance.um_groups_resources_get_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroups>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_resources_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The unique ID of the group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**ResourceGroups**](ResourceGroups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_delete

> um_groups_shares_delete(group_id, resource_id, opts)

Remove a resource from a group

This will remove a resource from a group

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
resource_id = 'resource_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove a resource from a group
  api_instance.um_groups_shares_delete(group_id, resource_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_delete: #{e}"
end
```

#### Using the um_groups_shares_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> um_groups_shares_delete_with_http_info(group_id, resource_id, opts)

```ruby
begin
  # Remove a resource from a group
  data, status_code, headers = api_instance.um_groups_shares_delete_with_http_info(group_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_find_by_resource_id

> <GroupShare> um_groups_shares_find_by_resource_id(group_id, resource_id, opts)

Retrieve a group share

This will retrieve the properties of a group share.

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
resource_id = 'resource_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a group share
  result = api_instance.um_groups_shares_find_by_resource_id(group_id, resource_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_find_by_resource_id: #{e}"
end
```

#### Using the um_groups_shares_find_by_resource_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupShare>, Integer, Hash)> um_groups_shares_find_by_resource_id_with_http_info(group_id, resource_id, opts)

```ruby
begin
  # Retrieve a group share
  data, status_code, headers = api_instance.um_groups_shares_find_by_resource_id_with_http_info(group_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupShare>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_find_by_resource_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**GroupShare**](GroupShare.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_get

> <GroupShares> um_groups_shares_get(group_id, opts)

List Group Shares 

You can retrieve a list of all resources along with their permissions of the group

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Group Shares 
  result = api_instance.um_groups_shares_get(group_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_get: #{e}"
end
```

#### Using the um_groups_shares_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupShares>, Integer, Hash)> um_groups_shares_get_with_http_info(group_id, opts)

```ruby
begin
  # List Group Shares 
  data, status_code, headers = api_instance.um_groups_shares_get_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupShares>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**GroupShares**](GroupShares.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_post

> <GroupShare> um_groups_shares_post(group_id, resource_id, resource, opts)

Add a resource to a group

This will add a resource to the group. 

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
resource_id = 'resource_id_example' # String | 
resource = Ionoscloud::GroupShare.new({properties: Ionoscloud::GroupShareProperties.new}) # GroupShare | Resource to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a resource to a group
  result = api_instance.um_groups_shares_post(group_id, resource_id, resource, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_post: #{e}"
end
```

#### Using the um_groups_shares_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupShare>, Integer, Hash)> um_groups_shares_post_with_http_info(group_id, resource_id, resource, opts)

```ruby
begin
  # Add a resource to a group
  data, status_code, headers = api_instance.um_groups_shares_post_with_http_info(group_id, resource_id, resource, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupShare>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **resource** | [**GroupShare**](GroupShare.md) | Resource to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**GroupShare**](GroupShare.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_put

> <GroupShare> um_groups_shares_put(group_id, resource_id, resource, opts)

Modify resource permissions of a group

You can use update resource permissions of a group. If empty body will be provided, no updates will happen, instead you will be returned the current permissions of resource in a group. In this case response code will be 200

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
resource_id = 'resource_id_example' # String | 
resource = Ionoscloud::GroupShare.new({properties: Ionoscloud::GroupShareProperties.new}) # GroupShare | Modified Resource
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify resource permissions of a group
  result = api_instance.um_groups_shares_put(group_id, resource_id, resource, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_put: #{e}"
end
```

#### Using the um_groups_shares_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupShare>, Integer, Hash)> um_groups_shares_put_with_http_info(group_id, resource_id, resource, opts)

```ruby
begin
  # Modify resource permissions of a group
  data, status_code, headers = api_instance.um_groups_shares_put_with_http_info(group_id, resource_id, resource, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupShare>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **resource** | [**GroupShare**](GroupShare.md) | Modified Resource |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**GroupShare**](GroupShare.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_groups_users_delete

> um_groups_users_delete(group_id, user_id, opts)

Remove a user from a group

This will remove a user from a group.

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
user_id = 'user_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove a user from a group
  api_instance.um_groups_users_delete(group_id, user_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_delete: #{e}"
end
```

#### Using the um_groups_users_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> um_groups_users_delete_with_http_info(group_id, user_id, opts)

```ruby
begin
  # Remove a user from a group
  data, status_code, headers = api_instance.um_groups_users_delete_with_http_info(group_id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_users_get

> <GroupMembers> um_groups_users_get(group_id, opts)

List Group Members 

You can retrieve a list of users who are members of the group

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Group Members 
  result = api_instance.um_groups_users_get(group_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_get: #{e}"
end
```

#### Using the um_groups_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupMembers>, Integer, Hash)> um_groups_users_get_with_http_info(group_id, opts)

```ruby
begin
  # List Group Members 
  data, status_code, headers = api_instance.um_groups_users_get_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupMembers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**GroupMembers**](GroupMembers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_users_post

> <User> um_groups_users_post(group_id, user, opts)

Add a user to a group

This will attach a pre-existing user to a group. 

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

api_instance = Ionoscloud::UserManagementApi.new
group_id = 'group_id_example' # String | 
user = Ionoscloud::User.new({properties: Ionoscloud::UserProperties.new}) # User | User to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a user to a group
  result = api_instance.um_groups_users_post(group_id, user, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_post: #{e}"
end
```

#### Using the um_groups_users_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> um_groups_users_post_with_http_info(group_id, user, opts)

```ruby
begin
  # Add a user to a group
  data, status_code, headers = api_instance.um_groups_users_post_with_http_info(group_id, user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **user** | [**User**](User.md) | User to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**User**](User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_resources_find_by_type

> <Resources> um_resources_find_by_type(resource_type, opts)

Retrieve a list of Resources by type.

You can retrieve a list of resources by using the type. Allowed values are { datacenter, snapshot, image, ipblock, pcc, backupunit, k8s }. This value of resource type also be found in the response body when you GET a list of all resources.

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

api_instance = Ionoscloud::UserManagementApi.new
resource_type = 'resource_type_example' # String | The resource Type
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a list of Resources by type.
  result = api_instance.um_resources_find_by_type(resource_type, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_resources_find_by_type: #{e}"
end
```

#### Using the um_resources_find_by_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resources>, Integer, Hash)> um_resources_find_by_type_with_http_info(resource_type, opts)

```ruby
begin
  # Retrieve a list of Resources by type.
  data, status_code, headers = api_instance.um_resources_find_by_type_with_http_info(resource_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_resources_find_by_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | **String** | The resource Type |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Resources**](Resources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_resources_find_by_type_and_id

> <Resource> um_resources_find_by_type_and_id(resource_type, resource_id, opts)

Retrieve a Resource by type.

You can retrieve a resource by using the type and its uuid. Allowed values for types are { datacenter, snapshot, image, ipblock, pcc, backupunit, k8s }. The value of resource type can also be found in the response body when you GET a list of all resources.

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

api_instance = Ionoscloud::UserManagementApi.new
resource_type = 'resource_type_example' # String | The resource Type
resource_id = 'resource_id_example' # String | The resource Uuid
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Resource by type.
  result = api_instance.um_resources_find_by_type_and_id(resource_type, resource_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_resources_find_by_type_and_id: #{e}"
end
```

#### Using the um_resources_find_by_type_and_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> um_resources_find_by_type_and_id_with_http_info(resource_type, resource_id, opts)

```ruby
begin
  # Retrieve a Resource by type.
  data, status_code, headers = api_instance.um_resources_find_by_type_and_id_with_http_info(resource_type, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_resources_find_by_type_and_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | **String** | The resource Type |  |
| **resource_id** | **String** | The resource Uuid |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_resources_get

> <Resources> um_resources_get(opts)

List All Resources.

You can retrieve a complete list of all resources that you have access to.

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

api_instance = Ionoscloud::UserManagementApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List All Resources.
  result = api_instance.um_resources_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_resources_get: #{e}"
end
```

#### Using the um_resources_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resources>, Integer, Hash)> um_resources_get_with_http_info(opts)

```ruby
begin
  # List All Resources.
  data, status_code, headers = api_instance.um_resources_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_resources_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Resources**](Resources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_delete

> um_users_delete(user_id, opts)

Delete a User

Delete a user

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a User
  api_instance.um_users_delete(user_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_delete: #{e}"
end
```

#### Using the um_users_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> um_users_delete_with_http_info(user_id, opts)

```ruby
begin
  # Delete a User
  data, status_code, headers = api_instance.um_users_delete_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_delete_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_find_by_id

> <User> um_users_find_by_id(user_id, opts)

Retrieve a User

You can retrieve user details by using the users ID. This value can be found in the response body when a user is created or when you GET a list of users.

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a User
  result = api_instance.um_users_find_by_id(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_find_by_id: #{e}"
end
```

#### Using the um_users_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> um_users_find_by_id_with_http_info(user_id, opts)

```ruby
begin
  # Retrieve a User
  data, status_code, headers = api_instance.um_users_find_by_id_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_find_by_id_with_http_info: #{e}"
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

[**User**](User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_get

> <Users> um_users_get(opts)

List all Users 

You can retrieve a complete list of users under your account

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

api_instance = Ionoscloud::UserManagementApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List all Users 
  result = api_instance.um_users_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_get: #{e}"
end
```

#### Using the um_users_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Users>, Integer, Hash)> um_users_get_with_http_info(opts)

```ruby
begin
  # List all Users 
  data, status_code, headers = api_instance.um_users_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Users>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Users**](Users.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_groups_get

> <ResourceGroups> um_users_groups_get(user_id, opts)

Retrieve a User's group resources

You can retrieve group resources of user by using the users ID. This value can be found in the response body when a user is created or when you GET a list of users.

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a User's group resources
  result = api_instance.um_users_groups_get(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_groups_get: #{e}"
end
```

#### Using the um_users_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceGroups>, Integer, Hash)> um_users_groups_get_with_http_info(user_id, opts)

```ruby
begin
  # Retrieve a User's group resources
  data, status_code, headers = api_instance.um_users_groups_get_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceGroups>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_groups_get_with_http_info: #{e}"
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

[**ResourceGroups**](ResourceGroups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_owns_get

> <ResourcesUsers> um_users_owns_get(user_id, opts)

Retrieve a User's own resources

You can retrieve resources owned by using the users ID. This value can be found in the response body when a user is created or when you GET a list of users.

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a User's own resources
  result = api_instance.um_users_owns_get(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_owns_get: #{e}"
end
```

#### Using the um_users_owns_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourcesUsers>, Integer, Hash)> um_users_owns_get_with_http_info(user_id, opts)

```ruby
begin
  # Retrieve a User's own resources
  data, status_code, headers = api_instance.um_users_owns_get_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourcesUsers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_owns_get_with_http_info: #{e}"
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

[**ResourcesUsers**](ResourcesUsers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_post

> <User> um_users_post(user, opts)

Create a user

You can use this POST method to create a user

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

api_instance = Ionoscloud::UserManagementApi.new
user = Ionoscloud::UserPost.new({properties: Ionoscloud::UserPropertiesPost.new}) # UserPost | User to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a user
  result = api_instance.um_users_post(user, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_post: #{e}"
end
```

#### Using the um_users_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> um_users_post_with_http_info(user, opts)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.um_users_post_with_http_info(user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**UserPost**](UserPost.md) | User to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**User**](User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_users_put

> <User> um_users_put(user_id, user, opts)

Modify a user

You can use update attributes of a User

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | 
user = Ionoscloud::UserPut.new({properties: Ionoscloud::UserPropertiesPut.new}) # UserPut | Modified user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a user
  result = api_instance.um_users_put(user_id, user, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_put: #{e}"
end
```

#### Using the um_users_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> um_users_put_with_http_info(user_id, user, opts)

```ruby
begin
  # Modify a user
  data, status_code, headers = api_instance.um_users_put_with_http_info(user_id, user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user** | [**UserPut**](UserPut.md) | Modified user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**User**](User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

