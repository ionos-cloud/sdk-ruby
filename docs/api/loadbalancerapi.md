# LoadBalancerApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**datacenters\_loadbalancers\_balancednics\_delete**](loadbalancerapi.md#datacenters_loadbalancers_balancednics_delete) | **DELETE** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics/{nicId} | Detach a nic from loadbalancer |
| [**datacenters\_loadbalancers\_balancednics\_find\_by\_nic\_id**](loadbalancerapi.md#datacenters_loadbalancers_balancednics_find_by_nic_id) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics/{nicId} | Retrieve a nic attached to Load Balancer |
| [**datacenters\_loadbalancers\_balancednics\_get**](loadbalancerapi.md#datacenters_loadbalancers_balancednics_get) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics | List Load Balancer Members |
| [**datacenters\_loadbalancers\_balancednics\_post**](loadbalancerapi.md#datacenters_loadbalancers_balancednics_post) | **POST** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId}/balancednics | Attach a nic to Load Balancer |
| [**datacenters\_loadbalancers\_delete**](loadbalancerapi.md#datacenters_loadbalancers_delete) | **DELETE** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Delete a Loadbalancer. |
| [**datacenters\_loadbalancers\_find\_by\_id**](loadbalancerapi.md#datacenters_loadbalancers_find_by_id) | **GET** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Retrieve a loadbalancer |
| [**datacenters\_loadbalancers\_get**](loadbalancerapi.md#datacenters_loadbalancers_get) | **GET** /datacenters/{datacenterId}/loadbalancers | List Load Balancers |
| [**datacenters\_loadbalancers\_patch**](loadbalancerapi.md#datacenters_loadbalancers_patch) | **PATCH** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Partially modify a Loadbalancer |
| [**datacenters\_loadbalancers\_post**](loadbalancerapi.md#datacenters_loadbalancers_post) | **POST** /datacenters/{datacenterId}/loadbalancers | Create a Load Balancer |
| [**datacenters\_loadbalancers\_put**](loadbalancerapi.md#datacenters_loadbalancers_put) | **PUT** /datacenters/{datacenterId}/loadbalancers/{loadbalancerId} | Modify a Load Balancer |

## datacenters\_loadbalancers\_balancednics\_delete

> Object datacenters\_loadbalancers\_balancednics\_delete\(datacenter\_id, loadbalancer\_id, nic\_id, opts\)

Detach a nic from loadbalancer

This will remove a nic from Load Balancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Detach a nic from loadbalancer
  result = api_instance.datacenters_loadbalancers_balancednics_delete(datacenter_id, loadbalancer_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_delete: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_balancednics\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_loadbalancers\_balancednics\_delete\_with\_http\_info\(datacenter\_id, loadbalancer\_id, nic\_id, opts\)

```ruby
begin
  # Detach a nic from loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_delete_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_loadbalancers\_balancednics\_find\_by\_nic\_id

> datacenters\_loadbalancers\_balancednics\_find\_by\_nic\_id\(datacenter\_id, loadbalancer\_id, nic\_id, opts\)

Retrieve a nic attached to Load Balancer

This will retrieve the properties of an attached nic.

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic_id = 'nic_id_example' # String | The unique ID of the NIC
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a nic attached to Load Balancer
  result = api_instance.datacenters_loadbalancers_balancednics_find_by_nic_id(datacenter_id, loadbalancer_id, nic_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_find_by_nic_id: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_balancednics\_find\_by\_nic\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_balancednics\_find\_by\_nic\_id\_with\_http\_info\(datacenter\_id, loadbalancer\_id, nic\_id, opts\)

```ruby
begin
  # Retrieve a nic attached to Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info(datacenter_id, loadbalancer_id, nic_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_find_by_nic_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **nic\_id** | **String** | The unique ID of the NIC |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Nic**](../models/nic.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_loadbalancers\_balancednics\_get

> datacenters\_loadbalancers\_balancednics\_get\(datacenter\_id, loadbalancer\_id, opts\)

List Load Balancer Members

You can retrieve a list of nics attached to a Load Balancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Load Balancer Members 
  result = api_instance.datacenters_loadbalancers_balancednics_get(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_get: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_balancednics\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_balancednics\_get\_with\_http\_info\(datacenter\_id, loadbalancer\_id, opts\)

```ruby
begin
  # List Load Balancer Members 
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_get_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalancedNics>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**BalancedNics**](../models/balancednics.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_loadbalancers\_balancednics\_post

> datacenters\_loadbalancers\_balancednics\_post\(datacenter\_id, loadbalancer\_id, nic, opts\)

Attach a nic to Load Balancer

This will attach a pre-existing nic to a Load Balancer.

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
nic = Ionoscloud::Nic.new({properties: Ionoscloud::NicProperties.new({lan: 2})}) # Nic | Nic id to be attached
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Attach a nic to Load Balancer
  result = api_instance.datacenters_loadbalancers_balancednics_post(datacenter_id, loadbalancer_id, nic, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_post: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_balancednics\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_balancednics\_post\_with\_http\_info\(datacenter\_id, loadbalancer\_id, nic, opts\)

```ruby
begin
  # Attach a nic to Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_balancednics_post_with_http_info(datacenter_id, loadbalancer_id, nic, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Nic>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_balancednics_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **nic** | [**Nic**](../models/nic.md) | Nic id to be attached |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Nic**](../models/nic.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_loadbalancers\_delete

> Object datacenters\_loadbalancers\_delete\(datacenter\_id, loadbalancer\_id, opts\)

Delete a Loadbalancer.

Removes the specific Loadbalancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Loadbalancer.
  result = api_instance.datacenters_loadbalancers_delete(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_delete: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_loadbalancers\_delete\_with\_http\_info\(datacenter\_id, loadbalancer\_id, opts\)

```ruby
begin
  # Delete a Loadbalancer.
  data, status_code, headers = api_instance.datacenters_loadbalancers_delete_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_loadbalancers\_find\_by\_id

> datacenters\_loadbalancers\_find\_by\_id\(datacenter\_id, loadbalancer\_id, opts\)

Retrieve a loadbalancer

Retrieves the attributes of a given Loadbalancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a loadbalancer
  result = api_instance.datacenters_loadbalancers_find_by_id(datacenter_id, loadbalancer_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_find_by_id: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_find\_by\_id\_with\_http\_info\(datacenter\_id, loadbalancer\_id, opts\)

```ruby
begin
  # Retrieve a loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_find_by_id_with_http_info(datacenter_id, loadbalancer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Loadbalancer**](../models/loadbalancer.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_loadbalancers\_get

> datacenters\_loadbalancers\_get\(datacenter\_id, opts\)

List Load Balancers

Retrieve a list of Load Balancers within the datacenter

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Load Balancers
  result = api_instance.datacenters_loadbalancers_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_get: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_get\_with\_http\_info\(datacenter\_id, opts\)

```ruby
begin
  # List Load Balancers
  data, status_code, headers = api_instance.datacenters_loadbalancers_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancers>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**Loadbalancers**](../models/loadbalancers.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_loadbalancers\_patch

> datacenters\_loadbalancers\_patch\(datacenter\_id, loadbalancer\_id, loadbalancer, opts\)

Partially modify a Loadbalancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
loadbalancer = Ionoscloud::LoadbalancerProperties.new # LoadbalancerProperties | Modified Loadbalancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Loadbalancer
  result = api_instance.datacenters_loadbalancers_patch(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_patch: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_patch\_with\_http\_info\(datacenter\_id, loadbalancer\_id, loadbalancer, opts\)

```ruby
begin
  # Partially modify a Loadbalancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_patch_with_http_info(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **loadbalancer** | [**LoadbalancerProperties**](../models/loadbalancerproperties.md) | Modified Loadbalancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Loadbalancer**](../models/loadbalancer.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_loadbalancers\_post

> datacenters\_loadbalancers\_post\(datacenter\_id, loadbalancer, opts\)

Create a Load Balancer

Creates a Loadbalancer within the datacenter

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer = Ionoscloud::Loadbalancer.new({properties: Ionoscloud::LoadbalancerProperties.new}) # Loadbalancer | Loadbalancer to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Load Balancer
  result = api_instance.datacenters_loadbalancers_post(datacenter_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_post: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_post\_with\_http\_info\(datacenter\_id, loadbalancer, opts\)

```ruby
begin
  # Create a Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_post_with_http_info(datacenter_id, loadbalancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer** | [**Loadbalancer**](../models/loadbalancer.md) | Loadbalancer to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Loadbalancer**](../models/loadbalancer.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_loadbalancers\_put

> datacenters\_loadbalancers\_put\(datacenter\_id, loadbalancer\_id, loadbalancer, opts\)

Modify a Load Balancer

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

api_instance = Ionoscloud::LoadBalancerApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the datacenter
loadbalancer_id = 'loadbalancer_id_example' # String | The unique ID of the Load Balancer
loadbalancer = Ionoscloud::Loadbalancer.new({properties: Ionoscloud::LoadbalancerProperties.new}) # Loadbalancer | Modified Loadbalancer
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Load Balancer
  result = api_instance.datacenters_loadbalancers_put(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_put: #{e}"
end
```

#### Using the datacenters\_loadbalancers\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_loadbalancers\_put\_with\_http\_info\(datacenter\_id, loadbalancer\_id, loadbalancer, opts\)

```ruby
begin
  # Modify a Load Balancer
  data, status_code, headers = api_instance.datacenters_loadbalancers_put_with_http_info(datacenter_id, loadbalancer_id, loadbalancer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Loadbalancer>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LoadBalancerApi->datacenters_loadbalancers_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the datacenter |  |
| **loadbalancer\_id** | **String** | The unique ID of the Load Balancer |  |
| **loadbalancer** | [**Loadbalancer**](../models/loadbalancer.md) | Modified Loadbalancer |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Loadbalancer**](../models/loadbalancer.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

