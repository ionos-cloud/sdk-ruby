# FirewallRulesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_servers_nics_firewallrules_delete**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Delete firewall rules |
| [**datacenters_servers_nics_firewallrules_find_by_id**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Retrieve firewall rules |
| [**datacenters_servers_nics_firewallrules_get**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules | List firewall rules |
| [**datacenters_servers_nics_firewallrules_patch**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Partially modify firewall rules |
| [**datacenters_servers_nics_firewallrules_post**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules | Create a Firewall Rule |
| [**datacenters_servers_nics_firewallrules_put**](FirewallRulesApi.md#datacenters_servers_nics_firewallrules_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Modify a Firewall Rule |


## datacenters_servers_nics_firewallrules_delete

> datacenters_servers_nics_firewallrules_delete(datacenter_id, server_id, nic_id, firewallrule_id, opts)

Delete firewall rules

Delete the specified firewall rule.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the firewall rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete firewall rules
  api_instance.datacenters_servers_nics_firewallrules_delete(datacenter_id, server_id, nic_id, firewallrule_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_delete: #{e}"
end
```

#### Using the datacenters_servers_nics_firewallrules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_servers_nics_firewallrules_delete_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)

```ruby
begin
  # Delete firewall rules
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_delete_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling FirewallRulesApi->datacenters_servers_nics_firewallrules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **firewallrule_id** | **String** | The unique ID of the firewall rule. |  |
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


## datacenters_servers_nics_firewallrules_find_by_id

> <FirewallRule> datacenters_servers_nics_firewallrules_find_by_id(datacenter_id, server_id, nic_id, firewallrule_id, opts)

Retrieve firewall rules

Retrieve the properties of the specified firewall rule.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the firewall rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve firewall rules
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
  # Retrieve firewall rules
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **firewallrule_id** | **String** | The unique ID of the firewall rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FirewallRule**](../models/FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_get

> <FirewallRules> datacenters_servers_nics_firewallrules_get(datacenter_id, server_id, nic_id, opts)

List firewall rules

List all firewall rules for the specified NIC.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List firewall rules
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
  # List firewall rules
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**FirewallRules**](../models/FirewallRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_patch

> <FirewallRule> datacenters_servers_nics_firewallrules_patch(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)

Partially modify firewall rules

Update the properties of the specified firewall rule.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the firewall rule.
firewallrule = Ionoscloud::FirewallruleProperties.new({protocol: 'TCP'}) # FirewallruleProperties | The properties of the firewall rule to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify firewall rules
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
  # Partially modify firewall rules
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **firewallrule_id** | **String** | The unique ID of the firewall rule. |  |
| **firewallrule** | [**FirewallruleProperties**](../models/FirewallruleProperties.md) | The properties of the firewall rule to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FirewallRule**](../models/FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_post

> <FirewallRule> datacenters_servers_nics_firewallrules_post(datacenter_id, server_id, nic_id, firewallrule, opts)

Create a Firewall Rule

Creates a firewall rule for the specified NIC.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
firewallrule = Ionoscloud::FirewallRule.new({properties: Ionoscloud::FirewallruleProperties.new({protocol: 'TCP'})}) # FirewallRule | The firewall rule to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **firewallrule** | [**FirewallRule**](../models/FirewallRule.md) | The firewall rule to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FirewallRule**](../models/FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_servers_nics_firewallrules_put

> <FirewallRule> datacenters_servers_nics_firewallrules_put(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)

Modify a Firewall Rule

Modifies the properties of the specified firewall rule.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
server_id = 'server_id_example' # String | The unique ID of the server.
nic_id = 'nic_id_example' # String | The unique ID of the NIC.
firewallrule_id = 'firewallrule_id_example' # String | The unique ID of the firewall rule.
firewallrule = Ionoscloud::FirewallRule.new({properties: Ionoscloud::FirewallruleProperties.new({protocol: 'TCP'})}) # FirewallRule | The modified firewall rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
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
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **server_id** | **String** | The unique ID of the server. |  |
| **nic_id** | **String** | The unique ID of the NIC. |  |
| **firewallrule_id** | **String** | The unique ID of the firewall rule. |  |
| **firewallrule** | [**FirewallRule**](../models/FirewallRule.md) | The modified firewall rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FirewallRule**](../models/FirewallRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

