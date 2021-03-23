# IPBlocksApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**ipblocks\_delete**](ipblocksapi.md#ipblocks_delete) | **DELETE** /ipblocks/{ipblockId} | Delete IP Block |
| [**ipblocks\_find\_by\_id**](ipblocksapi.md#ipblocks_find_by_id) | **GET** /ipblocks/{ipblockId} | Retrieve an IP Block |
| [**ipblocks\_get**](ipblocksapi.md#ipblocks_get) | **GET** /ipblocks | List IP Blocks |
| [**ipblocks\_patch**](ipblocksapi.md#ipblocks_patch) | **PATCH** /ipblocks/{ipblockId} | Partially modify IP Block |
| [**ipblocks\_post**](ipblocksapi.md#ipblocks_post) | **POST** /ipblocks | Reserve IP Block |
| [**ipblocks\_put**](ipblocksapi.md#ipblocks_put) | **PUT** /ipblocks/{ipblockId} | Modify IP Block |

## ipblocks\_delete

> Object ipblocks\_delete\(ipblock\_id, opts\)

Delete IP Block

Removes the specific IP Block

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete IP Block
  result = api_instance.ipblocks_delete(ipblock_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_delete: #{e}"
end
```

#### Using the ipblocks\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> ipblocks\_delete\_with\_http\_info\(ipblock\_id, opts\)

```ruby
begin
  # Delete IP Block
  data, status_code, headers = api_instance.ipblocks_delete_with_http_info(ipblock_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** |  |  |
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

## ipblocks\_find\_by\_id

> ipblocks\_find\_by\_id\(ipblock\_id, opts\)

Retrieve an IP Block

Retrieves the attributes of a given IP Block.

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | 
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve an IP Block
  result = api_instance.ipblocks_find_by_id(ipblock_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_find_by_id: #{e}"
end
```

#### Using the ipblocks\_find\_by\_id\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_find\_by\_id\_with\_http\_info\(ipblock\_id, opts\)

```ruby
begin
  # Retrieve an IP Block
  data, status_code, headers = api_instance.ipblocks_find_by_id_with_http_info(ipblock_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** |  |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**IpBlock**](../models/ipblock.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## ipblocks\_get

> ipblocks\_get\(opts\)

List IP Blocks

Retrieve a list of all reserved IP Blocks

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

api_instance = Ionoscloud::IPBlocksApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List IP Blocks 
  result = api_instance.ipblocks_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_get: #{e}"
end
```

#### Using the ipblocks\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_get\_with\_http\_info\(opts\)

```ruby
begin
  # List IP Blocks 
  data, status_code, headers = api_instance.ipblocks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlocks>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**IpBlocks**](../models/ipblocks.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## ipblocks\_patch

> ipblocks\_patch\(ipblock\_id, ipblock, opts\)

Partially modify IP Block

You can use update attributes of a resource

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | 
ipblock = Ionoscloud::IpBlockProperties.new({location: 'us/las', size: 5}) # IpBlockProperties | IP Block to be modified
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Partially modify IP Block
  result = api_instance.ipblocks_patch(ipblock_id, ipblock, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_patch: #{e}"
end
```

#### Using the ipblocks\_patch\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_patch\_with\_http\_info\(ipblock\_id, ipblock, opts\)

```ruby
begin
  # Partially modify IP Block
  data, status_code, headers = api_instance.ipblocks_patch_with_http_info(ipblock_id, ipblock, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** |  |  |
| **ipblock** | [**IpBlockProperties**](../models/ipblockproperties.md) | IP Block to be modified |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**IpBlock**](../models/ipblock.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## ipblocks\_post

> ipblocks\_post\(ipblock, opts\)

Reserve IP Block

This will reserve a new IP Block

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock = Ionoscloud::IpBlock.new({properties: Ionoscloud::IpBlockProperties.new({location: 'us/las', size: 5})}) # IpBlock | IP Block to be reserved
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Reserve IP Block
  result = api_instance.ipblocks_post(ipblock, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_post: #{e}"
end
```

#### Using the ipblocks\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_post\_with\_http\_info\(ipblock, opts\)

```ruby
begin
  # Reserve IP Block
  data, status_code, headers = api_instance.ipblocks_post_with_http_info(ipblock, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock** | [**IpBlock**](../models/ipblock.md) | IP Block to be reserved |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**IpBlock**](../models/ipblock.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## ipblocks\_put

> ipblocks\_put\(ipblock\_id, ipblock, opts\)

Modify IP Block

You can use update attributes of a resource

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

api_instance = Ionoscloud::IPBlocksApi.new
ipblock_id = 'ipblock_id_example' # String | 
ipblock = Ionoscloud::IpBlock.new({properties: Ionoscloud::IpBlockProperties.new({location: 'us/las', size: 5})}) # IpBlock | IP Block to be modified
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify IP Block
  result = api_instance.ipblocks_put(ipblock_id, ipblock, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_put: #{e}"
end
```

#### Using the ipblocks\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_put\_with\_http\_info\(ipblock\_id, ipblock, opts\)

```ruby
begin
  # Modify IP Block
  data, status_code, headers = api_instance.ipblocks_put_with_http_info(ipblock_id, ipblock, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue Ionoscloud::ApiError => e
  puts "Error when calling IPBlocksApi->ipblocks_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** |  |  |
| **ipblock** | [**IpBlock**](../models/ipblock.md) | IP Block to be modified |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**IpBlock**](../models/ipblock.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/136fb412bca8c3676c1cf2ea02f911ded5dfb04c/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

