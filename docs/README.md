# Introduction
![CI](https://github.com/ionos-cloud/sdk-resources/workflows/CI/badge.svg)

![Gem Version](https://rubygems.org/gems/ionoscloud)
![CI](https://github.com/ionos-cloud/sdk-resources/workflows/CI/badge.svg)

https://badge.fury.io/rb/ionoscloud.png
## Overview

The IONOS Cloud SDK for Ruby provides you with access to the IONOS Cloud API. The client library supports both simple and complex requests. It is designed for developers who are building applications in Ruby. The SDK for Ruby wraps the IONOS Cloud API. All API operations are performed over SSL and authenticated using your IONOS Cloud portal credentials. The API can be accessed within an instance running in IONOS Cloud or directly over the Internet from any application that can send an HTTPS request and receive an HTTPS response.

## Getting Started

### Instalation

### 1. Build a gem

To build the Ruby code into a gem:

```shell
gem build ionoscloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./ionoscloud-<gem-version>.gem
```

(for development, run `gem install --dev ./ionoscloud-<gem-version>.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ionoscloud', '~> <gem-version>'

### 2. Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/ionos-cloud/sdk-ruby, then add the following in the Gemfile:

    gem 'ionoscloud', :git => 'https://github.com/ionos-cloud/sdk-ruby.git'

### 3. Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

### 4. Install from RubyGems

Just add this to the Gemfile:

    gem 'ionoscloud', '~> <gem-version>'


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
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  #Display API information
  result = api_instance.api_info_get(opts)
  p result
rescue Ionoscloud::ApiError => e
  puts "Exception when calling DefaultApi->api_info_get: #{e}"
end

```

## Feature Reference

The IONOS Cloud SDK for Ruby aims to offer access to all resources in the IONOS Cloud API and also offers some additional features that make the integration easier:

* authentication for API calls
* handling of asynchronous requests 

## FAQ

1. How can I open a bug/feature request? 

Bugs & feature requests can be open on the repository issues: [https://github.com/ionos-cloud/sdk-ruby/issues/new/choose](https://github.com/ionos-cloud/sdk-ruby/issues/new/choose)

2. Can I contribute to the Ruby SDK?

Pure SDKs are automatically generated using OpenAPI Generator and don’t support manual changes. If you need changes please open an issue and we’ll try to take care of it.

