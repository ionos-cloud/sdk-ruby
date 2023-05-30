# TargetGroupsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**target_groups_delete**](TargetGroupsApi.md#target_groups_delete) | **DELETE** /targetgroups/{targetGroupId} | Delete a Target Group by ID |
| [**targetgroups_find_by_target_group_id**](TargetGroupsApi.md#targetgroups_find_by_target_group_id) | **GET** /targetgroups/{targetGroupId} | Get a Target Group by ID |
| [**targetgroups_get**](TargetGroupsApi.md#targetgroups_get) | **GET** /targetgroups | Get Target Groups |
| [**targetgroups_patch**](TargetGroupsApi.md#targetgroups_patch) | **PATCH** /targetgroups/{targetGroupId} | Partially Modify a Target Group by ID |
| [**targetgroups_post**](TargetGroupsApi.md#targetgroups_post) | **POST** /targetgroups | Create a Target Group |
| [**targetgroups_put**](TargetGroupsApi.md#targetgroups_put) | **PUT** /targetgroups/{targetGroupId} | Modify a Target Group by ID |


## target_groups_delete

> target_groups_delete(target_group_id, opts)

Delete a Target Group by ID

Deletes the target group specified by its ID.

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

api_instance = Ionoscloud::TargetGroupsApi.new
target_group_id = 'target_group_id_example' # String | The unique ID of the target group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete a Target Group by ID
  api_instance.target_groups_delete(target_group_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->target_groups_delete: #{e}"
end
```

#### Using the target_groups_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> target_groups_delete_with_http_info(target_group_id, opts)

```ruby
begin
  # Delete a Target Group by ID
  data, status_code, headers = api_instance.target_groups_delete_with_http_info(target_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->target_groups_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_group_id** | **String** | The unique ID of the target group. |  |
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


## targetgroups_find_by_target_group_id

> <TargetGroup> targetgroups_find_by_target_group_id(target_group_id, opts)

Get a Target Group by ID

Retrieves the properties of the target group specified by its ID.

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

api_instance = Ionoscloud::TargetGroupsApi.new
target_group_id = 'target_group_id_example' # String | The unique ID of the target group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get a Target Group by ID
  result = api_instance.targetgroups_find_by_target_group_id(target_group_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_find_by_target_group_id: #{e}"
end
```

#### Using the targetgroups_find_by_target_group_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetGroup>, Integer, Hash)> targetgroups_find_by_target_group_id_with_http_info(target_group_id, opts)

```ruby
begin
  # Get a Target Group by ID
  data, status_code, headers = api_instance.targetgroups_find_by_target_group_id_with_http_info(target_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetGroup>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_find_by_target_group_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_group_id** | **String** | The unique ID of the target group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**TargetGroup**](../models/TargetGroup.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## targetgroups_get

> <TargetGroups> targetgroups_get(opts)

Get Target Groups

Lists target groups.  A target group is a set of one or more registered targets. You must specify an IP address, a port number, and a weight for each target. Any object with an IP address in your VDC can be a target, for example, a VM, another load balancer, etc. You can register a target with multiple target groups.

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

api_instance = Ionoscloud::TargetGroupsApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (used together with <b><i>offset</i></b> for pagination). It must not exceed <b><i>200</i></b>.
}

begin
  # Get Target Groups
  result = api_instance.targetgroups_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_get: #{e}"
end
```

#### Using the targetgroups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetGroups>, Integer, Hash)> targetgroups_get_with_http_info(opts)

```ruby
begin
  # Get Target Groups
  data, status_code, headers = api_instance.targetgroups_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetGroups>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (used together with &lt;b&gt;&lt;i&gt;offset&lt;/i&gt;&lt;/b&gt; for pagination). It must not exceed &lt;b&gt;&lt;i&gt;200&lt;/i&gt;&lt;/b&gt;. | [optional][default to 100] |

### Return type

[**TargetGroups**](../models/TargetGroups.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## targetgroups_patch

> <TargetGroup> targetgroups_patch(target_group_id, target_group_properties, opts)

Partially Modify a Target Group by ID

Updates the properties of the target group specified by its ID.

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

api_instance = Ionoscloud::TargetGroupsApi.new
target_group_id = 'target_group_id_example' # String | The unique ID of the target group.
target_group_properties = Ionoscloud::TargetGroupProperties.new({algorithm: 'ROUND_ROBIN', name: 'My target group', protocol: 'HTTP'}) # TargetGroupProperties | The target group properties to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially Modify a Target Group by ID
  result = api_instance.targetgroups_patch(target_group_id, target_group_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_patch: #{e}"
end
```

#### Using the targetgroups_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetGroup>, Integer, Hash)> targetgroups_patch_with_http_info(target_group_id, target_group_properties, opts)

```ruby
begin
  # Partially Modify a Target Group by ID
  data, status_code, headers = api_instance.targetgroups_patch_with_http_info(target_group_id, target_group_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetGroup>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_group_id** | **String** | The unique ID of the target group. |  |
| **target_group_properties** | [**TargetGroupProperties**](../models/TargetGroupProperties.md) | The target group properties to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**TargetGroup**](../models/TargetGroup.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## targetgroups_post

> <TargetGroup> targetgroups_post(target_group, opts)

Create a Target Group

Creates a target group.

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

api_instance = Ionoscloud::TargetGroupsApi.new
target_group = Ionoscloud::TargetGroup.new({properties: Ionoscloud::TargetGroupProperties.new({algorithm: 'ROUND_ROBIN', name: 'My target group', protocol: 'HTTP'})}) # TargetGroup | The target group to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a Target Group
  result = api_instance.targetgroups_post(target_group, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_post: #{e}"
end
```

#### Using the targetgroups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetGroup>, Integer, Hash)> targetgroups_post_with_http_info(target_group, opts)

```ruby
begin
  # Create a Target Group
  data, status_code, headers = api_instance.targetgroups_post_with_http_info(target_group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetGroup>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_group** | [**TargetGroup**](../models/TargetGroup.md) | The target group to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**TargetGroup**](../models/TargetGroup.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## targetgroups_put

> <TargetGroup> targetgroups_put(target_group_id, target_group, opts)

Modify a Target Group by ID

Modifies the properties of the target group specified by its ID.

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

api_instance = Ionoscloud::TargetGroupsApi.new
target_group_id = 'target_group_id_example' # String | The unique ID of the target group.
target_group = Ionoscloud::TargetGroupPut.new({properties: Ionoscloud::TargetGroupProperties.new({algorithm: 'ROUND_ROBIN', name: 'My target group', protocol: 'HTTP'})}) # TargetGroupPut | The modified target group.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a Target Group by ID
  result = api_instance.targetgroups_put(target_group_id, target_group, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_put: #{e}"
end
```

#### Using the targetgroups_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TargetGroup>, Integer, Hash)> targetgroups_put_with_http_info(target_group_id, target_group, opts)

```ruby
begin
  # Modify a Target Group by ID
  data, status_code, headers = api_instance.targetgroups_put_with_http_info(target_group_id, target_group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TargetGroup>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TargetGroupsApi->targetgroups_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_group_id** | **String** | The unique ID of the target group. |  |
| **target_group** | [**TargetGroupPut**](../models/TargetGroupPut.md) | The modified target group. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**TargetGroup**](../models/TargetGroup.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

