# RequestApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**requests_find_by_id**](RequestApi.md#requests_find_by_id) | **GET** /requests/{requestId} | Retrieve a Request |
| [**requests_get**](RequestApi.md#requests_get) | **GET** /requests | List Requests |
| [**requests_status_get**](RequestApi.md#requests_status_get) | **GET** /requests/{requestId}/status | Retrieve Request Status |


## requests_find_by_id

> <Request> requests_find_by_id(request_id, opts)

Retrieve a Request

Retrieves the attributes of a given request.

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

api_instance = Ionoscloud::RequestApi.new
request_id = 'request_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Request
  result = api_instance.requests_find_by_id(request_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling RequestApi->requests_find_by_id: #{e}"
end
```

#### Using the requests_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Request>, Integer, Hash)> requests_find_by_id_with_http_info(request_id, opts)

```ruby
begin
  # Retrieve a Request
  data, status_code, headers = api_instance.requests_find_by_id_with_http_info(request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Request>
rescue Ionoscloud::ApiError => e
  puts "Error when calling RequestApi->requests_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Request**](Request.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## requests_get

> <Requests> requests_get(opts)

List Requests

Retrieve a list of API requests.

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

api_instance = Ionoscloud::RequestApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  filter_status: 'filter_status_example', # String | Request status filter to fetch all the request based on a particular status [QUEUED, RUNNING, DONE, FAILED]
  filter_created_after: 'filter_created_after_example', # String | Filter all the requests after the created date
  filter_created_before: 'filter_created_before_example', # String | Filter all the requests before the created date
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List Requests
  result = api_instance.requests_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling RequestApi->requests_get: #{e}"
end
```

#### Using the requests_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Requests>, Integer, Hash)> requests_get_with_http_info(opts)

```ruby
begin
  # List Requests
  data, status_code, headers = api_instance.requests_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Requests>
rescue Ionoscloud::ApiError => e
  puts "Error when calling RequestApi->requests_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |
| **filter_status** | **String** | Request status filter to fetch all the request based on a particular status [QUEUED, RUNNING, DONE, FAILED] | [optional] |
| **filter_created_after** | **String** | Filter all the requests after the created date | [optional] |
| **filter_created_before** | **String** | Filter all the requests before the created date | [optional] |
| **offset** | **Integer** | the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination) | [optional][default to 0] |
| **limit** | **Integer** | the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination) | [optional][default to 1000] |

### Return type

[**Requests**](Requests.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## requests_status_get

> <RequestStatus> requests_status_get(request_id, opts)

Retrieve Request Status

Retrieves the status of a given request.

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

api_instance = Ionoscloud::RequestApi.new
request_id = 'request_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve Request Status
  result = api_instance.requests_status_get(request_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling RequestApi->requests_status_get: #{e}"
end
```

#### Using the requests_status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RequestStatus>, Integer, Hash)> requests_status_get_with_http_info(request_id, opts)

```ruby
begin
  # Retrieve Request Status
  data, status_code, headers = api_instance.requests_status_get_with_http_info(request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RequestStatus>
rescue Ionoscloud::ApiError => e
  puts "Error when calling RequestApi->requests_status_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**RequestStatus**](RequestStatus.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

