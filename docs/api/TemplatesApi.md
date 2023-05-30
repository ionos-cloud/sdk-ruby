# TemplatesApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**templates_find_by_id**](TemplatesApi.md#templates_find_by_id) | **GET** /templates/{templateId} | Get Cubes Template by ID |
| [**templates_get**](TemplatesApi.md#templates_get) | **GET** /templates | Get Cubes Templates |


## templates_find_by_id

> <Template> templates_find_by_id(template_id, opts)

Get Cubes Template by ID

Retrieves the properties of the Cubes template specified by its ID.

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

api_instance = Ionoscloud::TemplatesApi.new
template_id = 'template_id_example' # String | The unique template ID.
opts = {
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Get Cubes Template by ID
  result = api_instance.templates_find_by_id(template_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TemplatesApi->templates_find_by_id: #{e}"
end
```

#### Using the templates_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> templates_find_by_id_with_http_info(template_id, opts)

```ruby
begin
  # Get Cubes Template by ID
  data, status_code, headers = api_instance.templates_find_by_id_with_http_info(template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TemplatesApi->templates_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The unique template ID. |  |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**Template**](../models/Template.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_get

> <Templates> templates_get(opts)

Get Cubes Templates

Retrieves all available templates.  Templates provide a pre-defined configuration for Cube servers.    >Templates are read-only and cannot be created, modified, or deleted by users.

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

api_instance = Ionoscloud::TemplatesApi.new
opts = {
  depth: 56 # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
}

begin
  # Get Cubes Templates
  result = api_instance.templates_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling TemplatesApi->templates_get: #{e}"
end
```

#### Using the templates_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Templates>, Integer, Hash)> templates_get_with_http_info(opts)

```ruby
begin
  # Get Cubes Templates
  data, status_code, headers = api_instance.templates_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Templates>
rescue Ionoscloud::ApiError => e
  puts "Error when calling TemplatesApi->templates_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |

### Return type

[**Templates**](../models/Templates.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

