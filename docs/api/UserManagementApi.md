# UserManagementApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**um_groups_delete**](UserManagementApi.md#um_groups_delete) | **DELETE** /um/groups/{groupId} | Delete groups |
| [**um_groups_find_by_id**](UserManagementApi.md#um_groups_find_by_id) | **GET** /um/groups/{groupId} | Retrieve groups |
| [**um_groups_get**](UserManagementApi.md#um_groups_get) | **GET** /um/groups | List all groups |
| [**um_groups_post**](UserManagementApi.md#um_groups_post) | **POST** /um/groups | Create groups |
| [**um_groups_put**](UserManagementApi.md#um_groups_put) | **PUT** /um/groups/{groupId} | Modify groups |
| [**um_groups_resources_get**](UserManagementApi.md#um_groups_resources_get) | **GET** /um/groups/{groupId}/resources | Retrieve group resources |
| [**um_groups_shares_delete**](UserManagementApi.md#um_groups_shares_delete) | **DELETE** /um/groups/{groupId}/shares/{resourceId} | Remove group shares |
| [**um_groups_shares_find_by_resource_id**](UserManagementApi.md#um_groups_shares_find_by_resource_id) | **GET** /um/groups/{groupId}/shares/{resourceId} | Retrieve group shares |
| [**um_groups_shares_get**](UserManagementApi.md#um_groups_shares_get) | **GET** /um/groups/{groupId}/shares | List group shares  |
| [**um_groups_shares_post**](UserManagementApi.md#um_groups_shares_post) | **POST** /um/groups/{groupId}/shares/{resourceId} | Add group shares |
| [**um_groups_shares_put**](UserManagementApi.md#um_groups_shares_put) | **PUT** /um/groups/{groupId}/shares/{resourceId} | Modify group share privileges |
| [**um_groups_users_delete**](UserManagementApi.md#um_groups_users_delete) | **DELETE** /um/groups/{groupId}/users/{userId} | Remove users from groups |
| [**um_groups_users_get**](UserManagementApi.md#um_groups_users_get) | **GET** /um/groups/{groupId}/users | List group members |
| [**um_groups_users_post**](UserManagementApi.md#um_groups_users_post) | **POST** /um/groups/{groupId}/users | Add group members |
| [**um_resources_find_by_type**](UserManagementApi.md#um_resources_find_by_type) | **GET** /um/resources/{resourceType} | List resources by type |
| [**um_resources_find_by_type_and_id**](UserManagementApi.md#um_resources_find_by_type_and_id) | **GET** /um/resources/{resourceType}/{resourceId} | Retrieve resources by type |
| [**um_resources_get**](UserManagementApi.md#um_resources_get) | **GET** /um/resources | List all resources |
| [**um_users_delete**](UserManagementApi.md#um_users_delete) | **DELETE** /um/users/{userId} | Delete users |
| [**um_users_find_by_id**](UserManagementApi.md#um_users_find_by_id) | **GET** /um/users/{userId} | Retrieve users |
| [**um_users_get**](UserManagementApi.md#um_users_get) | **GET** /um/users | List all users  |
| [**um_users_groups_get**](UserManagementApi.md#um_users_groups_get) | **GET** /um/users/{userId}/groups | Retrieve group resources by user ID |
| [**um_users_owns_get**](UserManagementApi.md#um_users_owns_get) | **GET** /um/users/{userId}/owns | Retrieve user resources by user ID |
| [**um_users_post**](UserManagementApi.md#um_users_post) | **POST** /um/users | Create users |
| [**um_users_put**](UserManagementApi.md#um_users_put) | **PUT** /um/users/{userId} | Modify users |


## um_groups_delete

> um_groups_delete(group_id, opts)

Delete groups

Remove the specified group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete groups
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
  # Delete groups
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
| **group_id** | **String** | The unique ID of the group. |  |
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


## um_groups_find_by_id

> <Group> um_groups_find_by_id(group_id, opts)

Retrieve groups

Retrieve a group by the group ID. This value is in the response body when the group is created, and in the list of the groups, returned by GET.

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
group_id = 'group_id_example' # String | The unique ID of the group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve groups
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
  # Retrieve groups
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
| **group_id** | **String** | The unique ID of the group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Group**](../models/Group.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_get

> <Groups> um_groups_get(opts)

List all groups

List all the available user groups.

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
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all groups
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
  # List all groups
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
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Groups**](../models/Groups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_post

> <Group> um_groups_post(group, opts)

Create groups

Create a group.

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
group = Ionoscloud::Group.new({properties: Ionoscloud::GroupProperties.new}) # Group | The group to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create groups
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
  # Create groups
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
| **group** | [**Group**](Group.md) | The group to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Group**](../models/Group.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_groups_put

> <Group> um_groups_put(group_id, group, opts)

Modify groups

Modify the properties of the specified group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
group = Ionoscloud::Group.new({properties: Ionoscloud::GroupProperties.new}) # Group | The modified group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify groups
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
  # Modify groups
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
| **group_id** | **String** | The unique ID of the group. |  |
| **group** | [**Group**](Group.md) | The modified group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Group**](../models/Group.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_groups_resources_get

> <ResourceGroups> um_groups_resources_get(group_id, opts)

Retrieve group resources

List the resources assigned to the group, by group ID.

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
group_id = 'group_id_example' # String | The unique ID of the group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve group resources
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
  # Retrieve group resources
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
| **group_id** | **String** | The unique ID of the group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**ResourceGroups**](../models/ResourceGroups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_delete

> um_groups_shares_delete(group_id, resource_id, opts)

Remove group shares

Remove the specified share from the group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
resource_id = 'resource_id_example' # String | The unique ID of the resource.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Remove group shares
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
  # Remove group shares
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
| **group_id** | **String** | The unique ID of the group. |  |
| **resource_id** | **String** | The unique ID of the resource. |  |
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


## um_groups_shares_find_by_resource_id

> <GroupShare> um_groups_shares_find_by_resource_id(group_id, resource_id, opts)

Retrieve group shares

Retrieve the properties of the specified group share.

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
group_id = 'group_id_example' # String | The unique ID of the group.
resource_id = 'resource_id_example' # String | The unique ID of the resource.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve group shares
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
  # Retrieve group shares
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
| **group_id** | **String** | The unique ID of the group. |  |
| **resource_id** | **String** | The unique ID of the resource. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**GroupShare**](../models/GroupShare.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_get

> <GroupShares> um_groups_shares_get(group_id, opts)

List group shares 

List all shares and share privileges for the specified group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List group shares 
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
  # List group shares 
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
| **group_id** | **String** | The unique ID of the group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**GroupShares**](../models/GroupShares.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_post

> <GroupShare> um_groups_shares_post(group_id, resource_id, resource, opts)

Add group shares

Add the specified share to the group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
resource_id = 'resource_id_example' # String | The unique ID of the resource.
resource = Ionoscloud::GroupShare.new({properties: Ionoscloud::GroupShareProperties.new}) # GroupShare | The resource to add.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add group shares
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
  # Add group shares
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
| **group_id** | **String** | The unique ID of the group. |  |
| **resource_id** | **String** | The unique ID of the resource. |  |
| **resource** | [**GroupShare**](GroupShare.md) | The resource to add. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**GroupShare**](../models/GroupShare.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_shares_put

> <GroupShare> um_groups_shares_put(group_id, resource_id, resource, opts)

Modify group share privileges

Modify share permissions for the specified group. With an empty body, no updates are performed, and the current share permissions for the group are returned with response code 200.

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
group_id = 'group_id_example' # String | The unique ID of the group.
resource_id = 'resource_id_example' # String | The unique ID of the resource.
resource = Ionoscloud::GroupShare.new({properties: Ionoscloud::GroupShareProperties.new}) # GroupShare | The modified resource
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify group share privileges
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
  # Modify group share privileges
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
| **group_id** | **String** | The unique ID of the group. |  |
| **resource_id** | **String** | The unique ID of the resource. |  |
| **resource** | [**GroupShare**](GroupShare.md) | The modified resource |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**GroupShare**](../models/GroupShare.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_groups_users_delete

> um_groups_users_delete(group_id, user_id, opts)

Remove users from groups

Remove the specified user from the group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Remove users from groups
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
  # Remove users from groups
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
| **group_id** | **String** | The unique ID of the group. |  |
| **user_id** | **String** | The unique ID of the user. |  |
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


## um_groups_users_get

> <GroupMembers> um_groups_users_get(group_id, opts)

List group members

List all members of the specified user group.

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
group_id = 'group_id_example' # String | The unique ID of the group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List group members
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
  # List group members
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
| **group_id** | **String** | The unique ID of the group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**GroupMembers**](../models/GroupMembers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_groups_users_post

> <User> um_groups_users_post(group_id, user, opts)

Add group members

Add an existing user to the specified group. 

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
group_id = 'group_id_example' # String | The unique ID of the group.
user = Ionoscloud::User.new({properties: Ionoscloud::UserProperties.new}) # User | The user to add.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Add group members
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
  # Add group members
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
| **group_id** | **String** | The unique ID of the group. |  |
| **user** | [**User**](User.md) | The user to add. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**User**](../models/User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_resources_find_by_type

> <Resources> um_resources_find_by_type(resource_type, opts)

List resources by type

List all resources of the specified type.  Resource types are: {datacenter, snapshot, image, ipblock, pcc, backupunit, k8s}  Resource types are in the list of resources, returned by GET.

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
resource_type = 'resource_type_example' # String | The resource type
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List resources by type
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
  # List resources by type
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
| **resource_type** | **String** | The resource type |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Resources**](../models/Resources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_resources_find_by_type_and_id

> <Resource> um_resources_find_by_type_and_id(resource_type, resource_id, opts)

Retrieve resources by type

Retrieve a resource by the resource type and resource ID.  Resource types are: {datacenter, snapshot, image, ipblock, pcc, backupunit, k8s}  Resource types are in the list of resources, returned by GET.

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
resource_type = 'resource_type_example' # String | The resource type
resource_id = 'resource_id_example' # String | The resource ID
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve resources by type
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
  # Retrieve resources by type
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
| **resource_type** | **String** | The resource type |  |
| **resource_id** | **String** | The resource ID |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Resource**](../models/Resource.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_resources_get

> <Resources> um_resources_get(opts)

List all resources

List all the available resources.

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
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List all resources
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
  # List all resources
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
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**Resources**](../models/Resources.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_delete

> um_users_delete(user_id, opts)

Delete users

Delete the specified user.

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
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete users
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
  # Delete users
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
| **user_id** | **String** | The unique ID of the user. |  |
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


## um_users_find_by_id

> <User> um_users_find_by_id(user_id, opts)

Retrieve users

Retrieve user properties by user ID. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.

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
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve users
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
  # Retrieve users
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
| **user_id** | **String** | The unique ID of the user. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**User**](../models/User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_get

> <Users> um_users_get(opts)

List all users 

List all the users in your account.

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
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with <code>offset</code> for pagination).
}

begin
  # List all users 
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
  # List all users 
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
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination). | [optional][default to 100] |

### Return type

[**Users**](../models/Users.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_groups_get

> <ResourceGroups> um_users_groups_get(user_id, opts)

Retrieve group resources by user ID

Retrieve group resources of the user by user ID. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.

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
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve group resources by user ID
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
  # Retrieve group resources by user ID
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
| **user_id** | **String** | The unique ID of the user. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**ResourceGroups**](../models/ResourceGroups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_owns_get

> <ResourcesUsers> um_users_owns_get(user_id, opts)

Retrieve user resources by user ID

Retrieve own resources of the user by user ID. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.

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
user_id = 'user_id_example' # String | The unique ID of the user.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve user resources by user ID
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
  # Retrieve user resources by user ID
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
| **user_id** | **String** | The unique ID of the user. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**ResourcesUsers**](../models/ResourcesUsers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## um_users_post

> <User> um_users_post(user, opts)

Create users

Create a user.

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
user = Ionoscloud::UserPost.new({properties: Ionoscloud::UserPropertiesPost.new}) # UserPost | The user to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create users
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
  # Create users
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
| **user** | [**UserPost**](UserPost.md) | The user to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**User**](../models/User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## um_users_put

> <User> um_users_put(user_id, user, opts)

Modify users

Modify the properties of the specified user.

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
user_id = 'user_id_example' # String | The unique ID of the user.
user = Ionoscloud::UserPut.new({properties: Ionoscloud::UserPropertiesPut.new}) # UserPut | The modified user
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify users
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
  # Modify users
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
| **user_id** | **String** | The unique ID of the user. |  |
| **user** | [**UserPut**](UserPut.md) | The modified user |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**User**](../models/User.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

