# Ruby SDK

## Overview

The IONOS Cloud SDK for Ruby provides you with access to the IONOS Cloud API. The client library supports both simple and complex requests. It is designed for developers who are building applications in Ruby. The SDK for Ruby wraps the IONOS Cloud API. All API operations are performed over SSL and authenticated using your IONOS Cloud portal credentials. The API can be accessed within an instance running in IONOS Cloud or directly over the Internet from any application that can send an HTTPS request and receive an HTTPS response.

## Getting Started

An IONOS account is required for access to the Cloud API; credentials from your registration are used to authenticate against the IONOS Cloud API.

### Installation

### 1. Build a gem

To build the Ruby code into a gem:

```text
gem build ionoscloud.gemspec
```

Then either install the gem locally:

```text
gem install ./ionoscloud-<gem-version>.gem
```

\(for development, run `gem install --dev ./ionoscloud-<gem-version>.gem` to install the development dependencies\)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

```text
gem 'ionoscloud', '~> <gem-version>'
```

### 2. Install from Git

If the Ruby gem is hosted at a git repository: [https://github.com/ionos-cloud/sdk-ruby](https://github.com/ionos-cloud/sdk-ruby), then add the following in the Gemfile:

```text
gem 'ionoscloud', :git => 'https://github.com/ionos-cloud/sdk-ruby.git'
```

### 3. Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```text
ruby -Ilib script.rb
```

### 4. Install from RubyGems

Just add this to the Gemfile:

```text
gem 'ionoscloud', '~> <gem-version>'
```

### After installing please run the following code:

```ruby
# Load the gem
require 'ionoscloud'

# Setup authorization
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Ionoscloud::DefaultApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 0, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 1 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  #Display API information
  result = api_instance.api_info_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Exception when calling DefaultApi->api_info_get: #{e}"
end
```

### Authentication

The username and password or the authentication token can be manually specified when initializing the SDK client:

```ruby
Ionoscloud.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end
```

Environment variables can also be used for initialization. For example:

```ruby
Ionoscloud.configure do |config|
  config.username = ENV['IONOS_USERNAME']
  config.password = ENV['IONOS_PASSWORD']
  config.api_key['Authorization'] = ENV['IONOS_TOKEN']
end
```

{% hint style="danger" %}
**Warning**: Make sure to follow the Information Security Best Practices when using credentials within your code or storing them in a file.
{% endhint %}

### Depth

Many of the _List_ or _Get_ operations will accept an optional _depth_ argument. Setting this to a value between 0 and 5 affects the amount of data that is returned. The details returned vary depending on the resource being queried, but it generally follows this pattern.

| Depth | Description |
| :--- | :--- |
| 0 | Only direct properties are included. Children are not included. |
| 1 | Direct properties and children's references are returned. |
| 2 | Direct properties and children's properties are returned. |
| 3 | Direct properties, children's properties, and descendants' references are returned. |
| 4 | Direct properties, children's properties, and descendants' properties are returned. |
| 5 | Returns all available properties. |

### Pretty

The operations will also accept an optional _pretty_ argument. Setting this to a value of `true` or `false` controls whether the response is pretty-printed \(with indentation and new lines\). By default, the SDK sets the _pretty_ argument to `true`.

### Changing the base URL

Base URL for the HTTP operation can be changed in the following way:

```ruby
Ionoscloud.configure do |config|
  config.username = ENV['IONOS_USERNAME']
  config.password = ENV['IONOS_PASSWORD']

  # Configure the url used by the SDK
  config.host = 'https://api.ionos.com/cloudapi/v5'
  # This must be set as well because of the way the API works, otherwise the set url will not be used
  condif.server_index = nil
end
```

## Feature Reference

The IONOS Cloud SDK for Ruby aims to offer access to all resources in the IONOS Cloud API and also offers some additional features that make the integration easier:

* authentication for API calls
* handling of asynchronous requests 

## FAQ

1. How can I open a bug/feature request? 

Bugs & feature requests can be open on the repository issues: [https://github.com/ionos-cloud/sdk-ruby/issues/new/choose](https://github.com/ionos-cloud/sdk-ruby/issues/new/choose)

1. Can I contribute to the Ruby SDK?

Pure SDKs are automatically generated using OpenAPI Generator and don’t support manual changes. If you need changes please open an issue and we’ll try to take care of it.

