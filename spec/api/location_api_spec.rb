=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::LocationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LocationApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::LocationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocationApi' do
    it 'should create an instance of LocationApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::LocationApi)
    end
  end

  # unit tests for locations_find_by_region_id
  # List Locations within a region
  # Retrieve a list of Locations within a world&#39;s region
  # @param region_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Locations]
  describe 'locations_find_by_region_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for locations_find_by_region_id_and_id
  # Retrieve a Location
  # Retrieves the attributes of a given location
  # @param region_id 
  # @param location_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Location]
  describe 'locations_find_by_region_id_and_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for locations_get
  # List Locations
  # Retrieve a list of Locations. This list represents where you can provision your virtual data centers
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Locations]
  describe 'locations_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
