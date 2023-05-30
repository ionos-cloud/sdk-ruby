# LocationsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**locations_find_by_region_id**](LocationsApi.md#locations_find_by_region_id) | **GET** /locations/{regionId} | Get Locations within a Region |
| [**locations_find_by_region_id_and_id**](LocationsApi.md#locations_find_by_region_id_and_id) | **GET** /locations/{regionId}/{locationId} | Get Location by ID |
| [**locations_get**](LocationsApi.md#locations_get) | **GET** /locations | Get Locations |


## locations_find_by_region_id

> <Locations> locations_find_by_region_id(region_id, opts)

Get Locations within a Region

Retrieves the available locations in a region specified by its ID. The 'regionId' consists of the two character identifier of the region (country), e.g., 'de'.

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

api_instance = Ionoscloud::LocationsApi.new
region_id = 'region_id_example' # String | The unique ID of the region.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Locations within a Region
  result = api_instance.locations_find_by_region_id(region_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationsApi->locations_find_by_region_id: #{e}"
end
```

#### Using the locations_find_by_region_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Locations>, Integer, Hash)> locations_find_by_region_id_with_http_info(region_id, opts)

```ruby
begin
  # Get Locations within a Region
  data, status_code, headers = api_instance.locations_find_by_region_id_with_http_info(region_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Locations>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationsApi->locations_find_by_region_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **String** | The unique ID of the region. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Locations**](../models/Locations.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locations_find_by_region_id_and_id

> <Location> locations_find_by_region_id_and_id(region_id, location_id, opts)

Get Location by ID

Retrieves the information about the location specified by its ID. The 'locationId' consists of the three-digit identifier of the city according to the IATA code.

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

api_instance = Ionoscloud::LocationsApi.new
region_id = 'region_id_example' # String | The unique ID of the region.
location_id = 'location_id_example' # String | The unique ID of the location.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Location by ID
  result = api_instance.locations_find_by_region_id_and_id(region_id, location_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationsApi->locations_find_by_region_id_and_id: #{e}"
end
```

#### Using the locations_find_by_region_id_and_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Location>, Integer, Hash)> locations_find_by_region_id_and_id_with_http_info(region_id, location_id, opts)

```ruby
begin
  # Get Location by ID
  data, status_code, headers = api_instance.locations_find_by_region_id_and_id_with_http_info(region_id, location_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Location>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationsApi->locations_find_by_region_id_and_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region_id** | **String** | The unique ID of the region. |  |
| **location_id** | **String** | The unique ID of the location. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Location**](../models/Location.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locations_get

> <Locations> locations_get(opts)

Get Locations

Retrieves the available physical locations where you can deploy cloud resources in a VDC.    A location is identified by a combination of the following characters:    * a two-character **regionId**, which represents a country (example: 'de')    * a three-character **locationId**, which represents a city. The 'locationId' is typically based on the IATA code of the city's airport (example: 'txl').    >Note that 'locations' are read-only and cannot be changed.

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

api_instance = Ionoscloud::LocationsApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get Locations
  result = api_instance.locations_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationsApi->locations_get: #{e}"
end
```

#### Using the locations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Locations>, Integer, Hash)> locations_get_with_http_info(opts)

```ruby
begin
  # Get Locations
  data, status_code, headers = api_instance.locations_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Locations>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LocationsApi->locations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Locations**](../models/Locations.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

