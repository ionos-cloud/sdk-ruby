# NATGatewaysApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**datacenters_natgateways_delete**](NATGatewaysApi.md#datacenters_natgateways_delete) | **DELETE** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Remove a NAT gateway |
| [**datacenters_natgateways_find_by_nat_gateway_id**](NATGatewaysApi.md#datacenters_natgateways_find_by_nat_gateway_id) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Retrieve a NAT gateway |
| [**datacenters_natgateways_flowlogs_delete**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_delete) | **DELETE** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Remove Flow Log from NAT Gateway |
| [**datacenters_natgateways_flowlogs_find_by_flow_log_id**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_find_by_flow_log_id) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Retrieve a Flow Log of the NAT Gateway |
| [**datacenters_natgateways_flowlogs_get**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_get) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs | List NAT Gateway Flow Logs |
| [**datacenters_natgateways_flowlogs_patch**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_patch) | **PATCH** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Partially modify a Flow Log of the NAT Gateway |
| [**datacenters_natgateways_flowlogs_post**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_post) | **POST** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs | Add a NAT Gateways Flow Log |
| [**datacenters_natgateways_flowlogs_put**](NATGatewaysApi.md#datacenters_natgateways_flowlogs_put) | **PUT** /datacenters/{datacenterId}/natgateways/{natGatewayId}/flowlogs/{flowLogId} | Modify a Flow Log of the NAT Gateway |
| [**datacenters_natgateways_get**](NATGatewaysApi.md#datacenters_natgateways_get) | **GET** /datacenters/{datacenterId}/natgateways | List NAT Gateways |
| [**datacenters_natgateways_patch**](NATGatewaysApi.md#datacenters_natgateways_patch) | **PATCH** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Partially update a NAT gateway |
| [**datacenters_natgateways_post**](NATGatewaysApi.md#datacenters_natgateways_post) | **POST** /datacenters/{datacenterId}/natgateways | Create a NAT Gateway |
| [**datacenters_natgateways_put**](NATGatewaysApi.md#datacenters_natgateways_put) | **PUT** /datacenters/{datacenterId}/natgateways/{natGatewayId} | Update a NAT gateway |
| [**datacenters_natgateways_rules_delete**](NATGatewaysApi.md#datacenters_natgateways_rules_delete) | **DELETE** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Remove rule from NAT Gateway |
| [**datacenters_natgateways_rules_find_by_nat_gateway_rule_id**](NATGatewaysApi.md#datacenters_natgateways_rules_find_by_nat_gateway_rule_id) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Retrieve a NAT Gateway Rule |
| [**datacenters_natgateways_rules_get**](NATGatewaysApi.md#datacenters_natgateways_rules_get) | **GET** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules | List NAT Gateways Rules |
| [**datacenters_natgateways_rules_patch**](NATGatewaysApi.md#datacenters_natgateways_rules_patch) | **PATCH** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Partially modify a rule of the NAT gateway |
| [**datacenters_natgateways_rules_post**](NATGatewaysApi.md#datacenters_natgateways_rules_post) | **POST** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules | Create a NAT Gateway Rule |
| [**datacenters_natgateways_rules_put**](NATGatewaysApi.md#datacenters_natgateways_rules_put) | **PUT** /datacenters/{datacenterId}/natgateways/{natGatewayId}/rules/{natGatewayRuleId} | Modify a rule of the NAT gateway |


## datacenters_natgateways_delete

> datacenters_natgateways_delete(datacenter_id, nat_gateway_id, opts)

Remove a NAT gateway

Removes the specified NAT gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove a NAT gateway
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
  # Remove a NAT gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
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


## datacenters_natgateways_find_by_nat_gateway_id

> <NatGateway> datacenters_natgateways_find_by_nat_gateway_id(datacenter_id, nat_gateway_id, opts)

Retrieve a NAT gateway

Retrieves the attributes of a given NAT gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a NAT gateway
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
  # Retrieve a NAT gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_delete

> datacenters_natgateways_flowlogs_delete(datacenter_id, nat_gateway_id, flow_log_id, opts)

Remove Flow Log from NAT Gateway

This will remove a flow log from the NAT gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
flow_log_id = 'flow_log_id_example' # String | The unique ID of the flow log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Remove Flow Log from NAT Gateway
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
  # Remove Flow Log from NAT Gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **flow_log_id** | **String** | The unique ID of the flow log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_find_by_flow_log_id

> <FlowLog> datacenters_natgateways_flowlogs_find_by_flow_log_id(datacenter_id, nat_gateway_id, flow_log_id, opts)

Retrieve a Flow Log of the NAT Gateway

This will return a Flow Log of the NAT Gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
flow_log_id = 'flow_log_id_example' # String | The unique ID of the flow log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Retrieve a Flow Log of the NAT Gateway
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
  # Retrieve a Flow Log of the NAT Gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **flow_log_id** | **String** | The unique ID of the flow log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_get

> <FlowLogs> datacenters_natgateways_flowlogs_get(datacenter_id, nat_gateway_id, opts)

List NAT Gateway Flow Logs

You can retrieve a list of Flow Logs of the NAT Gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**FlowLogs**](FlowLogs.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_patch

> <FlowLog> datacenters_natgateways_flowlogs_patch(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log_properties, opts)

Partially modify a Flow Log of the NAT Gateway

You can use to partially update a Flow Log of a NAT Gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
flow_log_id = 'flow_log_id_example' # String | The unique ID of the flow log
nat_gateway_flow_log_properties = Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'}) # FlowLogProperties | Properties of a Flow Log to be updated
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Partially modify a Flow Log of the NAT Gateway
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
  # Partially modify a Flow Log of the NAT Gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **flow_log_id** | **String** | The unique ID of the flow log |  |
| **nat_gateway_flow_log_properties** | [**FlowLogProperties**](FlowLogProperties.md) | Properties of a Flow Log to be updated |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_flowlogs_post

> <FlowLog> datacenters_natgateways_flowlogs_post(datacenter_id, nat_gateway_id, nat_gateway_flow_log, opts)

Add a NAT Gateways Flow Log

This will add a new Flow Log to the NAT Gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_flow_log = Ionoscloud::FlowLog.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLog | Flow Log to add on NAT Gateway
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Add a NAT Gateways Flow Log
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
  # Add a NAT Gateways Flow Log
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_flow_log** | [**FlowLog**](FlowLog.md) | Flow Log to add on NAT Gateway |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_flowlogs_put

> <FlowLog> datacenters_natgateways_flowlogs_put(datacenter_id, nat_gateway_id, flow_log_id, nat_gateway_flow_log, opts)

Modify a Flow Log of the NAT Gateway

You can use to update a Flow Log of the NAT Gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
flow_log_id = 'flow_log_id_example' # String | The unique ID of the flow log
nat_gateway_flow_log = Ionoscloud::FlowLogPut.new({properties: Ionoscloud::FlowLogProperties.new({name: 'My resource', action: 'ACCEPTED', direction: 'INGRESS', bucket: 'bucketName/key'})}) # FlowLogPut | Modified NAT Gateway Flow Log
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56 # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
}

begin
  # Modify a Flow Log of the NAT Gateway
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
  # Modify a Flow Log of the NAT Gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **flow_log_id** | **String** | The unique ID of the flow log |  |
| **nat_gateway_flow_log** | [**FlowLogPut**](FlowLogPut.md) | Modified NAT Gateway Flow Log |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**FlowLog**](FlowLog.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_get

> <NatGateways> datacenters_natgateways_get(datacenter_id, opts)

List NAT Gateways

Retrieve a list of NAT Gateways within the datacenter.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGateways**](NatGateways.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_patch

> <NatGateway> datacenters_natgateways_patch(datacenter_id, nat_gateway_id, nat_gateway_properties, opts)

Partially update a NAT gateway

Partially update the attributes of a given NAT gateway

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_properties = Ionoscloud::NatGatewayProperties.new({name: 'My NAT Gateway', public_ips: ['public_ips_example']}) # NatGatewayProperties | NAT gateway properties to be updated
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially update a NAT gateway
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
  # Partially update a NAT gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_properties** | [**NatGatewayProperties**](NatGatewayProperties.md) | NAT gateway properties to be updated |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_post

> <NatGateway> datacenters_natgateways_post(datacenter_id, nat_gateway, opts)

Create a NAT Gateway

Creates a NAT Gateway within the datacenter. User should be the contract owner or a admin or a user with createInternetAccess privilege

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway = Ionoscloud::NatGateway.new({properties: Ionoscloud::NatGatewayProperties.new({name: 'My NAT Gateway', public_ips: ['public_ips_example']})}) # NatGateway | NAT gateway to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway** | [**NatGateway**](NatGateway.md) | NAT gateway to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_put

> <NatGateway> datacenters_natgateways_put(datacenter_id, nat_gateway_id, nat_gateway, opts)

Update a NAT gateway

Update the attributes of a given NAT gateway

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway = Ionoscloud::NatGatewayPut.new({properties: Ionoscloud::NatGatewayProperties.new({name: 'My NAT Gateway', public_ips: ['public_ips_example']})}) # NatGatewayPut | Modified NAT Gateway
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with offset for pagination)
}

begin
  # Update a NAT gateway
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
  # Update a NAT gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway** | [**NatGatewayPut**](NatGatewayPut.md) | Modified NAT Gateway |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with limit for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with offset for pagination) | [optional][default to 1000] |

### Return type

[**NatGateway**](NatGateway.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_rules_delete

> datacenters_natgateways_rules_delete(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)

Remove rule from NAT Gateway

This will remove a rule from the NAT gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT gateway rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Remove rule from NAT Gateway
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
  # Remove rule from NAT Gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT gateway rule |  |
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


## datacenters_natgateways_rules_find_by_nat_gateway_rule_id

> <NatGatewayRule> datacenters_natgateways_rules_find_by_nat_gateway_rule_id(datacenter_id, nat_gateway_id, nat_gateway_rule_id, opts)

Retrieve a NAT Gateway Rule

Retrieves the attributes of a given NAT gateway rule.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT gateway rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a NAT Gateway Rule
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
  # Retrieve a NAT Gateway Rule
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT gateway rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGatewayRule**](NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_rules_get

> <NatGatewayRules> datacenters_natgateways_rules_get(datacenter_id, nat_gateway_id, opts)

List NAT Gateways Rules

Retrieve a list of rules of a NAT Gateway within the datacenter.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List NAT Gateways Rules
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
  # List NAT Gateways Rules
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGatewayRules**](NatGatewayRules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_rules_patch

> <NatGatewayRule> datacenters_natgateways_rules_patch(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule_properties, opts)

Partially modify a rule of the NAT gateway

You can use to partially update a rule of a NAT gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT gateway rule
nat_gateway_rule_properties = Ionoscloud::NatGatewayRuleProperties.new({name: 'My NAT Gateway Rule', source_subnet: '10.0.1.0/24', public_ip: '192.18.7.17'}) # NatGatewayRuleProperties | Properties of a NAT gateway rule to be updated
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a rule of the NAT gateway
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
  # Partially modify a rule of the NAT gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT gateway rule |  |
| **nat_gateway_rule_properties** | [**NatGatewayRuleProperties**](NatGatewayRuleProperties.md) | Properties of a NAT gateway rule to be updated |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGatewayRule**](NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## datacenters_natgateways_rules_post

> <NatGatewayRule> datacenters_natgateways_rules_post(datacenter_id, nat_gateway_id, nat_gateway_rule, opts)

Create a NAT Gateway Rule

Creates a rule within the NAT Gateway of a datacenter.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_rule = Ionoscloud::NatGatewayRule.new({properties: Ionoscloud::NatGatewayRuleProperties.new({name: 'My NAT Gateway Rule', source_subnet: '10.0.1.0/24', public_ip: '192.18.7.17'})}) # NatGatewayRule | NAT gateway rule to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_rule** | [**NatGatewayRule**](NatGatewayRule.md) | NAT gateway rule to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGatewayRule**](NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## datacenters_natgateways_rules_put

> <NatGatewayRule> datacenters_natgateways_rules_put(datacenter_id, nat_gateway_id, nat_gateway_rule_id, nat_gateway_rule, opts)

Modify a rule of the NAT gateway

You can use to update a rule of the NAT gateway.

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
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
nat_gateway_id = 'nat_gateway_id_example' # String | The unique ID of the NAT gateway
nat_gateway_rule_id = 'nat_gateway_rule_id_example' # String | The unique ID of the NAT gateway rule
nat_gateway_rule = Ionoscloud::NatGatewayRulePut.new({properties: Ionoscloud::NatGatewayRuleProperties.new({name: 'My NAT Gateway Rule', source_subnet: '10.0.1.0/24', public_ip: '192.18.7.17'})}) # NatGatewayRulePut | Modified NAT Gateway Rule
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a rule of the NAT gateway
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
  # Modify a rule of the NAT gateway
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
| **datacenter_id** | **String** | The unique ID of the datacenter |  |
| **nat_gateway_id** | **String** | The unique ID of the NAT gateway |  |
| **nat_gateway_rule_id** | **String** | The unique ID of the NAT gateway rule |  |
| **nat_gateway_rule** | [**NatGatewayRulePut**](NatGatewayRulePut.md) | Modified NAT Gateway Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**NatGatewayRule**](NatGatewayRule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

