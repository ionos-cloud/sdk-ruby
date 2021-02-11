# LabelApi

All URIs are relative to [https://api.ionos.com/cloudapi/v5](https://api.ionos.com/cloudapi/v5)

| Method | HTTP request | Description |
| :--- | :--- | :--- |
| [**datacenters\_labels\_delete**](labelapi.md#datacenters_labels_delete) | **DELETE** /datacenters/{datacenterId}/labels/{key} | Delete a Label from Data Center |
| [**datacenters\_labels\_find\_by\_key**](labelapi.md#datacenters_labels_find_by_key) | **GET** /datacenters/{datacenterId}/labels/{key} | Retrieve a Label of Data Center |
| [**datacenters\_labels\_get**](labelapi.md#datacenters_labels_get) | **GET** /datacenters/{datacenterId}/labels | List all Data Center Labels |
| [**datacenters\_labels\_post**](labelapi.md#datacenters_labels_post) | **POST** /datacenters/{datacenterId}/labels | Add a Label to Data Center |
| [**datacenters\_labels\_put**](labelapi.md#datacenters_labels_put) | **PUT** /datacenters/{datacenterId}/labels/{key} | Modify a Label of Data Center |
| [**datacenters\_servers\_labels\_delete**](labelapi.md#datacenters_servers_labels_delete) | **DELETE** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Delete a Label from Server |
| [**datacenters\_servers\_labels\_find\_by\_key**](labelapi.md#datacenters_servers_labels_find_by_key) | **GET** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Retrieve a Label of Server |
| [**datacenters\_servers\_labels\_get**](labelapi.md#datacenters_servers_labels_get) | **GET** /datacenters/{datacenterId}/servers/{serverId}/labels | List all Server Labels |
| [**datacenters\_servers\_labels\_post**](labelapi.md#datacenters_servers_labels_post) | **POST** /datacenters/{datacenterId}/servers/{serverId}/labels | Add a Label to Server |
| [**datacenters\_servers\_labels\_put**](labelapi.md#datacenters_servers_labels_put) | **PUT** /datacenters/{datacenterId}/servers/{serverId}/labels/{key} | Modify a Label of Server |
| [**datacenters\_volumes\_labels\_delete**](labelapi.md#datacenters_volumes_labels_delete) | **DELETE** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Delete a Label from Volume |
| [**datacenters\_volumes\_labels\_find\_by\_key**](labelapi.md#datacenters_volumes_labels_find_by_key) | **GET** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Retrieve a Label of Volume |
| [**datacenters\_volumes\_labels\_get**](labelapi.md#datacenters_volumes_labels_get) | **GET** /datacenters/{datacenterId}/volumes/{volumeId}/labels | List all Volume Labels |
| [**datacenters\_volumes\_labels\_post**](labelapi.md#datacenters_volumes_labels_post) | **POST** /datacenters/{datacenterId}/volumes/{volumeId}/labels | Add a Label to Volume |
| [**datacenters\_volumes\_labels\_put**](labelapi.md#datacenters_volumes_labels_put) | **PUT** /datacenters/{datacenterId}/volumes/{volumeId}/labels/{key} | Modify a Label of Volume |
| [**ipblocks\_labels\_delete**](labelapi.md#ipblocks_labels_delete) | **DELETE** /ipblocks/{ipblockId}/labels/{key} | Delete a Label from IP Block |
| [**ipblocks\_labels\_find\_by\_key**](labelapi.md#ipblocks_labels_find_by_key) | **GET** /ipblocks/{ipblockId}/labels/{key} | Retrieve a Label of IP Block |
| [**ipblocks\_labels\_get**](labelapi.md#ipblocks_labels_get) | **GET** /ipblocks/{ipblockId}/labels | List all Ip Block Labels |
| [**ipblocks\_labels\_post**](labelapi.md#ipblocks_labels_post) | **POST** /ipblocks/{ipblockId}/labels | Add a Label to IP Block |
| [**ipblocks\_labels\_put**](labelapi.md#ipblocks_labels_put) | **PUT** /ipblocks/{ipblockId}/labels/{key} | Modify a Label of IP Block |
| [**labels\_find\_by\_urn**](labelapi.md#labels_find_by_urn) | **GET** /labels/{labelurn} | Returns the label by its URN. |
| [**labels\_get**](labelapi.md#labels_get) | **GET** /labels | List Labels |
| [**snapshots\_labels\_delete**](labelapi.md#snapshots_labels_delete) | **DELETE** /snapshots/{snapshotId}/labels/{key} | Delete a Label from Snapshot |
| [**snapshots\_labels\_find\_by\_key**](labelapi.md#snapshots_labels_find_by_key) | **GET** /snapshots/{snapshotId}/labels/{key} | Retrieve a Label of Snapshot |
| [**snapshots\_labels\_get**](labelapi.md#snapshots_labels_get) | **GET** /snapshots/{snapshotId}/labels | List all Snapshot Labels |
| [**snapshots\_labels\_post**](labelapi.md#snapshots_labels_post) | **POST** /snapshots/{snapshotId}/labels | Add a Label to Snapshot |
| [**snapshots\_labels\_put**](labelapi.md#snapshots_labels_put) | **PUT** /snapshots/{snapshotId}/labels/{key} | Modify a Label of Snapshot |

## datacenters\_labels\_delete

> Object datacenters\_labels\_delete\(datacenter\_id, key, opts\)

Delete a Label from Data Center

This will remove a label from the data center.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Label from Data Center
  result = api_instance.datacenters_labels_delete(datacenter_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_delete: #{e}"
end
```

#### Using the datacenters\_labels\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_labels\_delete\_with\_http\_info\(datacenter\_id, key, opts\)

```ruby
begin
  # Delete a Label from Data Center
  data, status_code, headers = api_instance.datacenters_labels_delete_with_http_info(datacenter_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Data Center |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_labels\_find\_by\_key

> datacenters\_labels\_find\_by\_key\(datacenter\_id, key, opts\)

Retrieve a Label of Data Center

This will retrieve the properties of a associated label to a data center.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Label of Data Center
  result = api_instance.datacenters_labels_find_by_key(datacenter_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_find_by_key: #{e}"
end
```

#### Using the datacenters\_labels\_find\_by\_key\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_labels\_find\_by\_key\_with\_http\_info\(datacenter\_id, key, opts\)

```ruby
begin
  # Retrieve a Label of Data Center
  data, status_code, headers = api_instance.datacenters_labels_find_by_key_with_http_info(datacenter_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Data Center |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_labels\_get

> datacenters\_labels\_get\(datacenter\_id, opts\)

List all Data Center Labels

You can retrieve a list of all labels associated with a data center

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List all Data Center Labels
  result = api_instance.datacenters_labels_get(datacenter_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_get: #{e}"
end
```

#### Using the datacenters\_labels\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_labels\_get\_with\_http\_info\(datacenter\_id, opts\)

```ruby
begin
  # List all Data Center Labels
  data, status_code, headers = api_instance.datacenters_labels_get_with_http_info(datacenter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Data Center |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**LabelResources**](../models/labelresources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_labels\_post

> datacenters\_labels\_post\(datacenter\_id, label, opts\)

Add a Label to Data Center

This will add a label to the data center.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Label to Data Center
  result = api_instance.datacenters_labels_post(datacenter_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_post: #{e}"
end
```

#### Using the datacenters\_labels\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_labels\_post\_with\_http\_info\(datacenter\_id, label, opts\)

```ruby
begin
  # Add a Label to Data Center
  data, status_code, headers = api_instance.datacenters_labels_post_with_http_info(datacenter_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Data Center |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_labels\_put

> datacenters\_labels\_put\(datacenter\_id, key, label, opts\)

Modify a Label of Data Center

This will modify the value of the label on a data center.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Data Center
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Label of Data Center
  result = api_instance.datacenters_labels_put(datacenter_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_put: #{e}"
end
```

#### Using the datacenters\_labels\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_labels\_put\_with\_http\_info\(datacenter\_id, key, label, opts\)

```ruby
begin
  # Modify a Label of Data Center
  data, status_code, headers = api_instance.datacenters_labels_put_with_http_info(datacenter_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Data Center |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_labels\_delete

> Object datacenters\_servers\_labels\_delete\(datacenter\_id, server\_id, key, opts\)

Delete a Label from Server

This will remove a label from the server.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Label from Server
  result = api_instance.datacenters_servers_labels_delete(datacenter_id, server_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_delete: #{e}"
end
```

#### Using the datacenters\_servers\_labels\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_servers\_labels\_delete\_with\_http\_info\(datacenter\_id, server\_id, key, opts\)

```ruby
begin
  # Delete a Label from Server
  data, status_code, headers = api_instance.datacenters_servers_labels_delete_with_http_info(datacenter_id, server_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_labels\_find\_by\_key

> datacenters\_servers\_labels\_find\_by\_key\(datacenter\_id, server\_id, key, opts\)

Retrieve a Label of Server

This will retrieve the properties of a associated label to a server.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Label of Server
  result = api_instance.datacenters_servers_labels_find_by_key(datacenter_id, server_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_find_by_key: #{e}"
end
```

#### Using the datacenters\_servers\_labels\_find\_by\_key\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_labels\_find\_by\_key\_with\_http\_info\(datacenter\_id, server\_id, key, opts\)

```ruby
begin
  # Retrieve a Label of Server
  data, status_code, headers = api_instance.datacenters_servers_labels_find_by_key_with_http_info(datacenter_id, server_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_labels\_get

> datacenters\_servers\_labels\_get\(datacenter\_id, server\_id, opts\)

List all Server Labels

You can retrieve a list of all labels associated with a server

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List all Server Labels
  result = api_instance.datacenters_servers_labels_get(datacenter_id, server_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_get: #{e}"
end
```

#### Using the datacenters\_servers\_labels\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_labels\_get\_with\_http\_info\(datacenter\_id, server\_id, opts\)

```ruby
begin
  # List all Server Labels
  data, status_code, headers = api_instance.datacenters_servers_labels_get_with_http_info(datacenter_id, server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**LabelResources**](../models/labelresources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_servers\_labels\_post

> datacenters\_servers\_labels\_post\(datacenter\_id, server\_id, label, opts\)

Add a Label to Server

This will add a label to the server.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Label to Server
  result = api_instance.datacenters_servers_labels_post(datacenter_id, server_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_post: #{e}"
end
```

#### Using the datacenters\_servers\_labels\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_labels\_post\_with\_http\_info\(datacenter\_id, server\_id, label, opts\)

```ruby
begin
  # Add a Label to Server
  data, status_code, headers = api_instance.datacenters_servers_labels_post_with_http_info(datacenter_id, server_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_servers\_labels\_put

> datacenters\_servers\_labels\_put\(datacenter\_id, server\_id, key, label, opts\)

Modify a Label of Server

This will modify the value of the label on a server.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
server_id = 'server_id_example' # String | The unique ID of the Server
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Label of Server
  result = api_instance.datacenters_servers_labels_put(datacenter_id, server_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_put: #{e}"
end
```

#### Using the datacenters\_servers\_labels\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_servers\_labels\_put\_with\_http\_info\(datacenter\_id, server\_id, key, label, opts\)

```ruby
begin
  # Modify a Label of Server
  data, status_code, headers = api_instance.datacenters_servers_labels_put_with_http_info(datacenter_id, server_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_servers_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **server\_id** | **String** | The unique ID of the Server |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_volumes\_labels\_delete

> Object datacenters\_volumes\_labels\_delete\(datacenter\_id, volume\_id, key, opts\)

Delete a Label from Volume

This will remove a label from the volume.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Label from Volume
  result = api_instance.datacenters_volumes_labels_delete(datacenter_id, volume_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_delete: #{e}"
end
```

#### Using the datacenters\_volumes\_labels\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> datacenters\_volumes\_labels\_delete\_with\_http\_info\(datacenter\_id, volume\_id, key, opts\)

```ruby
begin
  # Delete a Label from Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_delete_with_http_info(datacenter_id, volume_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_volumes\_labels\_find\_by\_key

> datacenters\_volumes\_labels\_find\_by\_key\(datacenter\_id, volume\_id, key, opts\)

Retrieve a Label of Volume

This will retrieve the properties of a associated label to a volume.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Label of Volume
  result = api_instance.datacenters_volumes_labels_find_by_key(datacenter_id, volume_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_find_by_key: #{e}"
end
```

#### Using the datacenters\_volumes\_labels\_find\_by\_key\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_labels\_find\_by\_key\_with\_http\_info\(datacenter\_id, volume\_id, key, opts\)

```ruby
begin
  # Retrieve a Label of Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_find_by_key_with_http_info(datacenter_id, volume_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_volumes\_labels\_get

> datacenters\_volumes\_labels\_get\(datacenter\_id, volume\_id, opts\)

List all Volume Labels

You can retrieve a list of all labels associated with a volume

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56, # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  offset: 56, # Integer | the first element (of the total list of elements) to include in the response (use together with <code>limit</code> for pagination)
  limit: 56 # Integer | the maximum number of elements to return (use together with <code>offset</code> for pagination)
}

begin
  # List all Volume Labels
  result = api_instance.datacenters_volumes_labels_get(datacenter_id, volume_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_get: #{e}"
end
```

#### Using the datacenters\_volumes\_labels\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_labels\_get\_with\_http\_info\(datacenter\_id, volume\_id, opts\)

```ruby
begin
  # List all Volume Labels
  data, status_code, headers = api_instance.datacenters_volumes_labels_get_with_http_info(datacenter_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |
| **offset** | **Integer** | the first element \(of the total list of elements\) to include in the response \(use together with &lt;code&gt;limit&lt;/code&gt; for pagination\) | \[optional\]\[default to 0\] |
| **limit** | **Integer** | the maximum number of elements to return \(use together with &lt;code&gt;offset&lt;/code&gt; for pagination\) | \[optional\]\[default to 1000\] |

### Return type

[**LabelResources**](../models/labelresources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## datacenters\_volumes\_labels\_post

> datacenters\_volumes\_labels\_post\(datacenter\_id, volume\_id, label, opts\)

Add a Label to Volume

This will add a label to the volume.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Label to Volume
  result = api_instance.datacenters_volumes_labels_post(datacenter_id, volume_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_post: #{e}"
end
```

#### Using the datacenters\_volumes\_labels\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_labels\_post\_with\_http\_info\(datacenter\_id, volume\_id, label, opts\)

```ruby
begin
  # Add a Label to Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_post_with_http_info(datacenter_id, volume_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## datacenters\_volumes\_labels\_put

> datacenters\_volumes\_labels\_put\(datacenter\_id, volume\_id, key, label, opts\)

Modify a Label of Volume

This will modify the value of the label on a volume.

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

api_instance = Ionoscloud::LabelApi.new
datacenter_id = 'datacenter_id_example' # String | The unique ID of the Datacenter
volume_id = 'volume_id_example' # String | The unique ID of the Volume
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Label of Volume
  result = api_instance.datacenters_volumes_labels_put(datacenter_id, volume_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_put: #{e}"
end
```

#### Using the datacenters\_volumes\_labels\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; datacenters\_volumes\_labels\_put\_with\_http\_info\(datacenter\_id, volume\_id, key, label, opts\)

```ruby
begin
  # Modify a Label of Volume
  data, status_code, headers = api_instance.datacenters_volumes_labels_put_with_http_info(datacenter_id, volume_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->datacenters_volumes_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **datacenter\_id** | **String** | The unique ID of the Datacenter |  |
| **volume\_id** | **String** | The unique ID of the Volume |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## ipblocks\_labels\_delete

> Object ipblocks\_labels\_delete\(ipblock\_id, key, opts\)

Delete a Label from IP Block

This will remove a label from the Ip Block.

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

api_instance = Ionoscloud::LabelApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Label from IP Block
  result = api_instance.ipblocks_labels_delete(ipblock_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_delete: #{e}"
end
```

#### Using the ipblocks\_labels\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> ipblocks\_labels\_delete\_with\_http\_info\(ipblock\_id, key, opts\)

```ruby
begin
  # Delete a Label from IP Block
  data, status_code, headers = api_instance.ipblocks_labels_delete_with_http_info(ipblock_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** | The unique ID of the Ip Block |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## ipblocks\_labels\_find\_by\_key

> ipblocks\_labels\_find\_by\_key\(ipblock\_id, key, opts\)

Retrieve a Label of IP Block

This will retrieve the properties of a associated label to a Ip Block.

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

api_instance = Ionoscloud::LabelApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Label of IP Block
  result = api_instance.ipblocks_labels_find_by_key(ipblock_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_find_by_key: #{e}"
end
```

#### Using the ipblocks\_labels\_find\_by\_key\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_labels\_find\_by\_key\_with\_http\_info\(ipblock\_id, key, opts\)

```ruby
begin
  # Retrieve a Label of IP Block
  data, status_code, headers = api_instance.ipblocks_labels_find_by_key_with_http_info(ipblock_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** | The unique ID of the Ip Block |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## ipblocks\_labels\_get

> ipblocks\_labels\_get\(ipblock\_id, opts\)

List all Ip Block Labels

You can retrieve a list of all labels associated with a IP Block

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

api_instance = Ionoscloud::LabelApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List all Ip Block Labels
  result = api_instance.ipblocks_labels_get(ipblock_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_get: #{e}"
end
```

#### Using the ipblocks\_labels\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_labels\_get\_with\_http\_info\(ipblock\_id, opts\)

```ruby
begin
  # List all Ip Block Labels
  data, status_code, headers = api_instance.ipblocks_labels_get_with_http_info(ipblock_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** | The unique ID of the Ip Block |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResources**](../models/labelresources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## ipblocks\_labels\_post

> ipblocks\_labels\_post\(ipblock\_id, label, opts\)

Add a Label to IP Block

This will add a label to the Ip Block.

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

api_instance = Ionoscloud::LabelApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Label to IP Block
  result = api_instance.ipblocks_labels_post(ipblock_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_post: #{e}"
end
```

#### Using the ipblocks\_labels\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_labels\_post\_with\_http\_info\(ipblock\_id, label, opts\)

```ruby
begin
  # Add a Label to IP Block
  data, status_code, headers = api_instance.ipblocks_labels_post_with_http_info(ipblock_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** | The unique ID of the Ip Block |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## ipblocks\_labels\_put

> ipblocks\_labels\_put\(ipblock\_id, key, label, opts\)

Modify a Label of IP Block

This will modify the value of the label on a Ip Block.

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

api_instance = Ionoscloud::LabelApi.new
ipblock_id = 'ipblock_id_example' # String | The unique ID of the Ip Block
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Label of IP Block
  result = api_instance.ipblocks_labels_put(ipblock_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_put: #{e}"
end
```

#### Using the ipblocks\_labels\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; ipblocks\_labels\_put\_with\_http\_info\(ipblock\_id, key, label, opts\)

```ruby
begin
  # Modify a Label of IP Block
  data, status_code, headers = api_instance.ipblocks_labels_put_with_http_info(ipblock_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->ipblocks_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **ipblock\_id** | **String** | The unique ID of the Ip Block |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## labels\_find\_by\_urn

> labels\_find\_by\_urn\(labelurn, opts\)

Returns the label by its URN.

You can retrieve the details of a specific label using its URN. A URN is for uniqueness of a Label and composed using urn:label:::

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

api_instance = Ionoscloud::LabelApi.new
labelurn = 'labelurn_example' # String | The URN representing the unique ID of the label. A URN is for uniqueness of a Label and composed using urn:label:<resource_type>:<resource_uuid>:<key>
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Returns the label by its URN.
  result = api_instance.labels_find_by_urn(labelurn, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->labels_find_by_urn: #{e}"
end
```

#### Using the labels\_find\_by\_urn\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; labels\_find\_by\_urn\_with\_http\_info\(labelurn, opts\)

```ruby
begin
  # Returns the label by its URN.
  data, status_code, headers = api_instance.labels_find_by_urn_with_http_info(labelurn, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Label>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->labels_find_by_urn_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **labelurn** | **String** | The URN representing the unique ID of the label. A URN is for uniqueness of a Label and composed using urn:label:&lt;resource\_type&gt;:&lt;resource\_uuid&gt;:&lt;key&gt; |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Label**](../models/label.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## labels\_get

> labels\_get\(opts\)

List Labels

You can retrieve a complete list of labels that you have access to.

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

api_instance = Ionoscloud::LabelApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List Labels 
  result = api_instance.labels_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->labels_get: #{e}"
end
```

#### Using the labels\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; labels\_get\_with\_http\_info\(opts\)

```ruby
begin
  # List Labels 
  data, status_code, headers = api_instance.labels_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Labels>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**Labels**](../models/labels.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_labels\_delete

> Object snapshots\_labels\_delete\(snapshot\_id, key, opts\)

Delete a Label from Snapshot

This will remove a label from the snapshot.

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

api_instance = Ionoscloud::LabelApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Delete a Label from Snapshot
  result = api_instance.snapshots_labels_delete(snapshot_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_delete: #{e}"
end
```

#### Using the snapshots\_labels\_delete\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> snapshots\_labels\_delete\_with\_http\_info\(snapshot\_id, key, opts\)

```ruby
begin
  # Delete a Label from Snapshot
  data, status_code, headers = api_instance.snapshots_labels_delete_with_http_info(snapshot_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

**Object**

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_labels\_find\_by\_key

> snapshots\_labels\_find\_by\_key\(snapshot\_id, key, opts\)

Retrieve a Label of Snapshot

This will retrieve the properties of a associated label to a snapshot.

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

api_instance = Ionoscloud::LabelApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
key = 'key_example' # String | The key of the Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Retrieve a Label of Snapshot
  result = api_instance.snapshots_labels_find_by_key(snapshot_id, key, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_find_by_key: #{e}"
end
```

#### Using the snapshots\_labels\_find\_by\_key\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_labels\_find\_by\_key\_with\_http\_info\(snapshot\_id, key, opts\)

```ruby
begin
  # Retrieve a Label of Snapshot
  data, status_code, headers = api_instance.snapshots_labels_find_by_key_with_http_info(snapshot_id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_find_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **key** | **String** | The key of the Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_labels\_get

> snapshots\_labels\_get\(snapshot\_id, opts\)

List all Snapshot Labels

You can retrieve a list of all labels associated with a snapshot

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

api_instance = Ionoscloud::LabelApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # List all Snapshot Labels
  result = api_instance.snapshots_labels_get(snapshot_id, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_get: #{e}"
end
```

#### Using the snapshots\_labels\_get\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_labels\_get\_with\_http\_info\(snapshot\_id, opts\)

```ruby
begin
  # List all Snapshot Labels
  data, status_code, headers = api_instance.snapshots_labels_get_with_http_info(snapshot_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResources>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResources**](../models/labelresources.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

## snapshots\_labels\_post

> snapshots\_labels\_post\(snapshot\_id, label, opts\)

Add a Label to Snapshot

This will add a label to the snapshot.

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

api_instance = Ionoscloud::LabelApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Label to be added
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Add a Label to Snapshot
  result = api_instance.snapshots_labels_post(snapshot_id, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_post: #{e}"
end
```

#### Using the snapshots\_labels\_post\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_labels\_post\_with\_http\_info\(snapshot\_id, label, opts\)

```ruby
begin
  # Add a Label to Snapshot
  data, status_code, headers = api_instance.snapshots_labels_post_with_http_info(snapshot_id, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Label to be added |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

## snapshots\_labels\_put

> snapshots\_labels\_put\(snapshot\_id, key, label, opts\)

Modify a Label of Snapshot

This will modify the value of the label on a snapshot.

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

api_instance = Ionoscloud::LabelApi.new
snapshot_id = 'snapshot_id_example' # String | The unique ID of the Snapshot
key = 'key_example' # String | The key of the Label
label = Ionoscloud::LabelResource.new({properties: Ionoscloud::LabelResourceProperties.new}) # LabelResource | Modified Label
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  # Modify a Label of Snapshot
  result = api_instance.snapshots_labels_put(snapshot_id, key, label, opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_put: #{e}"
end
```

#### Using the snapshots\_labels\_put\_with\_http\_info variant

This returns an Array which contains the response data, status code and headers.

> , Integer, Hash\)&gt; snapshots\_labels\_put\_with\_http\_info\(snapshot\_id, key, label, opts\)

```ruby
begin
  # Modify a Label of Snapshot
  data, status_code, headers = api_instance.snapshots_labels_put_with_http_info(snapshot_id, key, label, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LabelResource>
rescue Ionoscloud::ApiError => e
  puts "Error when calling LabelApi->snapshots_labels_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **snapshot\_id** | **String** | The unique ID of the Snapshot |  |
| **key** | **String** | The key of the Label |  |
| **label** | [**LabelResource**](../models/labelresource.md) | Modified Label |  |
| **pretty** | **Boolean** | Controls whether response is pretty-printed \(with indentation and new lines\) | \[optional\]\[default to true\] |
| **depth** | **Integer** | Controls the details depth of response objects.  Eg. GET /datacenters/\[ID\]  - depth=0: only direct properties are included. Children \(servers etc.\) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on | \[optional\]\[default to 0\] |
| **x\_contract\_number** | **Integer** | Users having more than 1 contract need to provide contract number, against which all API requests should be executed | \[optional\] |

### Return type

[**LabelResource**](../models/labelresource.md)

### Authorization

[Basic Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Basic%20Authentication), [Token Authentication](https://github.com/ionos-cloud/sdk-ruby/tree/b45e4a5d3ebd317006e23928144ffd0dae188332/README.md#Token%20Authentication)

### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

