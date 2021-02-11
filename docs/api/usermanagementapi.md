# UserManagementApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**um\_groups\_delete**](usermanagementapi.md#um_groups_delete) | **DELETE** /um/groups/{groupId} | Delete a Group |
| [**um\_groups\_find\_by\_id**](usermanagementapi.md#um_groups_find_by_id) | **GET** /um/groups/{groupId} | Retrieve a Group |
| [**um\_groups\_get**](usermanagementapi.md#um_groups_get) | **GET** /um/groups | List All Groups. |
| [**um\_groups\_post**](usermanagementapi.md#um_groups_post) | **POST** /um/groups | Create a Group |
| [**um\_groups\_put**](usermanagementapi.md#um_groups_put) | **PUT** /um/groups/{groupId} | Modify a group |
| [**um\_groups\_resources\_get**](usermanagementapi.md#um_groups_resources_get) | **GET** /um/groups/{groupId}/resources | Retrieve resources assigned to a group |
| [**um\_groups\_shares\_delete**](usermanagementapi.md#um_groups_shares_delete) | **DELETE** /um/groups/{groupId}/shares/{resourceId} | Remove a resource from a group |
| [**um\_groups\_shares\_find\_by\_resource\_id**](usermanagementapi.md#um_groups_shares_find_by_resource_id) | **GET** /um/groups/{groupId}/shares/{resourceId} | Retrieve a group share |
| [**um\_groups\_shares\_get**](usermanagementapi.md#um_groups_shares_get) | **GET** /um/groups/{groupId}/shares | List Group Shares |
| [**um\_groups\_shares\_post**](usermanagementapi.md#um_groups_shares_post) | **POST** /um/groups/{groupId}/shares/{resourceId} | Add a resource to a group |
| [**um\_groups\_shares\_put**](usermanagementapi.md#um_groups_shares_put) | **PUT** /um/groups/{groupId}/shares/{resourceId} | Modify resource permissions of a group |
| [**um\_groups\_users\_delete**](usermanagementapi.md#um_groups_users_delete) | **DELETE** /um/groups/{groupId}/users/{userId} | Remove a user from a group |
| [**um\_groups\_users\_get**](usermanagementapi.md#um_groups_users_get) | **GET** /um/groups/{groupId}/users | List Group Members |
| [**um\_groups\_users\_post**](usermanagementapi.md#um_groups_users_post) | **POST** /um/groups/{groupId}/users | Add a user to a group |
| [**um\_resources\_find\_by\_type**](usermanagementapi.md#um_resources_find_by_type) | **GET** /um/resources/{resourceType} | Retrieve a list of Resources by type. |
| [**um\_resources\_find\_by\_type\_and\_id**](usermanagementapi.md#um_resources_find_by_type_and_id) | **GET** /um/resources/{resourceType}/{resourceId} | Retrieve a Resource by type. |
| [**um\_resources\_get**](usermanagementapi.md#um_resources_get) | **GET** /um/resources | List All Resources. |
| [**um\_users\_delete**](usermanagementapi.md#um_users_delete) | **DELETE** /um/users/{userId} | Delete a User |
| [**um\_users\_find\_by\_id**](usermanagementapi.md#um_users_find_by_id) | **GET** /um/users/{userId} | Retrieve a User |
| [**um\_users\_get**](usermanagementapi.md#um_users_get) | **GET** /um/users | List all Users |
| [**um\_users\_groups\_get**](usermanagementapi.md#um_users_groups_get) | **GET** /um/users/{userId}/groups | Retrieve a User's group resources |
| [**um\_users\_owns\_get**](usermanagementapi.md#um_users_owns_get) | **GET** /um/users/{userId}/owns | Retrieve a User's own resources |
| [**um\_users\_post**](usermanagementapi.md#um_users_post) | **POST** /um/users | Create a user |
| [**um\_users\_put**](usermanagementapi.md#um_users_put) | **PUT** /um/users/{userId} | Modify a user |
| [**um\_users\_s3keys\_delete**](usermanagementapi.md#um_users_s3keys_delete) | **DELETE** /um/users/{userId}/s3keys/{keyId} | Delete a S3 key |
| [**um\_users\_s3keys\_find\_by\_key\_id**](usermanagementapi.md#um_users_s3keys_find_by_key_id) | **GET** /um/users/{userId}/s3keys/{keyId} | Retrieve given S3 key belonging to the given User |
| [**um\_users\_s3keys\_get**](usermanagementapi.md#um_users_s3keys_get) | **GET** /um/users/{userId}/s3keys | Retrieve a User's S3 keys |
| [**um\_users\_s3keys\_post**](usermanagementapi.md#um_users_s3keys_post) | **POST** /um/users/{userId}/s3keys | Create a S3 key for the given user |
| [**um\_users\_s3keys\_put**](usermanagementapi.md#um_users_s3keys_put) | **PUT** /um/users/{userId}/s3keys/{keyId} | Modify a S3 key having the given key id |
| [**um\_users\_s3ssourl\_get**](usermanagementapi.md#um_users_s3ssourl_get) | **GET** /um/users/{userId}/s3ssourl | Retrieve S3 object storage single signon URL for the given user |

## um\_groups\_delete

> Object um\_groups\_delete\(group\_id, opts\)

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
  result = api_instance.um_groups_delete(group_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_delete: #{e}"
end
```

#### Using the um\_groups\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> um\_groups\_delete\_with\_http\_info\(group\_id, opts\)

```ruby
begin
  # Delete a Group
  data, status_code, headers = api_instance.um_groups_delete_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** | The unique ID of the group |  |
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

## um\_groups\_find\_by\_id

> um\_groups\_find\_by\_id\(group\_id, opts\)

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

#### Using the um\_groups\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_find\_by\_id\_with\_http\_info\(group\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** | The unique ID of the group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Group**](../models/group.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_get

> um\_groups\_get\(opts\)

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

#### Using the um\_groups\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_get\_with\_http\_info\(opts\)

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
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Groups**](../models/groups.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_post

> um\_groups\_post\(group, opts\)

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

#### Using the um\_groups\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_post\_with\_http\_info\(group, opts\)

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
| :--- | :--- | :--- | :--- |
| **group** | [**Group**](../models/group.md) | Group to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Group**](../models/group.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_groups\_put

> um\_groups\_put\(group\_id, group, opts\)

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

#### Using the um\_groups\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_put\_with\_http\_info\(group\_id, group, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** | The unique ID of the group |  |
| **group** | [**Group**](../models/group.md) | Modified properties of the Group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Group**](../models/group.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_groups\_resources\_get

> um\_groups\_resources\_get\(group\_id, opts\)

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

#### Using the um\_groups\_resources\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_resources\_get\_with\_http\_info\(group\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** | The unique ID of the group |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**ResourceGroups**](../models/resourcegroups.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_shares\_delete

> Object um\_groups\_shares\_delete\(group\_id, resource\_id, opts\)

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
  result = api_instance.um_groups_shares_delete(group_id, resource_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_delete: #{e}"
end
```

#### Using the um\_groups\_shares\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> um\_groups\_shares\_delete\_with\_http\_info\(group\_id, resource\_id, opts\)

```ruby
begin
  # Remove a resource from a group
  data, status_code, headers = api_instance.um_groups_shares_delete_with_http_info(group_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_shares_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **resource\_id** | **String** |  |  |
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

## um\_groups\_shares\_find\_by\_resource\_id

> um\_groups\_shares\_find\_by\_resource\_id\(group\_id, resource\_id, opts\)

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

#### Using the um\_groups\_shares\_find\_by\_resource\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_shares\_find\_by\_resource\_id\_with\_http\_info\(group\_id, resource\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **resource\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**GroupShare**](../models/groupshare.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_shares\_get

> um\_groups\_shares\_get\(group\_id, opts\)

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

#### Using the um\_groups\_shares\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_shares\_get\_with\_http\_info\(group\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**GroupShares**](../models/groupshares.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_shares\_post

> um\_groups\_shares\_post\(group\_id, resource\_id, resource, opts\)

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

#### Using the um\_groups\_shares\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_shares\_post\_with\_http\_info\(group\_id, resource\_id, resource, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **resource\_id** | **String** |  |  |
| **resource** | [**GroupShare**](../models/groupshare.md) | Resource to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**GroupShare**](../models/groupshare.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_shares\_put

> um\_groups\_shares\_put\(group\_id, resource\_id, resource, opts\)

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

#### Using the um\_groups\_shares\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_shares\_put\_with\_http\_info\(group\_id, resource\_id, resource, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **resource\_id** | **String** |  |  |
| **resource** | [**GroupShare**](../models/groupshare.md) | Modified Resource |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**GroupShare**](../models/groupshare.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_groups\_users\_delete

> Object um\_groups\_users\_delete\(group\_id, user\_id, opts\)

Remove a user from a group

This will remove a user from a group

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
  result = api_instance.um_groups_users_delete(group_id, user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_delete: #{e}"
end
```

#### Using the um\_groups\_users\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> um\_groups\_users\_delete\_with\_http\_info\(group\_id, user\_id, opts\)

```ruby
begin
  # Remove a user from a group
  data, status_code, headers = api_instance.um_groups_users_delete_with_http_info(group_id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_groups_users_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **user\_id** | **String** |  |  |
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

## um\_groups\_users\_get

> um\_groups\_users\_get\(group\_id, opts\)

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

#### Using the um\_groups\_users\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_users\_get\_with\_http\_info\(group\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**GroupMembers**](../models/groupmembers.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_groups\_users\_post

> um\_groups\_users\_post\(group\_id, user, opts\)

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

#### Using the um\_groups\_users\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_groups\_users\_post\_with\_http\_info\(group\_id, user, opts\)

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
| :--- | :--- | :--- | :--- |
| **group\_id** | **String** |  |  |
| **user** | [**User**](../models/user.md) | User to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**User**](../models/user.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_resources\_find\_by\_type

> um\_resources\_find\_by\_type\(resource\_type, opts\)

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

#### Using the um\_resources\_find\_by\_type\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_resources\_find\_by\_type\_with\_http\_info\(resource\_type, opts\)

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
| :--- | :--- | :--- | :--- |
| **resource\_type** | **String** | The resource Type |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Resources**](../models/resources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_resources\_find\_by\_type\_and\_id

> um\_resources\_find\_by\_type\_and\_id\(resource\_type, resource\_id, opts\)

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

#### Using the um\_resources\_find\_by\_type\_and\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_resources\_find\_by\_type\_and\_id\_with\_http\_info\(resource\_type, resource\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **resource\_type** | **String** | The resource Type |  |
| **resource\_id** | **String** | The resource Uuid |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Resource**](../models/resource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_resources\_get

> um\_resources\_get\(opts\)

List All Resources.

You can retrieve a complete list of all resources that you have access to

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

#### Using the um\_resources\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_resources\_get\_with\_http\_info\(opts\)

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
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Resources**](../models/resources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_delete

> Object um\_users\_delete\(user\_id, opts\)

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
  result = api_instance.um_users_delete(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_delete: #{e}"
end
```

#### Using the um\_users\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> um\_users\_delete\_with\_http\_info\(user\_id, opts\)

```ruby
begin
  # Delete a User
  data, status_code, headers = api_instance.um_users_delete_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
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

## um\_users\_find\_by\_id

> um\_users\_find\_by\_id\(user\_id, opts\)

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

#### Using the um\_users\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_find\_by\_id\_with\_http\_info\(user\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**User**](../models/user.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_get

> um\_users\_get\(opts\)

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

#### Using the um\_users\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_get\_with\_http\_info\(opts\)

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
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Users**](../models/users.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_groups\_get

> um\_users\_groups\_get\(user\_id, opts\)

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

#### Using the um\_users\_groups\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_groups\_get\_with\_http\_info\(user\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**ResourceGroups**](../models/resourcegroups.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_owns\_get

> um\_users\_owns\_get\(user\_id, opts\)

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

#### Using the um\_users\_owns\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_owns\_get\_with\_http\_info\(user\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**ResourcesUsers**](../models/resourcesusers.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_post

> um\_users\_post\(user, opts\)

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
user = Ionoscloud::User.new({properties: Ionoscloud::UserProperties.new}) # User | User to be created
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

#### Using the um\_users\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_post\_with\_http\_info\(user, opts\)

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
| :--- | :--- | :--- | :--- |
| **user** | [**User**](../models/user.md) | User to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**User**](../models/user.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_users\_put

> um\_users\_put\(user\_id, user, opts\)

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
user = Ionoscloud::User.new({properties: Ionoscloud::UserProperties.new}) # User | Modified user
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

#### Using the um\_users\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_put\_with\_http\_info\(user\_id, user, opts\)

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
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** |  |  |
| **user** | [**User**](../models/user.md) | Modified user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**User**](../models/user.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_users\_s3keys\_delete

> Object um\_users\_s3keys\_delete\(user\_id, key\_id, opts\)

Delete a S3 key

Delete a S3 key

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
key_id = 'key_id_example' # String | The unique access key ID of the S3 key
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a S3 key
  result = api_instance.um_users_s3keys_delete(user_id, key_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_delete: #{e}"
end
```

#### Using the um\_users\_s3keys\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> um\_users\_s3keys\_delete\_with\_http\_info\(user\_id, key\_id, opts\)

```ruby
begin
  # Delete a S3 key
  data, status_code, headers = api_instance.um_users_s3keys_delete_with_http_info(user_id, key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **key\_id** | **String** | The unique access key ID of the S3 key |  |
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

## um\_users\_s3keys\_find\_by\_key\_id

> um\_users\_s3keys\_find\_by\_key\_id\(user\_id, key\_id, opts\)

Retrieve given S3 key belonging to the given User

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | The unique ID of the user
key_id = 'key_id_example' # String | The unique access key ID of the S3 key
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve given S3 key belonging to the given User
  result = api_instance.um_users_s3keys_find_by_key_id(user_id, key_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_find_by_key_id: #{e}"
end
```

#### Using the um\_users\_s3keys\_find\_by\_key\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_s3keys\_find\_by\_key\_id\_with\_http\_info\(user\_id, key\_id, opts\)

```ruby
begin
  # Retrieve given S3 key belonging to the given User
  data, status_code, headers = api_instance.um_users_s3keys_find_by_key_id_with_http_info(user_id, key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Key>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_find_by_key_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **key\_id** | **String** | The unique access key ID of the S3 key |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**S3Key**](../models/s3key.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_s3keys\_get

> um\_users\_s3keys\_get\(user\_id, opts\)

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

api_instance = Ionoscloud::UserManagementApi.new
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
  puts "Error when calling UserManagementApi->um_users_s3keys_get: #{e}"
end
```

#### Using the um\_users\_s3keys\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_s3keys\_get\_with\_http\_info\(user\_id, opts\)

```ruby
begin
  # Retrieve a User's S3 keys
  data, status_code, headers = api_instance.um_users_s3keys_get_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Keys>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**S3Keys**](../models/s3keys.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_s3keys\_post

> um\_users\_s3keys\_post\(user\_id, opts\)

Create a S3 key for the given user

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

api_instance = Ionoscloud::UserManagementApi.new
user_id = 'user_id_example' # String | The unique ID of the user
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a S3 key for the given user
  result = api_instance.um_users_s3keys_post(user_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_post: #{e}"
end
```

#### Using the um\_users\_s3keys\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_s3keys\_post\_with\_http\_info\(user\_id, opts\)

```ruby
begin
  # Create a S3 key for the given user
  data, status_code, headers = api_instance.um_users_s3keys_post_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Key>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**S3Key**](../models/s3key.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## um\_users\_s3keys\_put

> um\_users\_s3keys\_put\(user\_id, key\_id, s3\_key, opts\)

Modify a S3 key having the given key id

You can enable or disable a given S3 key

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
key_id = 'key_id_example' # String | The unique access key ID of the S3 key
s3_key = Ionoscloud::S3Key.new({properties: Ionoscloud::S3KeyProperties.new}) # S3Key | Modified s3 key
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
  puts "Error when calling UserManagementApi->um_users_s3keys_put: #{e}"
end
```

#### Using the um\_users\_s3keys\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_s3keys\_put\_with\_http\_info\(user\_id, key\_id, s3\_key, opts\)

```ruby
begin
  # Modify a S3 key having the given key id
  data, status_code, headers = api_instance.um_users_s3keys_put_with_http_info(user_id, key_id, s3_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3Key>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3keys_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** |  |  |
| **key\_id** | **String** | The unique access key ID of the S3 key |  |
| **s3\_key** | [**S3Key**](../models/s3key.md) | Modified s3 key |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**S3Key**](../models/s3key.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## um\_users\_s3ssourl\_get

> um\_users\_s3ssourl\_get\(user\_id, opts\)

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

api_instance = Ionoscloud::UserManagementApi.new
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
  puts "Error when calling UserManagementApi->um_users_s3ssourl_get: #{e}"
end
```

#### Using the um\_users\_s3ssourl\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; um\_users\_s3ssourl\_get\_with\_http\_info\(user\_id, opts\)

```ruby
begin
  # Retrieve S3 object storage single signon URL for the given user
  data, status_code, headers = api_instance.um_users_s3ssourl_get_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <S3ObjectStorageSSO>
rescue Ionoscloud::ApiError => e
  puts "Error when calling UserManagementApi->um_users_s3ssourl_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **user\_id** | **String** | The unique ID of the user |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**S3ObjectStorageSSO**](../models/s3objectstoragesso.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

