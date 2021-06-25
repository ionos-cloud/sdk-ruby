# PrivateCrossConnectApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**pccs\_delete**](privatecrossconnectapi.md#pccs_delete) | **DELETE** /pccs/{pccId} | Delete a Private Cross-Connect |
| [**pccs\_find\_by\_id**](privatecrossconnectapi.md#pccs_find_by_id) | **GET** /pccs/{pccId} | Retrieve a Private Cross-Connect |
| [**pccs\_get**](privatecrossconnectapi.md#pccs_get) | **GET** /pccs | List Private Cross-Connects |
| [**pccs\_patch**](privatecrossconnectapi.md#pccs_patch) | **PATCH** /pccs/{pccId} | Partially modify a private cross-connect |
| [**pccs\_post**](privatecrossconnectapi.md#pccs_post) | **POST** /pccs | Create a Private Cross-Connect |

## pccs\_delete

> Object pccs\_delete\(pcc\_id, opts\)

Delete a Private Cross-Connect

Delete a private cross-connect if no datacenters are joined to the given PCC

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

api_instance = Ionoscloud::PrivateCrossConnectApi.new
pcc_id = 'pcc_id_example' # String | The unique ID of the private cross-connect
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Private Cross-Connect
  result = api_instance.pccs_delete(pcc_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_delete: #{e}"
end
```

#### Using the pccs\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> pccs\_delete\_with\_http\_info\(pcc\_id, opts\)

```ruby
begin
  # Delete a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_delete_with_http_info(pcc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pcc\_id** | **String** | The unique ID of the private cross-connect |  |
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

## pccs\_find\_by\_id

> pccs\_find\_by\_id\(pcc\_id, opts\)

Retrieve a Private Cross-Connect

You can retrieve a private cross-connect by using the resource's ID. This value can be found in the response body when a private cross-connect is created or when you GET a list of private cross-connects.

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

api_instance = Ionoscloud::PrivateCrossConnectApi.new
pcc_id = 'pcc_id_example' # String | The unique ID of the private cross-connect
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Private Cross-Connect
  result = api_instance.pccs_find_by_id(pcc_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_find_by_id: #{e}"
end
```

#### Using the pccs\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; pccs\_find\_by\_id\_with\_http\_info\(pcc\_id, opts\)

```ruby
begin
  # Retrieve a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_find_by_id_with_http_info(pcc_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnect>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pcc\_id** | **String** | The unique ID of the private cross-connect |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**PrivateCrossConnect**](../models/privatecrossconnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## pccs\_get

> pccs\_get\(opts\)

List Private Cross-Connects

You can retrieve a complete list of private cross-connects provisioned under your account

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

api_instance = Ionoscloud::PrivateCrossConnectApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Private Cross-Connects 
  result = api_instance.pccs_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_get: #{e}"
end
```

#### Using the pccs\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; pccs\_get\_with\_http\_info\(opts\)

```ruby
begin
  # List Private Cross-Connects 
  data, status_code, headers = api_instance.pccs_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnects>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**PrivateCrossConnects**](../models/privatecrossconnects.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## pccs\_patch

> pccs\_patch\(pcc\_id, pcc, opts\)

Partially modify a private cross-connect

You can use update private cross-connect to re-name or update its description

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

api_instance = Ionoscloud::PrivateCrossConnectApi.new
pcc_id = 'pcc_id_example' # String | The unique ID of the private cross-connect
pcc = Ionoscloud::PrivateCrossConnectProperties.new # PrivateCrossConnectProperties | Modified properties of private cross-connect
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a private cross-connect
  result = api_instance.pccs_patch(pcc_id, pcc, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_patch: #{e}"
end
```

#### Using the pccs\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; pccs\_patch\_with\_http\_info\(pcc\_id, pcc, opts\)

```ruby
begin
  # Partially modify a private cross-connect
  data, status_code, headers = api_instance.pccs_patch_with_http_info(pcc_id, pcc, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnect>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pcc\_id** | **String** | The unique ID of the private cross-connect |  |
| **pcc** | [**PrivateCrossConnectProperties**](../models/privatecrossconnectproperties.md) | Modified properties of private cross-connect |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**PrivateCrossConnect**](../models/privatecrossconnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## pccs\_post

> pccs\_post\(pcc, opts\)

Create a Private Cross-Connect

You can use this POST method to create a private cross-connect

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

api_instance = Ionoscloud::PrivateCrossConnectApi.new
pcc = Ionoscloud::PrivateCrossConnect.new({properties: Ionoscloud::PrivateCrossConnectProperties.new}) # PrivateCrossConnect | Private Cross-Connect to be created
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Private Cross-Connect
  result = api_instance.pccs_post(pcc, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_post: #{e}"
end
```

#### Using the pccs\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; pccs\_post\_with\_http\_info\(pcc, opts\)

```ruby
begin
  # Create a Private Cross-Connect
  data, status_code, headers = api_instance.pccs_post_with_http_info(pcc, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateCrossConnect>
rescue Ionoscloud::ApiError => e
  puts "Error when calling PrivateCrossConnectApi->pccs_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pcc** | [**PrivateCrossConnect**](../models/privatecrossconnect.md) | Private Cross-Connect to be created |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**PrivateCrossConnect**](../models/privatecrossconnect.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

