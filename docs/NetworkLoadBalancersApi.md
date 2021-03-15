# NetworkLoadBalancersApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_networkloadbalancers_delete**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_delete) | **DELETE** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Remove an Network Load Balancer |
| [**datacenters_networkloadbalancers_find_by_network_load_balancer_id**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_find_by_network_load_balancer_id) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Retrieve an Network Load Balancer |
| [**datacenters_networkloadbalancers_flowlogs_delete**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Remove Flow Log from Network Load Balancer |
| [**datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Retrieve a Flow Log of the Network Load Balancer |
| [**datacenters_networkloadbalancers_flowlogs_get**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_get) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs | List Network Load Balancer Flow Logs |
| [**datacenters_networkloadbalancers_flowlogs_patch**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Partially modify a Flow Log of the Network Load Balancer |
| [**datacenters_networkloadbalancers_flowlogs_post**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_post) | **POST** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs | Add a Network Load Balancer Flow Log |
| [**datacenters_networkloadbalancers_flowlogs_put**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_flowlogs_put) | **PUT** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/flowlogs/{flowLogId} | Modify a Flow Log of the Network Load Balancer |
| [**datacenters_networkloadbalancers_forwardingrules_delete**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_delete) | **DELETE** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Remove Forwarding Rule from Network Load Balancer |
| [**datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Retrieve a Forwarding Rule of the Network Load Balancer |
| [**datacenters_networkloadbalancers_forwardingrules_get**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_get) | **GET** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules | List Network Load Balancer Forwarding Rules |
| [**datacenters_networkloadbalancers_forwardingrules_patch**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_patch) | **PATCH** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Partially modify a forwarding rule of the Network Load Balancer |
| [**datacenters_networkloadbalancers_forwardingrules_post**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_post) | **POST** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules | Add a Network Load Balancer Forwarding Rule |
| [**datacenters_networkloadbalancers_forwardingrules_put**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_forwardingrules_put) | **PUT** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId}/forwardingrules/{forwardingRuleId} | Modify a forwarding rule of the Network Load Balancer |
| [**datacenters_networkloadbalancers_get**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_get) | **GET** /datacenters/{datacenterId}/networkloadbalancers | List Network Load Balancers |
| [**datacenters_networkloadbalancers_patch**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_patch) | **PATCH** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Partially update an Network Load Balancer |
| [**datacenters_networkloadbalancers_post**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_post) | **POST** /datacenters/{datacenterId}/networkloadbalancers | Create an Network Load Balancer |
| [**datacenters_networkloadbalancers_put**](NetworkLoadBalancersApi.md#datacenters_networkloadbalancers_put) | **PUT** /datacenters/{datacenterId}/networkloadbalancers/{networkLoadBalancerId} | Update an Network Load Balancer |


## datacenters_networkloadbalancers_delete

> Object datacenters_networkloadbalancers_delete(datacenter_id, network_load_balancer_id, opts)

Remove an Network Load Balancer

Removes the specified Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove an Network Load Balancer
  result = api_instance.datacenters_networkloadbalancers_delete(datacenter_id, network_load_balancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_delete: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_networkloadbalancers_delete_with_http_info(datacenter_id, network_load_balancer_id, opts)

```ruby
begin
  # Remove an Network Load Balancer
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_delete_with_http_info(datacenter_id, network_load_balancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
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


## datacenters_networkloadbalancers_find_by_network_load_balancer_id

> <NetworkLoadBalancer> datacenters_networkloadbalancers_find_by_network_load_balancer_id(datacenter_id, network_load_balancer_id, opts)

Retrieve an Network Load Balancer

Retrieves the attributes of a given Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve an Network Load Balancer
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
  # Retrieve an Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancer**](NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_delete

> Object datacenters_networkloadbalancers_flowlogs_delete(datacenter_id, network_load_balancer_id, flow_log_id, opts)

Remove Flow Log from Network Load Balancer

This will remove a flow log from the network load balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
flow_log_id = 'flow_log_id_example' # String | The unique ID of the flow log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove Flow Log from Network Load Balancer
  result = api_instance.datacenters_networkloadbalancers_flowlogs_delete(datacenter_id, network_load_balancer_id, flow_log_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_delete: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_flowlogs_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_networkloadbalancers_flowlogs_delete_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, opts)

```ruby
begin
  # Remove Flow Log from Network Load Balancer
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_flowlogs_delete_with_http_info(datacenter_id, network_load_balancer_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_flowlogs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **flow_log_id** | **String** | The unique ID of the flow log |  |
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


## datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id

> <FlowLog> datacenters_networkloadbalancers_flowlogs_find_by_flow_log_id(datacenter_id, network_load_balancer_id, flow_log_id, opts)

Retrieve a Flow Log of the Network Load Balancer

This will return a Flow Log of the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Flow Log of the Network Load Balancer
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
  # Retrieve a Flow Log of the Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_get

> <FlowLogs> datacenters_networkloadbalancers_flowlogs_get(datacenter_id, network_load_balancer_id, opts)

List Network Load Balancer Flow Logs

You can retrieve a list of Flow Logs of the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Network Load Balancer Flow Logs
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
  # List Network Load Balancer Flow Logs
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FlowLogs**](FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_patch

> <FlowLog> datacenters_networkloadbalancers_flowlogs_patch(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log_properties, opts)

Partially modify a Flow Log of the Network Load Balancer

You can use to partially update a Flow Log of a Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log
network_load_balancer_flow_log_properties = Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'}) # FlowLogProperties | Properties of a Flow Log to be updated
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Flow Log of the Network Load Balancer
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
  # Partially modify a Flow Log of the Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log |  |
| **network_load_balancer_flow_log_properties** | [**FlowLogProperties**](FlowLogProperties.md) | Properties of a Flow Log to be updated |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_post

> <FlowLog> datacenters_networkloadbalancers_flowlogs_post(datacenter_id, network_load_balancer_id, network_load_balancer_flow_log, opts)

Add a Network Load Balancer Flow Log

This will add a new Flow Log to the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
network_load_balancer_flow_log = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLog | Flow Log to add
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Network Load Balancer Flow Log
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
  # Add a Network Load Balancer Flow Log
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **network_load_balancer_flow_log** | [**FlowLog**](FlowLog.md) | Flow Log to add |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_flowlogs_put

> <FlowLog> datacenters_networkloadbalancers_flowlogs_put(datacenter_id, network_load_balancer_id, flow_log_id, network_load_balancer_flow_log, opts)

Modify a Flow Log of the Network Load Balancer

You can use to update a Flow Log of the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log
network_load_balancer_flow_log = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLogPut | Modified Network Load Balancer Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Flow Log of the Network Load Balancer
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
  # Modify a Flow Log of the Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log |  |
| **network_load_balancer_flow_log** | [**FlowLogPut**](FlowLogPut.md) | Modified Network Load Balancer Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_delete

> Object datacenters_networkloadbalancers_forwardingrules_delete(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

Remove Forwarding Rule from Network Load Balancer

This will remove a forwarding rule from the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove Forwarding Rule from Network Load Balancer
  result = api_instance.datacenters_networkloadbalancers_forwardingrules_delete(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_delete: #{e}"
end
```

#### Using the datacenters_networkloadbalancers_forwardingrules_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> datacenters_networkloadbalancers_forwardingrules_delete_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

```ruby
begin
  # Remove Forwarding Rule from Network Load Balancer
  data, status_code, headers = api_instance.datacenters_networkloadbalancers_forwardingrules_delete_with_http_info(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling NetworkLoadBalancersApi->datacenters_networkloadbalancers_forwardingrules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule |  |
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


## datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_find_by_forwarding_rule_id(datacenter_id, network_load_balancer_id, forwarding_rule_id, opts)

Retrieve a Forwarding Rule of the Network Load Balancer

This will a forwarding rule of the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Forwarding Rule of the Network Load Balancer
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
  # Retrieve a Forwarding Rule of the Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_get

> <NetworkLoadBalancerForwardingRules> datacenters_networkloadbalancers_forwardingrules_get(datacenter_id, network_load_balancer_id, opts)

List Network Load Balancer Forwarding Rules

You can retrieve a list of forwarding rules of the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Network Load Balancer Forwarding Rules
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
  # List Network Load Balancer Forwarding Rules
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRules**](NetworkLoadBalancerForwardingRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_patch

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_patch(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule_properties, opts)

Partially modify a forwarding rule of the Network Load Balancer

You can use to partially update a forwarding rule of a Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule
network_load_balancer_forwarding_rule_properties = Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new({name: 'My Network Load Balancer forwarding rule', algorithm: 'ROUND_ROBIN', protocol: 'TCP', listener_ip: '81.173.1.2', listener_port: 8080, targets: [Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new({ip: '22.231.2.2', port: 8080, weight: 123})]}) # NetworkLoadBalancerForwardingRuleProperties | Properties of a forwarding rule to be updated
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a forwarding rule of the Network Load Balancer
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
  # Partially modify a forwarding rule of the Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule |  |
| **network_load_balancer_forwarding_rule_properties** | [**NetworkLoadBalancerForwardingRuleProperties**](NetworkLoadBalancerForwardingRuleProperties.md) | Properties of a forwarding rule to be updated |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_post

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_post(datacenter_id, network_load_balancer_id, network_load_balancer_forwarding_rule, opts)

Add a Network Load Balancer Forwarding Rule

This will add a new forwarding rule to the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
network_load_balancer_forwarding_rule = Ionoscloud::NetworkLoadBalancerForwardingRule.new({properties: Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new({name: 'My Network Load Balancer forwarding rule', algorithm: 'ROUND_ROBIN', protocol: 'TCP', listener_ip: '81.173.1.2', listener_port: 8080, targets: [Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new({ip: '22.231.2.2', port: 8080, weight: 123})]})}) # NetworkLoadBalancerForwardingRule | forwarding rule to add
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Network Load Balancer Forwarding Rule
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
  # Add a Network Load Balancer Forwarding Rule
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **network_load_balancer_forwarding_rule** | [**NetworkLoadBalancerForwardingRule**](NetworkLoadBalancerForwardingRule.md) | forwarding rule to add |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_forwardingrules_put

> <NetworkLoadBalancerForwardingRule> datacenters_networkloadbalancers_forwardingrules_put(datacenter_id, network_load_balancer_id, forwarding_rule_id, network_load_balancer_forwarding_rule, opts)

Modify a forwarding rule of the Network Load Balancer

You can use to update a forwarding rule of the Network Load Balancer.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
forwarding_rule_id = 'forwarding_rule_id_example' # String | The unique ID of the forwarding rule
network_load_balancer_forwarding_rule = Ionoscloud::NetworkLoadBalancerForwardingRulePut.new({properties: Ionoscloud::NetworkLoadBalancerForwardingRuleProperties.new({name: 'My Network Load Balancer forwarding rule', algorithm: 'ROUND_ROBIN', protocol: 'TCP', listener_ip: '81.173.1.2', listener_port: 8080, targets: [Ionoscloud::NetworkLoadBalancerForwardingRuleTarget.new({ip: '22.231.2.2', port: 8080, weight: 123})]})}) # NetworkLoadBalancerForwardingRulePut | Modified Network Load Balancer Forwarding Rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a forwarding rule of the Network Load Balancer
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
  # Modify a forwarding rule of the Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **forwarding_rule_id** | **String** | The unique ID of the forwarding rule |  |
| **network_load_balancer_forwarding_rule** | [**NetworkLoadBalancerForwardingRulePut**](NetworkLoadBalancerForwardingRulePut.md) | Modified Network Load Balancer Forwarding Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancerForwardingRule**](NetworkLoadBalancerForwardingRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_get

> <NetworkLoadBalancers> datacenters_networkloadbalancers_get(datacenter_id, opts)

List Network Load Balancers

Retrieve a list of Network Load Balancers within the datacenter.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**NetworkLoadBalancers**](NetworkLoadBalancers.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_patch

> <NetworkLoadBalancer> datacenters_networkloadbalancers_patch(datacenter_id, network_load_balancer_id, network_load_balancer_properties, opts)

Partially update an Network Load Balancer

Partially update the attributes of a given Network Load Balancer

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
network_load_balancer_properties = Ionoscloud::NetworkLoadBalancerProperties.new({name: 'My Network Load Balancer', listener_lan: 1, target_lan: 2}) # NetworkLoadBalancerProperties | Network Load Balancer properties to be updated
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially update an Network Load Balancer
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
  # Partially update an Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **network_load_balancer_properties** | [**NetworkLoadBalancerProperties**](NetworkLoadBalancerProperties.md) | Network Load Balancer properties to be updated |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancer**](NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_networkloadbalancers_post

> <NetworkLoadBalancer> datacenters_networkloadbalancers_post(datacenter_id, network_load_balancer, opts)

Create an Network Load Balancer

Creates an Network Load Balancer within the datacenter.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer = Ionoscloud::NetworkLoadBalancer.new({properties: Ionoscloud::NetworkLoadBalancerProperties.new({name: 'My Network Load Balancer', listener_lan: 1, target_lan: 2})}) # NetworkLoadBalancer | Network Load Balancer to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create an Network Load Balancer
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
  # Create an Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer** | [**NetworkLoadBalancer**](NetworkLoadBalancer.md) | Network Load Balancer to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NetworkLoadBalancer**](NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_networkloadbalancers_put

> <NetworkLoadBalancer> datacenters_networkloadbalancers_put(datacenter_id, network_load_balancer_id, network_load_balancer, opts)

Update an Network Load Balancer

Update the attributes of a given Network Load Balancer

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
network_load_balancer_id = 'network_load_balancer_id_example' # String | The unique ID of the Network Load Balancer
network_load_balancer = Ionoscloud::NetworkLoadBalancerPut.new({properties: Ionoscloud::NetworkLoadBalancerProperties.new({name: 'My Network Load Balancer', listener_lan: 1, target_lan: 2})}) # NetworkLoadBalancerPut | Modified Network Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
}

begin
  # Update an Network Load Balancer
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
  # Update an Network Load Balancer
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **network_load_balancer_id** | **String** | The unique ID of the Network Load Balancer |  |
| **network_load_balancer** | [**NetworkLoadBalancerPut**](NetworkLoadBalancerPut.md) | Modified Network Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**NetworkLoadBalancer**](NetworkLoadBalancer.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

