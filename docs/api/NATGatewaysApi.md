# NATGatewaysApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_natgateways_delete**](NATGatewaysApi.md#datacenters_natgateways_delete) | **DELETE** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Delete NAT Gateways |
| [**datacenters_natgateways_find_by_nat_gateway_id**](NATGatewaysApi.md#datacenters_natgateways_find_by_nat_gateway_id) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Retrieve NAT Gateways |
| [**datacenters_natgateways_flowlogs_delete**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Delete NAT Gateway Flow Logs |
| [**datacenters_natgateways_flowlogs_find_by_flow_log_id**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_find_by_flow_log_id) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Retrieve NAT Gateway Flow Logs |
| [**datacenters_natgateways_flowlogs_get**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_get) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs | List NAT Gateway Flow Logs |
| [**datacenters_natgateways_flowlogs_patch**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Partially modify NAT Gateway Flow Logs |
| [**datacenters_natgateways_flowlogs_post**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_post) | **POST** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs | Create a NAT Gateway Flow Log |
| [**datacenters_natgateways_flowlogs_put**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_put) | **PUT** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Modify NAT Gateway Flow Logs |
| [**datacenters_natgateways_get**](NATGatewaysApi.md#datacenters_natgateways_get) | **GET** /datacenters/{datacenterId}/natgateways | List NAT Gateways |
| [**datacenters_natgateways_patch**](NATGatewaysApi.md#datacenters_natgateways_patch) | **PATCH** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Partially modify NAT Gateways |
| [**datacenters_natgateways_post**](NATGatewaysApi.md#datacenters_natgateways_post) | **POST** /datacenters/{datacenterId}/natgateways | Create a NAT Gateway |
| [**datacenters_natgateways_put**](NATGatewaysApi.md#datacenters_natgateways_put) | **PUT** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Modify NAT Gateways |
| [**datacenters_natgateways_rules_delete**](NATGatewaysApi.md#datacenters_natgateways_rules_delete) | **DELETE** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Delete NAT Gateway rules |
| [**datacenters_natgateways_rules_find_by_nat_gateway_rule_id**](NATGatewaysApi.md#datacenters_natgateways_rules_find_by_nat_gateway_rule_id) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Retrieve NAT Gateway rules |
| [**datacenters_natgateways_rules_get**](NATGatewaysApi.md#datacenters_natgateways_rules_get) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules | List NAT Gateway rules |
| [**datacenters_natgateways_rules_patch**](NATGatewaysApi.md#datacenters_natgateways_rules_patch) | **PATCH** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Partially Modify a NAT Gateway Rule by ID |
| [**datacenters_natgateways_rules_post**](NATGatewaysApi.md#datacenters_natgateways_rules_post) | **POST** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules | Create a NAT Gateway Rule |
| [**datacenters_natgateways_rules_put**](NATGatewaysApi.md#datacenters_natgateways_rules_put) | **PUT** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Modify a NAT Gateway Rule by ID |


## datacenters_natgateways_delete

> datacenters_natgateways_delete(datacenter_id, nat_gateway_id, opts)

Delete NAT Gateways

Remove the specified NAT Gateway from the data center.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete NAT Gateways
  api_instance.datacenters_natgateways_delete(datacenter_id, nat_gateway_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_delete: #{e}"
end
```

#### Using the datacenters_natgateways_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_natgateways_delete_with_http_info(datacenter_id, nat_gateway_id, opts)

```ruby
begin
  # Delete NAT Gateways
  data, status_code, headers = api_instance.datacenters_natgateways_delete_with_http_info(datacenter_id, nat_gateway_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
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


## datacenters_natgateways_find_by_nat_gateway_id

> <NatGateway> datacenters_natgateways_find_by_nat_gateway_id(datacenter_id, nat_gateway_id, opts)

Retrieve NAT Gateways

Retrieve the properties of the specified NAT Gateway within the data center.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve NAT Gateways
  result = api_instance.datacenters_natgateways_find_by_nat_gateway_id(datacenter_id, nat_gateway_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_find_by_nat_gateway_id: #{e}"
end
```

#### Using the datacenters_natgateways_find_by_nat_gateway_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> datacenters_natgateways_find_by_nat_gateway_id_with_http_info(datacenter_id, nat_gateway_id, opts)

```ruby
begin
  # Retrieve NAT Gateways
  data, status_code, headers = api_instance.datacenters_natgateways_find_by_nat_gateway_id_with_http_info(datacenter_id, nat_gateway_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_find_by_nat_gateway_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGateway**](../models/NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_delete

> datacenters_natgateways_flowlogs_delete(datacenter_id, nat_gateway_id, flow_log_id, opts)

Delete NAT Gateway Flow Logs

Delete the specified NAT Gateway Flow Log.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Delete NAT Gateway Flow Logs
  api_instance.datacenters_natgateways_flowlogs_delete(datacenter_id, nat_gateway_id, flow_log_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_delete: #{e}"
end
```

#### Using the datacenters_natgateways_flowlogs_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_natgateways_flowlogs_delete_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, opts)

```ruby
begin
  # Delete NAT Gateway Flow Logs
  data, status_code, headers = api_instance.datacenters_natgateways_flowlogs_delete_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_find_by_flow_log_id

> <FlowLog> datacenters_natgateways_flowlogs_find_by_flow_log_id(datacenter_id, nat_gateway_id, flow_log_id, opts)

Retrieve NAT Gateway Flow Logs

Retrieve the specified NAT Gateway Flow Log.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Retrieve NAT Gateway Flow Logs
  result = api_instance.datacenters_natgateways_flowlogs_find_by_flow_log_id(datacenter_id, nat_gateway_id, flow_log_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_find_by_flow_log_id: #{e}"
end
```

#### Using the datacenters_natgateways_flowlogs_find_by_flow_log_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_natgateways_flowlogs_find_by_flow_log_id_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, opts)

```ruby
begin
  # Retrieve NAT Gateway Flow Logs
  data, status_code, headers = api_instance.datacenters_natgateways_flowlogs_find_by_flow_log_id_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_find_by_flow_log_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_get

> <FlowLogs> datacenters_natgateways_flowlogs_get(datacenter_id, nat_gateway_id, opts)

List NAT Gateway Flow Logs

List all the Flow Logs for the specified NAT Gateway.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  offset: 56, # Integer | The first element (from the complete list of the elements) to include in the response (used together with <b><i>limit</i></b> for pagination).
  limit: 56 # Integer | The maximum number of elements to return (use together with offset for pagination).
}

begin
  # List NAT Gateway Flow Logs
  result = api_instance.datacenters_natgateways_flowlogs_get(datacenter_id, nat_gateway_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_get: #{e}"
end
```

#### Using the datacenters_natgateways_flowlogs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLogs>, Integer, Hash)> datacenters_natgateways_flowlogs_get_with_http_info(datacenter_id, nat_gateway_id, opts)

```ruby
begin
  # List NAT Gateway Flow Logs
  data, status_code, headers = api_instance.datacenters_natgateways_flowlogs_get_with_http_info(datacenter_id, nat_gateway_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLogs>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **offset** | **Integer** | The first element (from the complete list of the elements) to include in the response (used together with &lt;b&gt;&lt;i&gt;limit&lt;/i&gt;&lt;/b&gt; for pagination). | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of elements to return (use together with offset for pagination). | [optional][default to 1000] |

### Return type

[**FlowLogs**](../models/FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_patch

> <FlowLog> datacenters_natgateways_flowlogs_patch(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log_properties, opts)

Partially modify NAT Gateway Flow Logs

Update the properties of the specified NAT Gateway Flow Log.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
nat_gateway_flow_log_properties = Ionoscloud::FlowLogProperties.new({action: 'ACCEPTED', bucket: 'bucketName/key', direction: 'INGRESS', name: 'My resource'}) # FlowLogProperties | The properties of the Flow Log to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Partially modify NAT Gateway Flow Logs
  result = api_instance.datacenters_natgateways_flowlogs_patch(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_patch: #{e}"
end
```

#### Using the datacenters_natgateways_flowlogs_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_natgateways_flowlogs_patch_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log_properties, opts)

```ruby
begin
  # Partially modify NAT Gateway Flow Logs
  data, status_code, headers = api_instance.datacenters_natgateways_flowlogs_patch_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **nat_gateway_flow_log_properties** | [**FlowLogProperties**](../models/FlowLogProperties.md) | The properties of the Flow Log to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_post

> <FlowLog> datacenters_natgateways_flowlogs_post(datacenter_id, nat_gateway_id, nat_gateway_flow_log, opts)

Create a NAT Gateway Flow Log

Adds a new Flow Log to the specified NAT Gateway.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_flow_log = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({action: 'ACCEPTED', bucket: 'bucketName/key', direction: 'INGRESS', name: 'My resource'})}) # FlowLog | The Flow Log to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Create a NAT Gateway Flow Log
  result = api_instance.datacenters_natgateways_flowlogs_post(datacenter_id, nat_gateway_id, nat_gateway_flow_log, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_post: #{e}"
end
```

#### Using the datacenters_natgateways_flowlogs_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_natgateways_flowlogs_post_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_flow_log, opts)

```ruby
begin
  # Create a NAT Gateway Flow Log
  data, status_code, headers = api_instance.datacenters_natgateways_flowlogs_post_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_flow_log, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_flow_log** | [**FlowLog**](../models/FlowLog.md) | The Flow Log to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_flowlogs_put

> <FlowLog> datacenters_natgateways_flowlogs_put(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log, opts)

Modify NAT Gateway Flow Logs

Modify the specified NAT Gateway Flow Log.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
flow_log_id = 'flow_log_id_example' # String | The unique ID of the Flow Log.
nat_gateway_flow_log = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({action: 'ACCEPTED', bucket: 'bucketName/key', direction: 'INGRESS', name: 'My resource'})}) # FlowLogPut | The modified NAT Gateway Flow Log.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Modify NAT Gateway Flow Logs
  result = api_instance.datacenters_natgateways_flowlogs_put(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_put: #{e}"
end
```

#### Using the datacenters_natgateways_flowlogs_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlowLog>, Integer, Hash)> datacenters_natgateways_flowlogs_put_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log, opts)

```ruby
begin
  # Modify NAT Gateway Flow Logs
  data, status_code, headers = api_instance.datacenters_natgateways_flowlogs_put_with_http_info(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlowLog>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_flowlogs_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **flow_log_id** | **String** | The unique ID of the Flow Log. |  |
| **nat_gateway_flow_log** | [**FlowLogPut**](../models/FlowLogPut.md) | The modified NAT Gateway Flow Log. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](../models/FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_get

> <NatGateways> datacenters_natgateways_get(datacenter_id, opts)

List NAT Gateways

List all NAT Gateways within the data center.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List NAT Gateways
  result = api_instance.datacenters_natgateways_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_get: #{e}"
end
```

#### Using the datacenters_natgateways_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateways>, Integer, Hash)> datacenters_natgateways_get_with_http_info(datacenter_id, opts)

```ruby
begin
  # List NAT Gateways
  data, status_code, headers = api_instance.datacenters_natgateways_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateways>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGateways**](../models/NatGateways.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_patch

> <NatGateway> datacenters_natgateways_patch(datacenter_id, nat_gateway_id, nat_gateway_properties, opts)

Partially modify NAT Gateways

Update the properties of the specified NAT Gateway within the data center.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_properties = Ionoscloud::NatGatewayProperties.new({name: 'My NAT Gateway', public_ips: ['public_ips_example']}) # NatGatewayProperties | The properties of the NAT Gateway to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify NAT Gateways
  result = api_instance.datacenters_natgateways_patch(datacenter_id, nat_gateway_id, nat_gateway_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_patch: #{e}"
end
```

#### Using the datacenters_natgateways_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> datacenters_natgateways_patch_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_properties, opts)

```ruby
begin
  # Partially modify NAT Gateways
  data, status_code, headers = api_instance.datacenters_natgateways_patch_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_properties** | [**NatGatewayProperties**](../models/NatGatewayProperties.md) | The properties of the NAT Gateway to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGateway**](../models/NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_post

> <NatGateway> datacenters_natgateways_post(datacenter_id, nat_gateway, opts)

Create a NAT Gateway

Creates a NAT Gateway within the data center.  This operation is restricted to contract owner, admin, and users with 'createInternetAccess' privileges.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway = Ionoscloud::NatGateway.new({properties: Ionoscloud::NatGatewayProperties.new({name: 'My NAT Gateway', public_ips: ['public_ips_example']})}) # NatGateway | The NAT Gateway to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a NAT Gateway
  result = api_instance.datacenters_natgateways_post(datacenter_id, nat_gateway, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_post: #{e}"
end
```

#### Using the datacenters_natgateways_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> datacenters_natgateways_post_with_http_info(datacenter_id, nat_gateway, opts)

```ruby
begin
  # Create a NAT Gateway
  data, status_code, headers = api_instance.datacenters_natgateways_post_with_http_info(datacenter_id, nat_gateway, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway** | [**NatGateway**](../models/NatGateway.md) | The NAT Gateway to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGateway**](../models/NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_put

> <NatGateway> datacenters_natgateways_put(datacenter_id, nat_gateway_id, nat_gateway, opts)

Modify NAT Gateways

Modify the properties of the specified NAT Gateway within the data center.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway = Ionoscloud::NatGatewayPut.new({properties: Ionoscloud::NatGatewayProperties.new({name: 'My NAT Gateway', public_ips: ['public_ips_example']})}) # NatGatewayPut | The modified NAT Gateway.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify NAT Gateways
  result = api_instance.datacenters_natgateways_put(datacenter_id, nat_gateway_id, nat_gateway, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_put: #{e}"
end
```

#### Using the datacenters_natgateways_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGateway>, Integer, Hash)> datacenters_natgateways_put_with_http_info(datacenter_id, nat_gateway_id, nat_gateway, opts)

```ruby
begin
  # Modify NAT Gateways
  data, status_code, headers = api_instance.datacenters_natgateways_put_with_http_info(datacenter_id, nat_gateway_id, nat_gateway, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGateway>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway** | [**NatGatewayPut**](../models/NatGatewayPut.md) | The modified NAT Gateway. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGateway**](../models/NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_rules_delete

> datacenters_natgateways_rules_delete(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)

Delete NAT Gateway rules

Delete the specified NAT Gateway rule.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT Gateway rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete NAT Gateway rules
  api_instance.datacenters_natgateways_rules_delete(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_delete: #{e}"
end
```

#### Using the datacenters_natgateways_rules_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> datacenters_natgateways_rules_delete_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)

```ruby
begin
  # Delete NAT Gateway rules
  data, status_code, headers = api_instance.datacenters_natgateways_rules_delete_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT Gateway rule. |  |
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


## datacenters_natgateways_rules_find_by_nat_gateway_rule_id

> <NatGatewayRule> datacenters_natgateways_rules_find_by_nat_gateway_rule_id(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)

Retrieve NAT Gateway rules

Retrieve the properties of the specified NAT Gateway rule.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT Gateway rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve NAT Gateway rules
  result = api_instance.datacenters_natgateways_rules_find_by_nat_gateway_rule_id(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_find_by_nat_gateway_rule_id: #{e}"
end
```

#### Using the datacenters_natgateways_rules_find_by_nat_gateway_rule_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayRule>, Integer, Hash)> datacenters_natgateways_rules_find_by_nat_gateway_rule_id_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)

```ruby
begin
  # Retrieve NAT Gateway rules
  data, status_code, headers = api_instance.datacenters_natgateways_rules_find_by_nat_gateway_rule_id_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_find_by_nat_gateway_rule_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT Gateway rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGatewayRule**](../models/NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_rules_get

> <NatGatewayRules> datacenters_natgateways_rules_get(datacenter_id, nat_gateway_id, opts)

List NAT Gateway rules

List all rules for the specified NAT Gateway.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List NAT Gateway rules
  result = api_instance.datacenters_natgateways_rules_get(datacenter_id, nat_gateway_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_get: #{e}"
end
```

#### Using the datacenters_natgateways_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayRules>, Integer, Hash)> datacenters_natgateways_rules_get_with_http_info(datacenter_id, nat_gateway_id, opts)

```ruby
begin
  # List NAT Gateway rules
  data, status_code, headers = api_instance.datacenters_natgateways_rules_get_with_http_info(datacenter_id, nat_gateway_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayRules>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGatewayRules**](../models/NatGatewayRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_rules_patch

> <NatGatewayRule> datacenters_natgateways_rules_patch(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule_properties, opts)

Partially Modify a NAT Gateway Rule by ID

Updates the properties of the specified NAT Gateway rule.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT Gateway rule.
nat_gateway_rule_properties = Ionoscloud::NatGatewayRuleProperties.new({name: 'My NAT Gateway rule', public_ip: '192.18.7.17', source_subnet: '10.0.1.0/24'}) # NatGatewayRuleProperties | The properties of the NAT Gateway rule to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially Modify a NAT Gateway Rule by ID
  result = api_instance.datacenters_natgateways_rules_patch(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_patch: #{e}"
end
```

#### Using the datacenters_natgateways_rules_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayRule>, Integer, Hash)> datacenters_natgateways_rules_patch_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule_properties, opts)

```ruby
begin
  # Partially Modify a NAT Gateway Rule by ID
  data, status_code, headers = api_instance.datacenters_natgateways_rules_patch_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT Gateway rule. |  |
| **nat_gateway_rule_properties** | [**NatGatewayRuleProperties**](../models/NatGatewayRuleProperties.md) | The properties of the NAT Gateway rule to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGatewayRule**](../models/NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_rules_post

> <NatGatewayRule> datacenters_natgateways_rules_post(datacenter_id, nat_gateway_id, nat_gateway_rule, opts)

Create a NAT Gateway Rule

Creates a rule for the specified NAT Gateway.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_rule = Ionoscloud::NatGatewayRule.new({properties: Ionoscloud::NatGatewayRuleProperties.new({name: 'My NAT Gateway rule', public_ip: '192.18.7.17', source_subnet: '10.0.1.0/24'})}) # NatGatewayRule | The NAT Gateway rule to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create a NAT Gateway Rule
  result = api_instance.datacenters_natgateways_rules_post(datacenter_id, nat_gateway_id, nat_gateway_rule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_post: #{e}"
end
```

#### Using the datacenters_natgateways_rules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayRule>, Integer, Hash)> datacenters_natgateways_rules_post_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule, opts)

```ruby
begin
  # Create a NAT Gateway Rule
  data, status_code, headers = api_instance.datacenters_natgateways_rules_post_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_rule** | [**NatGatewayRule**](../models/NatGatewayRule.md) | The NAT Gateway rule to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGatewayRule**](../models/NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_rules_put

> <NatGatewayRule> datacenters_natgateways_rules_put(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule, opts)

Modify a NAT Gateway Rule by ID

Modify the specified NAT Gateway rule.

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

api_instance = Ionoscloud::NATGatewaysApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the data center.
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT Gateway.
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT Gateway rule.
nat_gateway_rule = Ionoscloud::NatGatewayRulePut.new({properties: Ionoscloud::NatGatewayRuleProperties.new({name: 'My NAT Gateway rule', public_ip: '192.18.7.17', source_subnet: '10.0.1.0/24'})}) # NatGatewayRulePut | The modified NAT Gateway rule.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify a NAT Gateway Rule by ID
  result = api_instance.datacenters_natgateways_rules_put(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_put: #{e}"
end
```

#### Using the datacenters_natgateways_rules_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NatGatewayRule>, Integer, Hash)> datacenters_natgateways_rules_put_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule, opts)

```ruby
begin
  # Modify a NAT Gateway Rule by ID
  data, status_code, headers = api_instance.datacenters_natgateways_rules_put_with_http_info(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NatGatewayRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NATGatewaysApi->datacenters_natgateways_rules_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The unique ID of the data center. |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT Gateway. |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT Gateway rule. |  |
| **nat_gateway_rule** | [**NatGatewayRulePut**](../models/NatGatewayRulePut.md) | The modified NAT Gateway rule. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**NatGatewayRule**](../models/NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

