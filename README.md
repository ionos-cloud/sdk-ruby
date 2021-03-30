
![CI](https://github.com/ionos-cloud/sdk-resources/workflows/CI/badge.svg)
[![Gem Version](https://img.shields.io/gem/v/ionoscloud)](https://rubygems.org/gems/ionoscloud) 
[![Gitter](https://badges.gitter.im/ionos-cloud/sdk-general.png)](https://gitter.im/ionos-cloud/sdk-general)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=ionos-cloud_sdk-ruby&metric=alert_status)](https://sonarcloud.io/dashboard?id=ionos-cloud_sdk-ruby)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=ionos-cloud_sdk-ruby&metric=bugs)](https://sonarcloud.io/dashboard?id=ionos-cloud_sdk-ruby)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=ionos-cloud_sdk-ruby&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=ionos-cloud_sdk-ruby)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=ionos-cloud_sdk-ruby&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=ionos-cloud_sdk-ruby)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=ionos-cloud_sdk-ruby&metric=security_rating)](https://sonarcloud.io/dashboard?id=ionos-cloud_sdk-ruby)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=ionos-cloud_sdk-ruby&metric=vulnerabilities)](https://sonarcloud.io/dashboard?id=ionos-cloud_sdk-ruby)

# Ruby API Client For IONOS Cloud

An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API. 

The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 5.0
- Package version: 5.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ionoscloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./ionoscloud-5.0.0.gem
```

(for development, run `gem install --dev ./ionoscloud-5.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ionoscloud', '~> 5.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/ionos-cloud/sdk-ruby, then add the following in the Gemfile:

    gem 'ionoscloud', :git => 'https://github.com/ionos-cloud/sdk-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Our latest, most up to date usage documentation is available [here](https://docs.ionos.com/ruby-sdk/)
