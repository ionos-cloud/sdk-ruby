# LocationApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**locations\_find\_by\_region\_id**](locationapi.md#locations_find_by_region_id) | **GET** /locations/{regionId} | List Locations within a region |
| [**locations\_find\_by\_region\_id\_and\_id**](locationapi.md#locations_find_by_region_id_and_id) | **GET** /locations/{regionId}/{locationId} | Retrieve a Location |
| [**locations\_get**](locationapi.md#locations_get) | **GET** /locations | List Locations |

## locations\_find\_by\_region\_id

> locations\_find\_by\_region\_id\(region\_id, opts\)

List Locations within a region

Retrieve a list of Locations within a world's region

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

api_instance = Ionoscloud::LocationApi.new
region_id = 'region_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Locations within a region
  result = api_instance.locations_find_by_region_id(region_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationApi->locations_find_by_region_id: #{e}"
end
```

#### Using the locations\_find\_by\_region\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; locations\_find\_by\_region\_id\_with\_http\_info\(region\_id, opts\)

```ruby
begin
  # List Locations within a region
  data, status_code, headers = api_instance.locations_find_by_region_id_with_http_info(region_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Locations>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationApi->locations_find_by_region_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **region\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Locations**](../models/locations.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## locations\_find\_by\_region\_id\_and\_id

> locations\_find\_by\_region\_id\_and\_id\(region\_id, location\_id, opts\)

Retrieve a Location

Retrieves the attributes of a given location

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

api_instance = Ionoscloud::LocationApi.new
region_id = 'region_id_example' # String | 
location_id = 'location_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Location
  result = api_instance.locations_find_by_region_id_and_id(region_id, location_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationApi->locations_find_by_region_id_and_id: #{e}"
end
```

#### Using the locations\_find\_by\_region\_id\_and\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; locations\_find\_by\_region\_id\_and\_id\_with\_http\_info\(region\_id, location\_id, opts\)

```ruby
begin
  # Retrieve a Location
  data, status_code, headers = api_instance.locations_find_by_region_id_and_id_with_http_info(region_id, location_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Location>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationApi->locations_find_by_region_id_and_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **region\_id** | **String** |  |  |
| **location\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Location**](../models/location.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## locations\_get

> locations\_get\(opts\)

List Locations

Retrieve a list of Locations. This list represents where you can provision your virtual data centers

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

api_instance = Ionoscloud::LocationApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Locations
  result = api_instance.locations_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationApi->locations_get: #{e}"
end
```

#### Using the locations\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; locations\_get\_with\_http\_info\(opts\)

```ruby
begin
  # List Locations
  data, status_code, headers = api_instance.locations_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Locations>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationApi->locations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Locations**](../models/locations.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

