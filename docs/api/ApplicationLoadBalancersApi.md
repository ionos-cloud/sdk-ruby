# ApplicationLoadBalancersApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_applicationloadbalancers_delete**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_delete) | **DELETE** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId} | Delete Application Load Balancers |
| [**datacenters_applicationloadbalancers_find_by_application_load_balancer_id**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_find_by_application_load_balancer_id) | **GET** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId} | Retrieve Application Load Balancers |
| [**datacenters_applicationloadbalancers_flowlogs_delete**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/flowlogs/{flowLogId} | Delete ALB Flow Logs |
| [**datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id) | **GET** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/flowlogs/{flowLogId} | Retrieve ALB Flow Logs |
| [**datacenters_applicationloadbalancers_flowlogs_get**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_flowlogs_get) | **GET** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/flowlogs | List ALB Flow Logs |
| [**datacenters_applicationloadbalancers_flowlogs_patch**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/flowlogs/{flowLogId} | Partially modify ALB Flow Logs |
| [**datacenters_applicationloadbalancers_flowlogs_post**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_flowlogs_post) | **POST** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/flowlogs | Create ALB Flow Logs |
| [**datacenters_applicationloadbalancers_flowlogs_put**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_flowlogs_put) | **PUT** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/flowlogs/{flowLogId} | Modify ALB Flow Logs |
| [**datacenters_applicationloadbalancers_forwardingrules_delete**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_forwardingrules_delete) | **DELETE** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/forwardingrules/{forwardingRuleId} | Delete ALB forwarding rules |
| [**datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id) | **GET** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/forwardingrules/{forwardingRuleId} | Retrieve ALB forwarding rules |
| [**datacenters_applicationloadbalancers_forwardingrules_get**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_forwardingrules_get) | **GET** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/forwardingrules | List ALB forwarding rules |
| [**datacenters_applicationloadbalancers_forwardingrules_patch**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_forwardingrules_patch) | **PATCH** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/forwardingrules/{forwardingRuleId} | Partially modify ALB forwarding rules |
| [**datacenters_applicationloadbalancers_forwardingrules_post**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_forwardingrules_post) | **POST** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/forwardingrules | Create ALB forwarding rules |
| [**datacenters_applicationloadbalancers_forwardingrules_put**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_forwardingrules_put) | **PUT** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId}/forwardingrules/{forwardingRuleId} | Modify ALB forwarding rules |
| [**datacenters_applicationloadbalancers_get**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_get) | **GET** /datacenters/{datacenterId}/applicationloadbalancers | List Application Load Balancers |
| [**datacenters_applicationloadbalancers_patch**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_patch) | **PATCH** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId} | Partially modify Application Load Balancers |
| [**datacenters_applicationloadbalancers_post**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_post) | **POST** /datacenters/{datacenterId}/applicationloadbalancers | Create Application Load Balancers |
| [**datacenters_applicationloadbalancers_put**](ApplicationLoadBalancersApi.md#datacenters_applicationloadbalancers_put) | **PUT** /datacenters/{datacenterId}/applicationloadbalancers/{applicationLoadBalancerId} | Modify Application Load Balancers |


## datacenters_applicationloadbalancers_delete

> datacenters_applicationloadbalancers_delete(datacenter_id, application_load_balancer_id, opts)

Delete Application Load Balancers

Remove the specified Application Load Balancer from the data center..

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete Application Load Balancers
  api_instance.datacenters_applicationloadbalancers_delete(datacenter_id, application_load_balancer_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_delete: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_applicationloadbalancers_delete_with_http_info(datacenter_id, application_load_balancer_id, opts)

```ruby
begin
  # Delete Application Load Balancers
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_delete_with_http_info(datacenter_id, application_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
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


## datacenters_applicationloadbalancers_find_by_application_load_balancer_id

> <ApplicationLoadBalancer> datacenters_applicationloadbalancers_find_by_application_load_balancer_id(datacenter_id, application_load_balancer_id, opts)

Retrieve Application Load Balancers

Retrieve the properties of the specified Application Load Balancer within the data center.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve Application Load Balancers
  result = api_instance.datacenters_applicationloadbalancers_find_by_application_load_balancer_id(datacenter_id, application_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_find_by_application_load_balancer_id: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_find_by_application_load_balancer_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancer>, Integer, Hash)> datacenters_applicationloadbalancers_find_by_application_load_balancer_id_with_http_info(datacenter_id, application_load_balancer_id, opts)

```ruby
begin
  # Retrieve Application Load Balancers
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_find_by_application_load_balancer_id_with_http_info(datacenter_id, application_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_find_by_application_load_balancer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancer**](../models/ApplicationLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_flowlogs_delete

> datacenters_applicationloadbalancers_flowlogs_delete(datacenter_id, application_load_balancer_id, flow_log_id, opts)

Delete ALB Flow Logs

Delete the specified Application Load Balancer Flow Log.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete ALB Flow Logs
  api_instance.datacenters_applicationloadbalancers_flowlogs_delete(datacenter_id, application_load_balancer_id, flow_log_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_delete: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_flowlogs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_applicationloadbalancers_flowlogs_delete_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, opts)

```ruby
begin
  # Delete ALB Flow Logs
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_flowlogs_delete_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
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


## datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id

> <FlowLog> datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id(datacenter_id, application_load_balancer_id, flow_log_id, opts)

Retrieve ALB Flow Logs

Retrieve the specified Application Load Balancer Flow Log.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve ALB Flow Logs
  result = api_instance.datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id(datacenter_id, application_load_balancer_id, flow_log_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, opts)

```ruby
begin
  # Retrieve ALB Flow Logs
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_find_by_flow_log_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_flowlogs_get

> <FlowLogs> datacenters_applicationloadbalancers_flowlogs_get(datacenter_id, application_load_balancer_id, opts)

List ALB Flow Logs

List the Flow Logs for the specified Application Load Balancer.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List ALB Flow Logs
  result = api_instance.datacenters_applicationloadbalancers_flowlogs_get(datacenter_id, application_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_get: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_flowlogs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLogs>, Integer, Hash)> datacenters_applicationloadbalancers_flowlogs_get_with_http_info(datacenter_id, application_load_balancer_id, opts)

```ruby
begin
  # List ALB Flow Logs
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_flowlogs_get_with_http_info(datacenter_id, application_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLogs>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FlowLogs**](../models/FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_flowlogs_patch

> <FlowLog> datacenters_applicationloadbalancers_flowlogs_patch(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log_properties, opts)

Partially modify ALB Flow Logs

Update the properties of the specified Application Load Balancer Flow Log.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
application_load_balancer_flow_log_properties = Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'}) # FlowLogProperties | The properties of the ALB Flow Log to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify ALB Flow Logs
  result = api_instance.datacenters_applicationloadbalancers_flowlogs_patch(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_patch: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_flowlogs_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_applicationloadbalancers_flowlogs_patch_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log_properties, opts)

```ruby
begin
  # Partially modify ALB Flow Logs
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_flowlogs_patch_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **application_load_balancer_flow_log_properties** | [**FlowLogProperties**](FlowLogProperties.md) | The properties of the ALB Flow Log to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_flowlogs_post

> <FlowLog> datacenters_applicationloadbalancers_flowlogs_post(datacenter_id, application_load_balancer_id, application_load_balancer_flow_log, opts)

Create ALB Flow Logs

Add a new Flow Log for the Application Load Balancer.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
application_load_balancer_flow_log = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLog | The Flow Log to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create ALB Flow Logs
  result = api_instance.datacenters_applicationloadbalancers_flowlogs_post(datacenter_id, application_load_balancer_id, application_load_balancer_flow_log, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_post: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_flowlogs_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_applicationloadbalancers_flowlogs_post_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer_flow_log, opts)

```ruby
begin
  # Create ALB Flow Logs
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_flowlogs_post_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer_flow_log, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **application_load_balancer_flow_log** | [**FlowLog**](FlowLog.md) | The Flow Log to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_applicationloadbalancers_flowlogs_put

> <FlowLog> datacenters_applicationloadbalancers_flowlogs_put(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log, opts)

Modify ALB Flow Logs

Modify the specified Application Load Balancer Flow Log.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
application_load_balancer_flow_log = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLogPut | The modified ALB Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify ALB Flow Logs
  result = api_instance.datacenters_applicationloadbalancers_flowlogs_put(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_put: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_flowlogs_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_applicationloadbalancers_flowlogs_put_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log, opts)

```ruby
begin
  # Modify ALB Flow Logs
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_flowlogs_put_with_http_info(datacenter_id, application_load_balancer_id, flow_log_id, application_load_balancer_flow_log, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_flowlogs_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **application_load_balancer_flow_log** | [**FlowLogPut**](FlowLogPut.md) | The modified ALB Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_applicationloadbalancers_forwardingrules_delete

> datacenters_applicationloadbalancers_forwardingrules_delete(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)

Delete ALB forwarding rules

Delete the specified Application Load Balancer forwarding rule.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete ALB forwarding rules
  api_instance.datacenters_applicationloadbalancers_forwardingrules_delete(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_delete: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_forwardingrules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_applicationloadbalancers_forwardingrules_delete_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)

```ruby
begin
  # Delete ALB forwarding rules
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_forwardingrules_delete_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
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


## datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id

> <ApplicationLoadBalancerForwardingRule> datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)

Retrieve ALB forwarding rules

Retrieve the specified Application Load Balancer forwarding rule.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve ALB forwarding rules
  result = api_instance.datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancerForwardingRule>, Integer, Hash)> datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)

```ruby
begin
  # Retrieve ALB forwarding rules
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_find_by_forwarding_rule_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancerForwardingRule**](../models/ApplicationLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_forwardingrules_get

> <ApplicationLoadBalancerForwardingRules> datacenters_applicationloadbalancers_forwardingrules_get(datacenter_id, application_load_balancer_id, opts)

List ALB forwarding rules

List the forwarding rules for the specified Application Load Balancer.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List ALB forwarding rules
  result = api_instance.datacenters_applicationloadbalancers_forwardingrules_get(datacenter_id, application_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_get: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_forwardingrules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancerForwardingRules>, Integer, Hash)> datacenters_applicationloadbalancers_forwardingrules_get_with_http_info(datacenter_id, application_load_balancer_id, opts)

```ruby
begin
  # List ALB forwarding rules
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_forwardingrules_get_with_http_info(datacenter_id, application_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancerForwardingRules>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancerForwardingRules**](../models/ApplicationLoadBalancerForwardingRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_forwardingrules_patch

> <ApplicationLoadBalancerForwardingRule> datacenters_applicationloadbalancers_forwardingrules_patch(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule_properties, opts)

Partially modify ALB forwarding rules

Update the properties of the specified Application Load Balancer forwarding rule.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
application_load_balancer_forwarding_rule_properties = Ionoscloud::ApplicationLoadBalancerForwardingRuleProperties.new({name: 'My Application Load Balancer forwarding rule', protocol: 'HTTP', listener_ip: '81.173.1.2', listener_port: 8080}) # ApplicationLoadBalancerForwardingRuleProperties | The properties of the forwarding rule to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify ALB forwarding rules
  result = api_instance.datacenters_applicationloadbalancers_forwardingrules_patch(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_patch: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_forwardingrules_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancerForwardingRule>, Integer, Hash)> datacenters_applicationloadbalancers_forwardingrules_patch_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule_properties, opts)

```ruby
begin
  # Partially modify ALB forwarding rules
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_forwardingrules_patch_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
| **application_load_balancer_forwarding_rule_properties** | [**ApplicationLoadBalancerForwardingRuleProperties**](ApplicationLoadBalancerForwardingRuleProperties.md) | The properties of the forwarding rule to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancerForwardingRule**](../models/ApplicationLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_forwardingrules_post

> <ApplicationLoadBalancerForwardingRule> datacenters_applicationloadbalancers_forwardingrules_post(datacenter_id, application_load_balancer_id, application_load_balancer_forwarding_rule, opts)

Create ALB forwarding rules

Create a forwarding rule for the Application Load Balancer.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
application_load_balancer_forwarding_rule = Ionoscloud::ApplicationLoadBalancerForwardingRule.new({properties: Ionoscloud::ApplicationLoadBalancerForwardingRuleProperties.new({name: 'My Application Load Balancer forwarding rule', protocol: 'HTTP', listener_ip: '81.173.1.2', listener_port: 8080})}) # ApplicationLoadBalancerForwardingRule | The forwarding rule to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create ALB forwarding rules
  result = api_instance.datacenters_applicationloadbalancers_forwardingrules_post(datacenter_id, application_load_balancer_id, application_load_balancer_forwarding_rule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_post: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_forwardingrules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancerForwardingRule>, Integer, Hash)> datacenters_applicationloadbalancers_forwardingrules_post_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer_forwarding_rule, opts)

```ruby
begin
  # Create ALB forwarding rules
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_forwardingrules_post_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer_forwarding_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **application_load_balancer_forwarding_rule** | [**ApplicationLoadBalancerForwardingRule**](ApplicationLoadBalancerForwardingRule.md) | The forwarding rule to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancerForwardingRule**](../models/ApplicationLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_applicationloadbalancers_forwardingrules_put

> <ApplicationLoadBalancerForwardingRule> datacenters_applicationloadbalancers_forwardingrules_put(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule, opts)

Modify ALB forwarding rules

Modify the specified Application Load Balancer forwarding rule.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule.
application_load_balancer_forwarding_rule = Ionoscloud::ApplicationLoadBalancerForwardingRulePut.new({properties: Ionoscloud::ApplicationLoadBalancerForwardingRuleProperties.new({name: 'My Application Load Balancer forwarding rule', protocol: 'HTTP', listener_ip: '81.173.1.2', listener_port: 8080})}) # ApplicationLoadBalancerForwardingRulePut | The modified ALB forwarding rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify ALB forwarding rules
  result = api_instance.datacenters_applicationloadbalancers_forwardingrules_put(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_put: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_forwardingrules_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancerForwardingRule>, Integer, Hash)> datacenters_applicationloadbalancers_forwardingrules_put_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule, opts)

```ruby
begin
  # Modify ALB forwarding rules
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_forwardingrules_put_with_http_info(datacenter_id, application_load_balancer_id, forwarding_rule_id, application_load_balancer_forwarding_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancerForwardingRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_forwardingrules_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule. |  |
| **application_load_balancer_forwarding_rule** | [**ApplicationLoadBalancerForwardingRulePut**](ApplicationLoadBalancerForwardingRulePut.md) | The modified ALB forwarding rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancerForwardingRule**](../models/ApplicationLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_applicationloadbalancers_get

> <ApplicationLoadBalancers> datacenters_applicationloadbalancers_get(datacenter_id, opts)

List Application Load Balancers

List all Application Load Balancers within the data center.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56, # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List Application Load Balancers
  result = api_instance.datacenters_applicationloadbalancers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_get: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancers>, Integer, Hash)> datacenters_applicationloadbalancers_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List Application Load Balancers
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**ApplicationLoadBalancers**](../models/ApplicationLoadBalancers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_patch

> <ApplicationLoadBalancer> datacenters_applicationloadbalancers_patch(datacenter_id, application_load_balancer_id, application_load_balancer_properties, opts)

Partially modify Application Load Balancers

Update the properties of the specified Application Load Balancer within the data center.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
application_load_balancer_properties = Ionoscloud::ApplicationLoadBalancerProperties.new({name: 'My Application Load Balancer', listener_lan: 1, target_lan: 2}) # ApplicationLoadBalancerProperties | The Application Load Balancer properties to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify Application Load Balancers
  result = api_instance.datacenters_applicationloadbalancers_patch(datacenter_id, application_load_balancer_id, application_load_balancer_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_patch: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancer>, Integer, Hash)> datacenters_applicationloadbalancers_patch_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer_properties, opts)

```ruby
begin
  # Partially modify Application Load Balancers
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_patch_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **application_load_balancer_properties** | [**ApplicationLoadBalancerProperties**](ApplicationLoadBalancerProperties.md) | The Application Load Balancer properties to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancer**](../models/ApplicationLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_applicationloadbalancers_post

> <ApplicationLoadBalancer> datacenters_applicationloadbalancers_post(datacenter_id, application_load_balancer, opts)

Create Application Load Balancers

Create an Application Load Balancer within the datacenter.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer = Ionoscloud::ApplicationLoadBalancer.new({properties: Ionoscloud::ApplicationLoadBalancerProperties.new({name: 'My Application Load Balancer', listener_lan: 1, target_lan: 2})}) # ApplicationLoadBalancer | The Application Load Balancer to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create Application Load Balancers
  result = api_instance.datacenters_applicationloadbalancers_post(datacenter_id, application_load_balancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_post: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancer>, Integer, Hash)> datacenters_applicationloadbalancers_post_with_http_info(datacenter_id, application_load_balancer, opts)

```ruby
begin
  # Create Application Load Balancers
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_post_with_http_info(datacenter_id, application_load_balancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer** | [**ApplicationLoadBalancer**](ApplicationLoadBalancer.md) | The Application Load Balancer to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancer**](../models/ApplicationLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_applicationloadbalancers_put

> <ApplicationLoadBalancer> datacenters_applicationloadbalancers_put(datacenter_id, application_load_balancer_id, application_load_balancer, opts)

Modify Application Load Balancers

Modify the properties of the specified Application Load Balancer within the data center.

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

api_instance = Ionoscloud::ApplicationLoadBalancersApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
application_load_balancer_id = 'application_load_balancer_id_example' # String | The unique ID of the Application Load Balancer.
application_load_balancer = Ionoscloud::ApplicationLoadBalancerPut.new({properties: Ionoscloud::ApplicationLoadBalancerProperties.new({name: 'My Application Load Balancer', listener_lan: 1, target_lan: 2})}) # ApplicationLoadBalancerPut | The modified Application Load Balancer.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify Application Load Balancers
  result = api_instance.datacenters_applicationloadbalancers_put(datacenter_id, application_load_balancer_id, application_load_balancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_put: #{e}"
end
```

#### Using the datacenters_applicationloadbalancers_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationLoadBalancer>, Integer, Hash)> datacenters_applicationloadbalancers_put_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer, opts)

```ruby
begin
  # Modify Application Load Balancers
  data, status_code, headers = api_instance.datacenters_applicationloadbalancers_put_with_http_info(datacenter_id, application_load_balancer_id, application_load_balancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationLoadBalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling ApplicationLoadBalancersApi->datacenters_applicationloadbalancers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **application_load_balancer_id** | **String** | The unique ID of the Application Load Balancer. |  |
| **application_load_balancer** | [**ApplicationLoadBalancerPut**](ApplicationLoadBalancerPut.md) | The modified Application Load Balancer. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**ApplicationLoadBalancer**](../models/ApplicationLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

