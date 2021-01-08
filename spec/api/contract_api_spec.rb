=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::ContractApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContractApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::ContractApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContractApi' do
    it 'should create an instance of ContractApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::ContractApi)
    end
  end

  # unit tests for contracts_get
  # Retrieve a Contract
  # Retrieves the attributes of user&#39;s contract.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Contract]
  describe 'contracts_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
