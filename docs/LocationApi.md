# Ionoscloud::LocationApi

All URIs are relative to *https://api.ionos.com/cloudapi/v5*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**locations_find_by_region_id**](LocationApi.md#locations_find_by_region_id) | **GET** /locations/{regionId} | List Locations within a region |
| [**locations_find_by_region_id_and_id**](LocationApi.md#locations_find_by_region_id_and_id) | **GET** /locations/{regionId}/{locationId} | Retrieve a Location |
| [**locations_get**](LocationApi.md#locations_get) | **GET** /locations | List Locations |


## locations_find_by_region_id

> <Locations> locations_find_by_region_id(region_id, opts)

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

#### Using the locations_find_by_region_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Locations>, Integer, Hash)> locations_find_by_region_id_with_http_info(region_id, opts)

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
| ---- | ---- | ----------- | ----- |
| **region_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Locations**](Locations.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locations_find_by_region_id_and_id

> <Location> locations_find_by_region_id_and_id(region_id, location_id, opts)

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

#### Using the locations_find_by_region_id_and_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Location>, Integer, Hash)> locations_find_by_region_id_and_id_with_http_info(region_id, location_id, opts)

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
| ---- | ---- | ----------- | ----- |
| **region_id** | **String** |  |  |
| **location_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Location**](Location.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locations_get

> <Locations> locations_get(opts)

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

#### Using the locations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Locations>, Integer, Hash)> locations_get_with_http_info(opts)

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
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Locations**](Locations.md)

### Authorization

[Basic Authentication](../README.md#Basic Authentication), [Token Authentication](../README.md#Token Authentication)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

