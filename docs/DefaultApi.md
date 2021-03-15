# DefaultApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_info_get**](DefaultApi.md#api_info_get) | **GET** / | Display API information |


## api_info_get

> <Info> api_info_get(opts)

Display API information

Display API information

### Examples

```ruby
require 'time'
require 'ionoscloud'

api_instance = Ionoscloud::DefaultApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Display API information
  result = api_instance.api_info_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling DefaultApi->api_info_get: #{e}"
end
```

#### Using the api_info_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Info>, Integer, Hash)> api_info_get_with_http_info(opts)

```ruby
begin
  # Display API information
  data, status_code, headers = api_instance.api_info_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Info>
rescue Ionoscloud::ApiError => e
  puts "Error when calling DefaultApi->api_info_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed (with indentation and new lines) | [optional][default to true] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | [optional] |

### Return type

[**Info**](Info.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

