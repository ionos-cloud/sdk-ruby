# DefaultApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_info_get**](DefaultApi.md#api_info_get) | **GET** / | Get API information |


## api_info_get

> <Info> api_info_get(opts)

Get API information

Retrieves the API information such as API version.

### Examples

```ruby
require 'time'
require 'ionoscloud'

api_instance = Ionoscloud::DefaultApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Get API information
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
  # Get API information
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
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**Info**](../models/Info.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

