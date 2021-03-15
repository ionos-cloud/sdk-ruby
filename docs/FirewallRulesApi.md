# FirewallRulesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_nics_firewallrules_delete**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Delete a Firewall Rule |
| [**datacenters_servers_nics_firewallrules_find_by_id**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Retrieve a Firewall Rule |
| [**datacenters_servers_nics_firewallrules_get**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules | List Firewall Rules |
| [**datacenters_servers_nics_firewallrules_patch**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Partially Modify a Firewall Rule |
| [**datacenters_servers_nics_firewallrules_post**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules | Create a Firewall Rule |
| [**datacenters_servers_nics_firewallrules_put**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Modify a Firewall Rule |


## datacenters_servers_nics_firewallrules_delete

> Object datacenters_servers_nics_firewallrules_delete(datacenter_id, server_id, nic_id, firewallrule_id, opts)

Delete a Firewall Rule

Removes the specified firewall rule.

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

api_instance = Ionoscloud::FirewallRulesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the Firewall Rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Firewall Rule
  result = api_instance.datacenters_servers_nics_firewallrules_delete(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_delete: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_servers_nics_firewallrules_delete_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)

```ruby
begin
  # Delete a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_delete_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **firewallrule_id** | **String** | The unique ID of the Firewall Rule |  |
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


## datacenters_servers_nics_firewallrules_find_by_id

> <FirewallRule> datacenters_servers_nics_firewallrules_find_by_id(datacenter_id, server_id, nic_id, firewallrule_id, opts)

Retrieve a Firewall Rule

Retrieves the attributes of a given firewall rule.

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

api_instance = Ionoscloud::FirewallRulesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the Firewall Rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Firewall Rule
  result = api_instance.datacenters_servers_nics_firewallrules_find_by_id(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_find_by_id: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRule>, Integer, Hash)> datacenters_servers_nics_firewallrules_find_by_id_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)

```ruby
begin
  # Retrieve a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_find_by_id_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **firewallrule_id** | **String** | The unique ID of the Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FirewallRule**](FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_get

> <FirewallRules> datacenters_servers_nics_firewallrules_get(datacenter_id, server_id, nic_id, opts)

List Firewall Rules

Retrieves a list of firewall rules associated with a particular network interface.

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

api_instance = Ionoscloud::FirewallRulesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
}

begin
  # List Firewall Rules
  result = api_instance.datacenters_servers_nics_firewallrules_get(datacenter_id, server_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_get: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRules>, Integer, Hash)> datacenters_servers_nics_firewallrules_get_with_http_info(datacenter_id, server_id, nic_id, opts)

```ruby
begin
  # List Firewall Rules
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_get_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRules>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**FirewallRules**](FirewallRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_patch

> <FirewallRule> datacenters_servers_nics_firewallrules_patch(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)

Partially Modify a Firewall Rule

You can use update attributes of a resource.

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

api_instance = Ionoscloud::FirewallRulesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the Firewall Rule
firewallrule = Ionoscloud::FirewallruleProperties.new({protocol: 'TCP'}) # FirewallruleProperties | Modified Firewall Rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially Modify a Firewall Rule
  result = api_instance.datacenters_servers_nics_firewallrules_patch(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_patch: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRule>, Integer, Hash)> datacenters_servers_nics_firewallrules_patch_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)

```ruby
begin
  # Partially Modify a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_patch_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **firewallrule_id** | **String** | The unique ID of the Firewall Rule |  |
| **firewallrule** | [**FirewallruleProperties**](FirewallruleProperties.md) | Modified Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FirewallRule**](FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_post

> <FirewallRule> datacenters_servers_nics_firewallrules_post(datacenter_id, server_id, nic_id, firewallrule, opts)

Create a Firewall Rule

This will add a Firewall Rule to the network interface.

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

api_instance = Ionoscloud::FirewallRulesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
firewallrule = Ionoscloud::FirewallRule.new({properties: Ionoscloud::FirewallruleProperties.new({protocol: 'TCP'})}) # FirewallRule | Firewall Rule to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Firewall Rule
  result = api_instance.datacenters_servers_nics_firewallrules_post(datacenter_id, server_id, nic_id, firewallrule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_post: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRule>, Integer, Hash)> datacenters_servers_nics_firewallrules_post_with_http_info(datacenter_id, server_id, nic_id, firewallrule, opts)

```ruby
begin
  # Create a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_post_with_http_info(datacenter_id, server_id, nic_id, firewallrule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **firewallrule** | [**FirewallRule**](FirewallRule.md) | Firewall Rule to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FirewallRule**](FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_put

> <FirewallRule> datacenters_servers_nics_firewallrules_put(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)

Modify a Firewall Rule

You can use update attributes of a resource.

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

api_instance = Ionoscloud::FirewallRulesApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the Firewall Rule
firewallrule = Ionoscloud::FirewallRule.new({properties: Ionoscloud::FirewallruleProperties.new({protocol: 'TCP'})}) # FirewallRule | Modified Firewall Rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Firewall Rule
  result = api_instance.datacenters_servers_nics_firewallrules_put(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_put: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FirewallRule>, Integer, Hash)> datacenters_servers_nics_firewallrules_put_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)

```ruby
begin
  # Modify a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_put_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **server_id** | **String** | The unique ID of the Server |  |
| **nic_id** | **String** | The unique ID of the NIC |  |
| **firewallrule_id** | **String** | The unique ID of the Firewall Rule |  |
| **firewallrule** | [**FirewallRule**](FirewallRule.md) | Modified Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FirewallRule**](FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

