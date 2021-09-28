# BackupUnitsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backupunits_delete**](BackupUnitsApi.md#backupunits_delete) | **DELETE** /backupunits/{backupunitId} | Delete a Backup Unit |
| [**backupunits_find_by_id**](BackupUnitsApi.md#backupunits_find_by_id) | **GET** /backupunits/{backupunitId} | Returns the specified Backup Unit |
| [**backupunits_get**](BackupUnitsApi.md#backupunits_get) | **GET** /backupunits | List Backup Units |
| [**backupunits_patch**](BackupUnitsApi.md#backupunits_patch) | **PATCH** /backupunits/{backupunitId} | Partially modify a Backup Unit |
| [**backupunits_post**](BackupUnitsApi.md#backupunits_post) | **POST** /backupunits | Create a Backup Unit |
| [**backupunits_put**](BackupUnitsApi.md#backupunits_put) | **PUT** /backupunits/{backupunitId} | Modify a Backup Unit |
| [**backupunits_ssourl_get**](BackupUnitsApi.md#backupunits_ssourl_get) | **GET** /backupunits/{backupunitId}/ssourl | Returns a single signon URL for the specified Backup Unit |


## backupunits_delete

> backupunits_delete(backupunit_id, opts)

Delete a Backup Unit

NOTE: Running through the deletion process will delete: - the backup plans inside the Backup Unit. - all backups associated with the Backup Unit. - the backup user and finally also the unit

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

api_instance = Ionoscloud::BackupUnitsApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup Unit
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Delete a Backup Unit
  api_instance.backupunits_delete(backupunit_id, opts)
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_delete: #{e}"
end
```

#### Using the backupunits_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> backupunits_delete_with_http_info(backupunit_id, opts)

```ruby
begin
  # Delete a Backup Unit
  data, status_code, headers = api_instance.backupunits_delete_with_http_info(backupunit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backupunit_id** | **String** | The unique ID of the backup Unit |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backupunits_find_by_id

> <BackupUnit> backupunits_find_by_id(backupunit_id, opts)

Returns the specified Backup Unit

You can retrieve the details of an specific backup unit.

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

api_instance = Ionoscloud::BackupUnitsApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Returns the specified Backup Unit
  result = api_instance.backupunits_find_by_id(backupunit_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_find_by_id: #{e}"
end
```

#### Using the backupunits_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnit>, Integer, Hash)> backupunits_find_by_id_with_http_info(backupunit_id, opts)

```ruby
begin
  # Returns the specified Backup Unit
  data, status_code, headers = api_instance.backupunits_find_by_id_with_http_info(backupunit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backupunit_id** | **String** | The unique ID of the backup unit |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backupunits_get

> <BackupUnits> backupunits_get(opts)

List Backup Units

You can retrieve a complete list of backup Units that you have access to.

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

api_instance = Ionoscloud::BackupUnitsApi.new
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # List Backup Units
  result = api_instance.backupunits_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_get: #{e}"
end
```

#### Using the backupunits_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnits>, Integer, Hash)> backupunits_get_with_http_info(opts)

```ruby
begin
  # List Backup Units
  data, status_code, headers = api_instance.backupunits_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnits>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnits**](BackupUnits.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backupunits_patch

> <BackupUnit> backupunits_patch(backupunit_id, backup_unit_properties, opts)

Partially modify a Backup Unit

You can use update a Backup Unit properties.

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

api_instance = Ionoscloud::BackupUnitsApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit
backup_unit_properties = Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'}) # BackupUnitProperties | Modified backup Unit properties
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Partially modify a Backup Unit
  result = api_instance.backupunits_patch(backupunit_id, backup_unit_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_patch: #{e}"
end
```

#### Using the backupunits_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnit>, Integer, Hash)> backupunits_patch_with_http_info(backupunit_id, backup_unit_properties, opts)

```ruby
begin
  # Partially modify a Backup Unit
  data, status_code, headers = api_instance.backupunits_patch_with_http_info(backupunit_id, backup_unit_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backupunit_id** | **String** | The unique ID of the backup unit |  |
| **backup_unit_properties** | [**BackupUnitProperties**](BackupUnitProperties.md) | Modified backup Unit properties |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backupunits_post

> <BackupUnit> backupunits_post(backup_unit, opts)

Create a Backup Unit

Create a Backup Unit. A Backup Unit is considered a resource like a virtual datacenter, IP Block, snapshot, etc. It shall be shareable via groups inside our User Management Feature 

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

api_instance = Ionoscloud::BackupUnitsApi.new
backup_unit = Ionoscloud::BackupUnit.new({properties: Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'})}) # BackupUnit | Payload containing data to create a new Backup Unit
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Create a Backup Unit
  result = api_instance.backupunits_post(backup_unit, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_post: #{e}"
end
```

#### Using the backupunits_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnit>, Integer, Hash)> backupunits_post_with_http_info(backup_unit, opts)

```ruby
begin
  # Create a Backup Unit
  data, status_code, headers = api_instance.backupunits_post_with_http_info(backup_unit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_unit** | [**BackupUnit**](BackupUnit.md) | Payload containing data to create a new Backup Unit |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backupunits_put

> <BackupUnit> backupunits_put(backupunit_id, backup_unit, opts)

Modify a Backup Unit

You can use update a Backup Unit properties.

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

api_instance = Ionoscloud::BackupUnitsApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit
backup_unit = Ionoscloud::BackupUnit.new({properties: Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'})}) # BackupUnit | Modified backup Unit
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Modify a Backup Unit
  result = api_instance.backupunits_put(backupunit_id, backup_unit, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_put: #{e}"
end
```

#### Using the backupunits_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnit>, Integer, Hash)> backupunits_put_with_http_info(backupunit_id, backup_unit, opts)

```ruby
begin
  # Modify a Backup Unit
  data, status_code, headers = api_instance.backupunits_put_with_http_info(backupunit_id, backup_unit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backupunit_id** | **String** | The unique ID of the backup unit |  |
| **backup_unit** | [**BackupUnit**](BackupUnit.md) | Modified backup Unit |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backupunits_ssourl_get

> <BackupUnitSSO> backupunits_ssourl_get(backupunit_id, opts)

Returns a single signon URL for the specified Backup Unit

Returns a single signon URL for the specified Backup Unit.

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

api_instance = Ionoscloud::BackupUnitsApi.new
backupunit_id = 'backupunit_id_example' # String | The unique UUID of the backup unit
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
}

begin
  # Returns a single signon URL for the specified Backup Unit
  result = api_instance.backupunits_ssourl_get(backupunit_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_ssourl_get: #{e}"
end
```

#### Using the backupunits_ssourl_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnitSSO>, Integer, Hash)> backupunits_ssourl_get_with_http_info(backupunit_id, opts)

```ruby
begin
  # Returns a single signon URL for the specified Backup Unit
  data, status_code, headers = api_instance.backupunits_ssourl_get_with_http_info(backupunit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnitSSO>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_ssourl_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backupunit_id** | **String** | The unique UUID of the backup unit |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, against which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnitSSO**](BackupUnitSSO.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

