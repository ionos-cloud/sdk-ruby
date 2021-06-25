# RequestApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**requests\_find\_by\_id**](requestapi.md#requests_find_by_id) | **GET** /requests/{requestId} | Retrieve a Request |
| [**requests\_get**](requestapi.md#requests_get) | **GET** /requests | List Requests |
| [**requests\_status\_get**](requestapi.md#requests_status_get) | **GET** /requests/{requestId}/status | Retrieve Request Status |

## requests\_find\_by\_id

> requests\_find\_by\_id\(request\_id, opts\)

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

#### Using the requests\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; requests\_find\_by\_id\_with\_http\_info\(request\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **request\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Request**](../models/request.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## requests\_get

> requests\_get\(opts\)

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
  filter_status: 'filter_status_example', # String | Request filter to fetch all requests based on a particular status [QUEUED, RUNNING, DONE, FAILED]. It doesn't depend on depth query parameter
  filter_created_after: 'filter_created_after_example', # String | Request filter to fetch all requests created after the specified date. It doesn't depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00
  filter_created_before: 'filter_created_before_example', # String | Request filter to fetch all requests created before the specified date. It doesn't depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00
  filter_created_date: 'filter_created_date_example', # String | Response filter to select and display only the requests that contains the specified createdDate. The value is case insensitive and it  depends on depth query parameter that should have a value greater than 0. Date format e.g. 2020-11-16T17:42:59Z
  filter_created_by: 'filter_created_by_example', # String | Response filter to select and display only the requests that contains the specified createdBy. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
  filter_etag: 'filter_etag_example', # String | Response filter to select and display only the requests that contains the specified etag. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
  filter_request_status: 'filter_request_status_example', # String | Response filter to select and display only the requests that contains the specified requestStatus. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
  filter_method: 'filter_method_example', # String | Response filter to select and display only the requests that contains the specified method. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
  filter_headers: 'filter_headers_example', # String | Response filter to select and display only the requests that contains the specified headers. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
  filter_body: 'filter_body_example', # String | Response filter to select and display only the requests that contains the specified body. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
  filter_url: 'filter_url_example', # String | Response filter to select and display only the requests that contains the specified url. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
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

#### Using the requests\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; requests\_get\_with\_http\_info\(opts\)

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
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **filter\_status** | **String** | Request filter to fetch all requests based on a particular status \[QUEUED, RUNNING, DONE, FAILED\]. It doesn't depend on depth query parameter | \[optional\] |
| **filter\_created\_after** | **String** | Request filter to fetch all requests created after the specified date. It doesn't depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00 | \[optional\] |
| **filter\_created\_before** | **String** | Request filter to fetch all requests created before the specified date. It doesn't depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00 | \[optional\] |
| **filter\_created\_date** | **String** | Response filter to select and display only the requests that contains the specified createdDate. The value is case insensitive and it  depends on depth query parameter that should have a value greater than 0. Date format e.g. 2020-11-16T17:42:59Z | \[optional\] |
| **filter\_created\_by** | **String** | Response filter to select and display only the requests that contains the specified createdBy. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **filter\_etag** | **String** | Response filter to select and display only the requests that contains the specified etag. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **filter\_request\_status** | **String** | Response filter to select and display only the requests that contains the specified requestStatus. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **filter\_method** | **String** | Response filter to select and display only the requests that contains the specified method. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **filter\_headers** | **String** | Response filter to select and display only the requests that contains the specified headers. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **filter\_body** | **String** | Response filter to select and display only the requests that contains the specified body. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **filter\_url** | **String** | Response filter to select and display only the requests that contains the specified url. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**Requests**](../models/requests.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## requests\_status\_get

> requests\_status\_get\(request\_id, opts\)

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

#### Using the requests\_status\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; requests\_status\_get\_with\_http\_info\(request\_id, opts\)

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
| :--- | :--- | :--- | :--- |
| **request\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**RequestStatus**](../models/requeststatus.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

