# NetworkLoadBalancersApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_networkloadbalancers_delete**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_delete) | **DELETE** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Delete Network Load Balancers |
| [**datacenters_networkloadbalancers_find_by_network_load_balancer_id**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_find_by_network_load_balancer_id) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Retrieve Network Load Balancers |
| [**datacenters_networkloadbalancers_flowlogs_delete**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Delete NLB Flow Logs |
| [**datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Retrieve NLB Flow Logs |
| [**datacenters_networkloadbalancers_flowlogs_get**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_get) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs | List NLB Flow Logs |
| [**datacenters_networkloadbalancers_flowlogs_patch**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Partially modify NLB Flow Logs |
| [**datacenters_networkloadbalancers_flowlogs_post**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_post) | **POST** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs | Create NLB Flow Logs |
| [**datacenters_networkloadbalancers_flowlogs_put**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_put) | **PUT** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Modify NLB Flow Logs |
| [**datacenters_networkloadbalancers_forwardingrules_delete**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_delete) | **DELETE** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Delete NLB forwarding rules |
| [**datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Retrieve NLB forwarding rules |
| [**datacenters_networkloadbalancers_forwardingrules_get**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_get) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules | List NLB forwarding rules |
| [**datacenters_networkloadbalancers_forwardingrules_patch**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_patch) | **PATCH** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Partially modify NLB forwarding rules |
| [**datacenters_networkloadbalancers_forwardingrules_post**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_post) | **POST** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules | Create NLB forwarding rules |
| [**datacenters_networkloadbalancers_forwardingrules_put**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_put) | **PUT** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Modify NLB forwarding rules |
| [**datacenters_networkloadbalancers_get**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_get) | **GET** /datacenters/{datacenterId}/networkloadbalancers | List Network Load Balancers |
| [**datacenters_networkloadbalancers_patch**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_patch) | **PATCH** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Partially modify Network Load Balancers |
| [**datacenters_networkloadbalancers_post**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_post) | **POST** /datacenters/{datacenterId}/networkloadbalancers | Create Network Load Balancers |
| [**datacenters_networkloadbalancers_put**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_put) | **PUT** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Modify Network Load Balancers |


## datacenters_networkloadbalancers_delete

> datacenters_networkloadbalancers_delete(datacenter_id, network_load_balancer_id, opts)

Delete Network Load Balancers

Remove the specified Network Load Balancer from the data center.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete Network Load Balancers
  api_instance.datacenters_networkloadbalancers_delete(datacenter_id, network_load_balancer_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_delete: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_networkloadbalancers_delete_with_http_info(datacenter_id, network_load_balancer_id, opts)

```ruby
begin
  # Delete Network Load Balancers
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_delete_with_http_info(datacenter_id, network_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
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


## datacenters_networkloadbalancers_find_by_network_load_balancer_id

> <NetworkLoadBalancer> datacenters_networkloadbalancers_find_by_network_load_balancer_id(datacenter_id, network_load_balancer_id, opts)

Retrieve Network Load Balancers

Retrieve the properties of the specified Network Load Balancer within the data center.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve Network Load Balancers
  result = api_instance.datacenters_networkloadbalancers_find_by_network_load_balancer_id(datacenter_id, network_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_find_by_network_load_balancer_id: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_find_by_network_load_balancer_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancer>, Integer, Hash)> datacenters_networkloadbalancers_find_by_network_load_balancer_id_with_http_info(datacenter_id, network_load_balancer_id, opts)

```ruby
begin
  # Retrieve Network Load Balancers
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_find_by_network_load_balancer_id_with_http_info(datacenter_id, network_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_find_by_network_load_balancer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancer**](../models/NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_delete

> datacenters_networkloadbalancers_flowlogs_delete(datacenter_id, network_load_balancer_id, flow_log_id, opts)

Delete NLB Flow Logs

Delete the specified Network Load Balancer Flow Log.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete NLB Flow Logs
  api_instance.datacenters_networkloadbalancers_flowlogs_delete(datacenter_id, network_load_balancer_id, flow_log_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_delete: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_delete_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, opts)

```ruby
begin
  # Delete NLB Flow Logs
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_delete_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
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


## datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id

> <FlowLog> datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id(datacenter_id, network_load_balancer_id, flow_log_id, opts)

Retrieve NLB Flow Logs

Retrieve the specified Network Load Balancer Flow Log.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve NLB Flow Logs
  result = api_instance.datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id(datacenter_id, network_load_balancer_id, flow_log_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, opts)

```ruby
begin
  # Retrieve NLB Flow Logs
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_get

> <FlowLogs> datacenters_networkloadbalancers_flowlogs_get(datacenter_id, network_load_balancer_id, opts)

List NLB Flow Logs

List all the Flow Logs for the specified Network Load Balancer.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List NLB Flow Logs
  result = api_instance.datacenters_networkloadbalancers_flowlogs_get(datacenter_id, network_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_get: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLogs>, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_get_with_http_info(datacenter_id, network_load_balancer_id, opts)

```ruby
begin
  # List NLB Flow Logs
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_get_with_http_info(datacenter_id, network_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLogs>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**FlowLogs**](../models/FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_patch

> <FlowLog> datacenters_networkloadbalancers_flowlogs_patch(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log_properties, opts)

Partially modify NLB Flow Logs

Update the properties of the specified Network Load Balancer Flow Log.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
network_load_balancer_flow_log_properties = Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'}) # FlowLogProperties | The properties of the Flow Log to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify NLB Flow Logs
  result = api_instance.datacenters_networkloadbalancers_flowlogs_patch(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_patch: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_patch_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log_properties, opts)

```ruby
begin
  # Partially modify NLB Flow Logs
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_patch_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **network_load_balancer_flow_log_properties** | [**FlowLogProperties**](FlowLogProperties.md) | The properties of the Flow Log to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_post

> <FlowLog> datacenters_networkloadbalancers_flowlogs_post(datacenter_id, network_load_balancer_id, network_load_balancer_flow_log, opts)

Create NLB Flow Logs

Add a new Flow Log for the Network Load Balancer.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
network_load_balancer_flow_log = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLog | The Flow Log to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create NLB Flow Logs
  result = api_instance.datacenters_networkloadbalancers_flowlogs_post(datacenter_id, network_load_balancer_id, network_load_balancer_flow_log, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_post: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_post_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer_flow_log, opts)

```ruby
begin
  # Create NLB Flow Logs
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_post_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer_flow_log, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **network_load_balancer_flow_log** | [**FlowLog**](FlowLog.md) | The Flow Log to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_put

> <FlowLog> datacenters_networkloadbalancers_flowlogs_put(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log, opts)

Modify NLB Flow Logs

Modify the specified Network Load Balancer Flow Log.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
network_load_balancer_flow_log = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLogPut | The modified NLB Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify NLB Flow Logs
  result = api_instance.datacenters_networkloadbalancers_flowlogs_put(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_put: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_put_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log, opts)

```ruby
begin
  # Modify NLB Flow Logs
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_put_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **network_load_balancer_flow_log** | [**FlowLogPut**](FlowLogPut.md) | The modified NLB Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_delete

> datacenters_networkloadbalancers_forwardingrules_delete(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

Delete NLB forwarding rules

Delete the specified Network Load Balancer forwarding rule.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete NLB forwarding rules
  api_instance.datacenters_networkloadbalancers_forwardingrules_delete(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_delete: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_delete_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

```ruby
begin
  # Delete NLB forwarding rules
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_delete_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
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


## datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

Retrieve NLB forwarding rules

Retrieve the specified Network Load Balance forwarding rule.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Retrieve NLB forwarding rules
  result = api_instance.datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancerForwardingRule>, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

```ruby
begin
  # Retrieve NLB forwarding rules
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](../models/NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_get

> <NetworkLoadBalancerForwardingRules> datacenters_networkloadbalancers_forwardingrules_get(datacenter_id, network_load_balancer_id, opts)

List NLB forwarding rules

List the forwarding rules for the specified Network Load Balancer.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List NLB forwarding rules
  result = api_instance.datacenters_networkloadbalancers_forwardingrules_get(datacenter_id, network_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_get: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancerForwardingRules>, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_get_with_http_info(datacenter_id, network_load_balancer_id, opts)

```ruby
begin
  # List NLB forwarding rules
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_get_with_http_info(datacenter_id, network_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancerForwardingRules>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRules**](../models/NetworkLoadBalancerForwardingRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_patch

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_patch(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule_properties, opts)

Partially modify NLB forwarding rules

Update the properties of the specified Network Load Balancer forwarding rule.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
network_load_balancer_forwarding_rule_properties = Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new({name: 'My Network Load Balancer forwarding rule', algorithm: 'ROUND_ROBIN', protocol: 'HTTP', listener_ip: '81.173.1.2', listener_port: 8080, targets: [Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new({ip: '22.231.2.2', port: 8080, weight: 123})]}) # NetworkLoadBalancerForwardingRuleProperties | The properties of the forwarding rule to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify NLB forwarding rules
  result = api_instance.datacenters_networkloadbalancers_forwardingrules_patch(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_patch: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancerForwardingRule>, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_patch_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule_properties, opts)

```ruby
begin
  # Partially modify NLB forwarding rules
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_patch_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
| **network_load_balancer_forwarding_rule_properties** | [**NetworkLoadBalancerForwardingRuleProperties**](NetworkLoadBalancerForwardingRuleProperties.md) | The properties of the forwarding rule to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](../models/NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_post

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_post(datacenter_id, network_load_balancer_id, network_load_balancer_forwarding_rule, opts)

Create NLB forwarding rules

Create a forwarding rule for the specified Network Load Balancer.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
network_load_balancer_forwarding_rule = Ionoscloud::NetworkLoadBalancerForwardingRule.new({properties: Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new({name: 'My Network Load Balancer forwarding rule', algorithm: 'ROUND_ROBIN', protocol: 'HTTP', listener_ip: '81.173.1.2', listener_port: 8080, targets: [Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new({ip: '22.231.2.2', port: 8080, weight: 123})]})}) # NetworkLoadBalancerForwardingRule | The forwarding rule to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create NLB forwarding rules
  result = api_instance.datacenters_networkloadbalancers_forwardingrules_post(datacenter_id, network_load_balancer_id, network_load_balancer_forwarding_rule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_post: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancerForwardingRule>, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_post_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer_forwarding_rule, opts)

```ruby
begin
  # Create NLB forwarding rules
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_post_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer_forwarding_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **network_load_balancer_forwarding_rule** | [**NetworkLoadBalancerForwardingRule**](NetworkLoadBalancerForwardingRule.md) | The forwarding rule to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](../models/NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_put

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_put(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule, opts)

Modify NLB forwarding rules

Modify the specified Network Load Balancer forwarding rule.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
network_load_balancer_forwarding_rule = Ionoscloud::NetworkLoadBalancerForwardingRulePut.new({properties: Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new({name: 'My Network Load Balancer forwarding rule', algorithm: 'ROUND_ROBIN', protocol: 'HTTP', listener_ip: '81.173.1.2', listener_port: 8080, targets: [Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new({ip: '22.231.2.2', port: 8080, weight: 123})]})}) # NetworkLoadBalancerForwardingRulePut | The modified NLB forwarding rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify NLB forwarding rules
  result = api_instance.datacenters_networkloadbalancers_forwardingrules_put(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_put: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancerForwardingRule>, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_put_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule, opts)

```ruby
begin
  # Modify NLB forwarding rules
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_put_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
| **network_load_balancer_forwarding_rule** | [**NetworkLoadBalancerForwardingRulePut**](NetworkLoadBalancerForwardingRulePut.md) | The modified NLB forwarding rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](../models/NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_get

> <NetworkLoadBalancers> datacenters_networkloadbalancers_get(datacenter_id, opts)

List Network Load Balancers

List all the Network Load Balancers within the data center.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List Network Load Balancers
  result = api_instance.datacenters_networkloadbalancers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_get: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancers>, Integer, Hash)> datacenters_networkloadbalancers_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List Network Load Balancers
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (use together with limit for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**NetworkLoadBalancers**](../models/NetworkLoadBalancers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_patch

> <NetworkLoadBalancer> datacenters_networkloadbalancers_patch(datacenter_id, network_load_balancer_id, network_load_balancer_properties, opts)

Partially modify Network Load Balancers

Update the properties of the specified Network Load Balancer within the data center.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
network_load_balancer_properties = Ionoscloud::NetworkLoadBalancerProperties.new({name: 'My Network Load Balancer', listener_lan: 1, target_lan: 2}) # NetworkLoadBalancerProperties | The properties of the Network Load Balancer to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify Network Load Balancers
  result = api_instance.datacenters_networkloadbalancers_patch(datacenter_id, network_load_balancer_id, network_load_balancer_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_patch: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancer>, Integer, Hash)> datacenters_networkloadbalancers_patch_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer_properties, opts)

```ruby
begin
  # Partially modify Network Load Balancers
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_patch_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **network_load_balancer_properties** | [**NetworkLoadBalancerProperties**](NetworkLoadBalancerProperties.md) | The properties of the Network Load Balancer to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancer**](../models/NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_post

> <NetworkLoadBalancer> datacenters_networkloadbalancers_post(datacenter_id, network_load_balancer, opts)

Create Network Load Balancers

Create a Network Load Balancer within the data center.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer = Ionoscloud::NetworkLoadBalancer.new({properties: Ionoscloud::NetworkLoadBalancerProperties.new({name: 'My Network Load Balancer', listener_lan: 1, target_lan: 2})}) # NetworkLoadBalancer | The Network Load Balancer to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create Network Load Balancers
  result = api_instance.datacenters_networkloadbalancers_post(datacenter_id, network_load_balancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_post: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancer>, Integer, Hash)> datacenters_networkloadbalancers_post_with_http_info(datacenter_id, network_load_balancer, opts)

```ruby
begin
  # Create Network Load Balancers
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_post_with_http_info(datacenter_id, network_load_balancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer** | [**NetworkLoadBalancer**](NetworkLoadBalancer.md) | The Network Load Balancer to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancer**](../models/NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_put

> <NetworkLoadBalancer> datacenters_networkloadbalancers_put(datacenter_id, network_load_balancer_id, network_load_balancer, opts)

Modify Network Load Balancers

Modify the properties of the specified Network Load Balancer within the data center.

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

api_instance = Ionoscloud::NetworkLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer.
network_load_balancer = Ionoscloud::NetworkLoadBalancerPut.new({properties: Ionoscloud::NetworkLoadBalancerProperties.new({name: 'My Network Load Balancer', listener_lan: 1, target_lan: 2})}) # NetworkLoadBalancerPut | The modified Network Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify Network Load Balancers
  result = api_instance.datacenters_networkloadbalancers_put(datacenter_id, network_load_balancer_id, network_load_balancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_put: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkLoadBalancer>, Integer, Hash)> datacenters_networkloadbalancers_put_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer, opts)

```ruby
begin
  # Modify Network Load Balancers
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_put_with_http_info(datacenter_id, network_load_balancer_id, network_load_balancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer. |  |
| **network_load_balancer** | [**NetworkLoadBalancerPut**](NetworkLoadBalancerPut.md) | The modified Network Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**NetworkLoadBalancer**](../models/NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

