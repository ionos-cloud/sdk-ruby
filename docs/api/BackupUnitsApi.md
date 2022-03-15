# BackupUnitsApi

All URIs are relative to *https://api.ionos.com/cloudapi/v6*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**backupunits_delete**](BackupUnitsApi.md#backupunits_delete) | **DELETE** /backupunits/{backupunitId} | Delete backup units |
| [**backupunits_find_by_id**](BackupUnitsApi.md#backupunits_find_by_id) | **GET** /backupunits/{backupunitId} | Retrieve backup units |
| [**backupunits_get**](BackupUnitsApi.md#backupunits_get) | **GET** /backupunits | List backup units |
| [**backupunits_patch**](BackupUnitsApi.md#backupunits_patch) | **PATCH** /backupunits/{backupunitId} | Partially modify backup units |
| [**backupunits_post**](BackupUnitsApi.md#backupunits_post) | **POST** /backupunits | Create backup units |
| [**backupunits_put**](BackupUnitsApi.md#backupunits_put) | **PUT** /backupunits/{backupunitId} | Modify backup units |
| [**backupunits_ssourl_get**](BackupUnitsApi.md#backupunits_ssourl_get) | **GET** /backupunits/{backupunitId}/ssourl | Retrieve BU single sign-on URLs |


## backupunits_delete

> backupunits_delete(backupunit_id, opts)

Delete backup units

Remove the specified backup unit.  This process will delete: 1) The backup plans inside the backup unit 2) All backups, associated with this backup unit 3) The backup user 4) The backup unit itself

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
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Delete backup units
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
  # Delete backup units
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
| **backupunit_id** | **String** | The unique ID of the backup unit. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

nil (empty response body)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backupunits_find_by_id

> <BackupUnit> backupunits_find_by_id(backupunit_id, opts)

Retrieve backup units

Retrieve the properties of the specified backup unit.

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
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve backup units
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
  # Retrieve backup units
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
| **backupunit_id** | **String** | The unique ID of the backup unit. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](../models/BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backupunits_get

> <BackupUnits> backupunits_get(opts)

List backup units

List all available backup units.

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
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # List backup units
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
  # List backup units
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
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnits**](../models/BackupUnits.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backupunits_patch

> <BackupUnit> backupunits_patch(backupunit_id, backup_unit, opts)

Partially modify backup units

Update the properties of the specified backup unit.

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
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit.
backup_unit = Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'}) # BackupUnitProperties | The properties of the backup unit to be updated.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Partially modify backup units
  result = api_instance.backupunits_patch(backupunit_id, backup_unit, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitsApi->backupunits_patch: #{e}"
end
```

#### Using the backupunits_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupUnit>, Integer, Hash)> backupunits_patch_with_http_info(backupunit_id, backup_unit, opts)

```ruby
begin
  # Partially modify backup units
  data, status_code, headers = api_instance.backupunits_patch_with_http_info(backupunit_id, backup_unit, opts)
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
| **backupunit_id** | **String** | The unique ID of the backup unit. |  |
| **backup_unit** | [**BackupUnitProperties**](BackupUnitProperties.md) | The properties of the backup unit to be updated. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](../models/BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backupunits_post

> <BackupUnit> backupunits_post(backup_unit, opts)

Create backup units

Create a backup unit. Backup units are resources, same as storage volumes or snapshots; they can be shared through groups in User management. 

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
backup_unit = Ionoscloud::BackupUnit.new({properties: Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'})}) # BackupUnit | The backup unit to create.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Create backup units
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
  # Create backup units
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
| **backup_unit** | [**BackupUnit**](BackupUnit.md) | The backup unit to create. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](../models/BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backupunits_put

> <BackupUnit> backupunits_put(backupunit_id, backup_unit, opts)

Modify backup units

Modify the properties of the specified backup unit.

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
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit.
backup_unit = Ionoscloud::BackupUnit.new({properties: Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'})}) # BackupUnit | The modified backup unit.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  depth: 56, # Integer | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth=0: Only direct properties are included; children (servers and other elements) are not included.  - depth=1: Direct properties and children references are included.  - depth=2: Direct properties and children properties are included.  - depth=3: Direct properties and children properties and children's children are included.  - depth=... and so on
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Modify backup units
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
  # Modify backup units
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
| **backupunit_id** | **String** | The unique ID of the backup unit. |  |
| **backup_unit** | [**BackupUnit**](BackupUnit.md) | The modified backup unit. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **depth** | **Integer** | Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on | [optional][default to 0] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnit**](../models/BackupUnit.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backupunits_ssourl_get

> <BackupUnitSSO> backupunits_ssourl_get(backupunit_id, opts)

Retrieve BU single sign-on URLs

Retrieve a single sign-on URL for the specified backup unit.

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
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit.
opts = {
  pretty: true, # Boolean | Controls whether the response is pretty-printed (with indentations and new lines).
  x_contract_number: 56 # Integer | Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
}

begin
  # Retrieve BU single sign-on URLs
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
  # Retrieve BU single sign-on URLs
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
| **backupunit_id** | **String** | The unique ID of the backup unit. |  |
| **pretty** | **Boolean** | Controls whether the response is pretty-printed (with indentations and new lines). | [optional][default to true] |
| **x_contract_number** | **Integer** | Users with multiple contracts must provide the contract number, for which all API requests are to be executed. | [optional] |

### Return type

[**BackupUnitSSO**](../models/BackupUnitSSO.md)

### Authorization

Basic Authentication, Token Authentication

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

