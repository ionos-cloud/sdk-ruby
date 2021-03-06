# NicApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**datacenters\_servers\_nics\_delete**](nicapi.md#datacenters_servers_nics_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Delete a Nic |
| [**datacenters\_servers\_nics\_find\_by\_id**](nicapi.md#datacenters_servers_nics_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Retrieve a Nic |
| [**datacenters\_servers\_nics\_firewallrules\_delete**](nicapi.md#datacenters_servers_nics_firewallrules_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Delete a Firewall Rule |
| [**datacenters\_servers\_nics\_firewallrules\_find\_by\_id**](nicapi.md#datacenters_servers_nics_firewallrules_find_by_id) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Retrieve a Firewall Rule |
| [**datacenters\_servers\_nics\_firewallrules\_get**](nicapi.md#datacenters_servers_nics_firewallrules_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules | List Firewall Rules |
| [**datacenters\_servers\_nics\_firewallrules\_patch**](nicapi.md#datacenters_servers_nics_firewallrules_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Partially modify a Firewall Rule |
| [**datacenters\_servers\_nics\_firewallrules\_post**](nicapi.md#datacenters_servers_nics_firewallrules_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules | Create a Firewall Rule |
| [**datacenters\_servers\_nics\_firewallrules\_put**](nicapi.md#datacenters_servers_nics_firewallrules_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId}/firewallrules/{firewallruleId} | Modify a Firewall Rule |
| [**datacenters\_servers\_nics\_get**](nicapi.md#datacenters_servers_nics_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/nics | List Nics |
| [**datacenters\_servers\_nics\_patch**](nicapi.md#datacenters_servers_nics_patch) | **PATCH** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Partially modify a Nic |
| [**datacenters\_servers\_nics\_post**](nicapi.md#datacenters_servers_nics_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/nics | Create a Nic |
| [**datacenters\_servers\_nics\_put**](nicapi.md#datacenters_servers_nics_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/nics/{nicId} | Modify a Nic |

## datacenters\_servers\_nics\_delete

> Object datacenters\_servers\_nics\_delete\(datacenter\_id, server\_id, nic\_id, opts\)

Delete a Nic

Deletes the specified NIC.

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Nic
  result = api_instance.datacenters_servers_nics_delete(datacenter_id, server_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_delete: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_servers\_nics\_delete\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, opts\)

```ruby
begin
  # Delete a Nic
  data, status_code, headers = api_instance.datacenters_servers_nics_delete_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_nics\_find\_by\_id

> datacenters\_servers\_nics\_find\_by\_id\(datacenter\_id, server\_id, nic\_id, opts\)

Retrieve a Nic

Retrieves the attributes of a given NIC

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Nic
  result = api_instance.datacenters_servers_nics_find_by_id(datacenter_id, server_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_find_by_id: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_find\_by\_id\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, opts\)

```ruby
begin
  # Retrieve a Nic
  data, status_code, headers = api_instance.datacenters_servers_nics_find_by_id_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Nic**](../models/nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_nics\_firewallrules\_delete

> Object datacenters\_servers\_nics\_firewallrules\_delete\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, opts\)

Delete a Firewall Rule

Removes the specific Firewall Rule

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

api_instance = Ionoscloud::NicApi.new
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
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_delete: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_firewallrules\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_servers\_nics\_firewallrules\_delete\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, opts\)

```ruby
begin
  # Delete a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_delete_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **firewallrule\_id** | **String** | The unique ID of the Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_nics\_firewallrules\_find\_by\_id

> datacenters\_servers\_nics\_firewallrules\_find\_by\_id\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, opts\)

Retrieve a Firewall Rule

Retrieves the attributes of a given Firewall Rule.

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

api_instance = Ionoscloud::NicApi.new
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
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_find_by_id: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_firewallrules\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_firewallrules\_find\_by\_id\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, opts\)

```ruby
begin
  # Retrieve a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_find_by_id_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **firewallrule\_id** | **String** | The unique ID of the Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**FirewallRule**](../models/firewallrule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_nics\_firewallrules\_get

> datacenters\_servers\_nics\_firewallrules\_get\(datacenter\_id, server\_id, nic\_id, opts\)

List Firewall Rules

Retrieves a list of firewall rules associated with a particular NIC

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Firewall Rules 
  result = api_instance.datacenters_servers_nics_firewallrules_get(datacenter_id, server_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_get: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_firewallrules\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_firewallrules\_get\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, opts\)

```ruby
begin
  # List Firewall Rules 
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_get_with_http_info(datacenter_id, server_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRules>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**FirewallRules**](../models/firewallrules.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_nics\_firewallrules\_patch

> datacenters\_servers\_nics\_firewallrules\_patch\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, firewallrule, opts\)

Partially modify a Firewall Rule

You can use update attributes of a resource

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

api_instance = Ionoscloud::NicApi.new
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
  # Partially modify a Firewall Rule
  result = api_instance.datacenters_servers_nics_firewallrules_patch(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_patch: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_firewallrules\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_firewallrules\_patch\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, firewallrule, opts\)

```ruby
begin
  # Partially modify a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_patch_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **firewallrule\_id** | **String** | The unique ID of the Firewall Rule |  |
| **firewallrule** | [**FirewallruleProperties**](../models/firewallruleproperties.md) | Modified Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**FirewallRule**](../models/firewallrule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_nics\_firewallrules\_post

> datacenters\_servers\_nics\_firewallrules\_post\(datacenter\_id, server\_id, nic\_id, firewallrule, opts\)

Create a Firewall Rule

This will add a Firewall Rule to the NIC

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

api_instance = Ionoscloud::NicApi.new
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
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_post: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_firewallrules\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_firewallrules\_post\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, firewallrule, opts\)

```ruby
begin
  # Create a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_post_with_http_info(datacenter_id, server_id, nic_id, firewallrule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **firewallrule** | [**FirewallRule**](../models/firewallrule.md) | Firewall Rule to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**FirewallRule**](../models/firewallrule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_nics\_firewallrules\_put

> datacenters\_servers\_nics\_firewallrules\_put\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, firewallrule, opts\)

Modify a Firewall Rule

You can use update attributes of a resource

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

api_instance = Ionoscloud::NicApi.new
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
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_put: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_firewallrules\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_firewallrules\_put\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, firewallrule\_id, firewallrule, opts\)

```ruby
begin
  # Modify a Firewall Rule
  data, status_code, headers = api_instance.datacenters_servers_nics_firewallrules_put_with_http_info(datacenter_id, server_id, nic_id, firewallrule_id, firewallrule, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FirewallRule>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_firewallrules_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **firewallrule\_id** | **String** | The unique ID of the Firewall Rule |  |
| **firewallrule** | [**FirewallRule**](../models/firewallrule.md) | Modified Firewall Rule |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**FirewallRule**](../models/firewallrule.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_nics\_get

> datacenters\_servers\_nics\_get\(datacenter\_id, server\_id, opts\)

List Nics

Retrieves a list of NICs.

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Nics 
  result = api_instance.datacenters_servers_nics_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_get: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_get\_with\_http\_info\(datacenter\_id, server\_id, opts\)

```ruby
begin
  # List Nics 
  data, status_code, headers = api_instance.datacenters_servers_nics_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**Nics**](../models/nics.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_nics\_patch

> datacenters\_servers\_nics\_patch\(datacenter\_id, server\_id, nic\_id, nic, opts\)

Partially modify a Nic

You can use update attributes of a Nic

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
nic = Ionoscloud::NicProperties.new({lan: 2}) # NicProperties | Modified properties of Nic
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Nic
  result = api_instance.datacenters_servers_nics_patch(datacenter_id, server_id, nic_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_patch: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_patch\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, nic, opts\)

```ruby
begin
  # Partially modify a Nic
  data, status_code, headers = api_instance.datacenters_servers_nics_patch_with_http_info(datacenter_id, server_id, nic_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **nic** | [**NicProperties**](../models/nicproperties.md) | Modified properties of Nic |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Nic**](../models/nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_nics\_post

> datacenters\_servers\_nics\_post\(datacenter\_id, server\_id, nic, opts\)

Create a Nic

Adds a NIC to the target server. Combine count of Nics and volumes attached to the server should not exceed size 24.

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Nic to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Nic
  result = api_instance.datacenters_servers_nics_post(datacenter_id, server_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_post: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_post\_with\_http\_info\(datacenter\_id, server\_id, nic, opts\)

```ruby
begin
  # Create a Nic
  data, status_code, headers = api_instance.datacenters_servers_nics_post_with_http_info(datacenter_id, server_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic** | [**Nic**](../models/nic.md) | Nic to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Nic**](../models/nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_nics\_put

> datacenters\_servers\_nics\_put\(datacenter\_id, server\_id, nic\_id, nic, opts\)

Modify a Nic

You can use update attributes of a Nic

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

api_instance = Ionoscloud::NicApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
nic_id = 'nic_id_example' # String | The unique ID of the NIC
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Modified Nic
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Nic
  result = api_instance.datacenters_servers_nics_put(datacenter_id, server_id, nic_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_put: #{e}"
end
```

#### Using the datacenters\_servers\_nics\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_nics\_put\_with\_http\_info\(datacenter\_id, server\_id, nic\_id, nic, opts\)

```ruby
begin
  # Modify a Nic
  data, status_code, headers = api_instance.datacenters_servers_nics_put_with_http_info(datacenter_id, server_id, nic_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling NicApi->datacenters_servers_nics_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **nic** | [**Nic**](../models/nic.md) | Modified Nic |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Nic**](../models/nic.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

