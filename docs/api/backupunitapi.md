# BackupUnitApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**backupunits\_delete**](backupunitapi.md#backupunits_delete) | **DELETE** /backupunits/{backupunitId} | Delete a Backup Unit |
| [**backupunits\_find\_by\_id**](backupunitapi.md#backupunits_find_by_id) | **GET** /backupunits/{backupunitId} | Returns the specified backup Unit |
| [**backupunits\_get**](backupunitapi.md#backupunits_get) | **GET** /backupunits | List Backup Units |
| [**backupunits\_patch**](backupunitapi.md#backupunits_patch) | **PATCH** /backupunits/{backupunitId} | Partially modify a Backup Unit |
| [**backupunits\_post**](backupunitapi.md#backupunits_post) | **POST** /backupunits | Create a Backup Unit |
| [**backupunits\_put**](backupunitapi.md#backupunits_put) | **PUT** /backupunits/{backupunitId} | Modify a Backup Unit |
| [**backupunits\_ssourl\_get**](backupunitapi.md#backupunits_ssourl_get) | **GET** /backupunits/{backupunitId}/ssourl | Returns a single signon URL for the specified backup Unit. |

## backupunits\_delete

> Object backupunits\_delete\(backupunit\_id, opts\)

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

api_instance = Ionoscloud::BackupUnitApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup Unit
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Backup Unit
  result = api_instance.backupunits_delete(backupunit_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_delete: #{e}"
end
```

#### Using the backupunits\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> backupunits\_delete\_with\_http\_info\(backupunit\_id, opts\)

```ruby
begin
  # Delete a Backup Unit
  data, status_code, headers = api_instance.backupunits_delete_with_http_info(backupunit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **backupunit\_id** | **String** | The unique ID of the backup Unit |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## backupunits\_find\_by\_id

> backupunits\_find\_by\_id\(backupunit\_id, opts\)

Returns the specified backup Unit

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

api_instance = Ionoscloud::BackupUnitApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Returns the specified backup Unit
  result = api_instance.backupunits_find_by_id(backupunit_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_find_by_id: #{e}"
end
```

#### Using the backupunits\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; backupunits\_find\_by\_id\_with\_http\_info\(backupunit\_id, opts\)

```ruby
begin
  # Returns the specified backup Unit
  data, status_code, headers = api_instance.backupunits_find_by_id_with_http_info(backupunit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **backupunit\_id** | **String** | The unique ID of the backup unit |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**BackupUnit**](../models/backupunit.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## backupunits\_get

> backupunits\_get\(opts\)

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

api_instance = Ionoscloud::BackupUnitApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Backup Units 
  result = api_instance.backupunits_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_get: #{e}"
end
```

#### Using the backupunits\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; backupunits\_get\_with\_http\_info\(opts\)

```ruby
begin
  # List Backup Units 
  data, status_code, headers = api_instance.backupunits_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnits>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**BackupUnits**](../models/backupunits.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## backupunits\_patch

> backupunits\_patch\(backupunit\_id, backup\_unit\_properties, opts\)

Partially modify a Backup Unit

You can use update a backup Unit properties

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

api_instance = Ionoscloud::BackupUnitApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit
backup_unit_properties = Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'}) # BackupUnitProperties | Modified backup Unit properties
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify a Backup Unit
  result = api_instance.backupunits_patch(backupunit_id, backup_unit_properties, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_patch: #{e}"
end
```

#### Using the backupunits\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; backupunits\_patch\_with\_http\_info\(backupunit\_id, backup\_unit\_properties, opts\)

```ruby
begin
  # Partially modify a Backup Unit
  data, status_code, headers = api_instance.backupunits_patch_with_http_info(backupunit_id, backup_unit_properties, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **backupunit\_id** | **String** | The unique ID of the backup unit |  |
| **backup\_unit\_properties** | [**BackupUnitProperties**](../models/backupunitproperties.md) | Modified backup Unit properties |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**BackupUnit**](../models/backupunit.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## backupunits\_post

> backupunits\_post\(backup\_unit, opts\)

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

api_instance = Ionoscloud::BackupUnitApi.new
backup_unit = Ionoscloud::BackupUnit.new({properties: Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'})}) # BackupUnit | Payload containing data to create a new Backup Unit
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Create a Backup Unit
  result = api_instance.backupunits_post(backup_unit, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_post: #{e}"
end
```

#### Using the backupunits\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; backupunits\_post\_with\_http\_info\(backup\_unit, opts\)

```ruby
begin
  # Create a Backup Unit
  data, status_code, headers = api_instance.backupunits_post_with_http_info(backup_unit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **backup\_unit** | [**BackupUnit**](../models/backupunit.md) | Payload containing data to create a new Backup Unit |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**BackupUnit**](../models/backupunit.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## backupunits\_put

> backupunits\_put\(backupunit\_id, backup\_unit, opts\)

Modify a Backup Unit

You can use update a backup Unit properties

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

api_instance = Ionoscloud::BackupUnitApi.new
backupunit_id = 'backupunit_id_example' # String | The unique ID of the backup unit
backup_unit = Ionoscloud::BackupUnit.new({properties: Ionoscloud::BackupUnitProperties.new({name: 'BackupUnitName'})}) # BackupUnit | Modified backup Unit
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Backup Unit
  result = api_instance.backupunits_put(backupunit_id, backup_unit, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_put: #{e}"
end
```

#### Using the backupunits\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; backupunits\_put\_with\_http\_info\(backupunit\_id, backup\_unit, opts\)

```ruby
begin
  # Modify a Backup Unit
  data, status_code, headers = api_instance.backupunits_put_with_http_info(backupunit_id, backup_unit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnit>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **backupunit\_id** | **String** | The unique ID of the backup unit |  |
| **backup\_unit** | [**BackupUnit**](../models/backupunit.md) | Modified backup Unit |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**BackupUnit**](../models/backupunit.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## backupunits\_ssourl\_get

> backupunits\_ssourl\_get\(backupunit\_id, opts\)

Returns a single signon URL for the specified backup Unit.

Returns a single signon URL for the specified backup Unit.

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

api_instance = Ionoscloud::BackupUnitApi.new
backupunit_id = 'backupunit_id_example' # String | The unique UUID of the backup unit
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Returns a single signon URL for the specified backup Unit.
  result = api_instance.backupunits_ssourl_get(backupunit_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_ssourl_get: #{e}"
end
```

#### Using the backupunits\_ssourl\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; backupunits\_ssourl\_get\_with\_http\_info\(backupunit\_id, opts\)

```ruby
begin
  # Returns a single signon URL for the specified backup Unit.
  data, status_code, headers = api_instance.backupunits_ssourl_get_with_http_info(backupunit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupUnitSSO>
rescue Ionoscloud::ApiError => e
  puts "Error when calling BackupUnitApi->backupunits_ssourl_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **backupunit\_id** | **String** | The unique UUID of the backup unit |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**BackupUnitSSO**](../models/backupunitsso.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

