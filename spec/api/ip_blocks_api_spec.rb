=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0-SDK.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::IPBlocksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IPBlocksApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::IPBlocksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IPBlocksApi' do
    it 'should create an instance of IPBlocksApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::IPBlocksApi)
    end
  end

  # unit tests for ipblocks_delete
  # Delete IP Block
  # Removes the specific IP Block.
  # @param ipblock_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [nil]
  describe 'ipblocks_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ipblocks_find_by_id
  # Retrieve an IP Block
  # Retrieves the attributes of a given IP Block.
  # @param ipblock_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [IpBlock]
  describe 'ipblocks_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ipblocks_get
  # List IP Blocks 
  # Retrieve a list of all reserved IP Blocks.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @option opts [Integer] :offset The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  # @option opts [Integer] :limit the maximum number of elements to return (use together with offset for pagination)
  # @return [IpBlocks]
  describe 'ipblocks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ipblocks_patch
  # Partially modify IP Block
  # You can use update attributes of a resource.
  # @param ipblock_id 
  # @param ipblock IP Block to be modified
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [IpBlock]
  describe 'ipblocks_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ipblocks_post
  # Reserve IP Block
  # This will reserve a new IP Block.
  # @param ipblock IP Block to be reserved
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [IpBlock]
  describe 'ipblocks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ipblocks_put
  # Modify IP Block
  # You can use update attributes of a resource.
  # @param ipblock_id 
  # @param ipblock IP Block to be modified
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [IpBlock]
  describe 'ipblocks_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
