=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::NetworkInterfacesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkInterfacesApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::NetworkInterfacesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkInterfacesApi' do
    it 'should create an instance of NetworkInterfacesApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::NetworkInterfacesApi)
    end
  end

  # unit tests for datacenters_servers_nics_delete
  # Delete a Network Interface
  # Deletes the specified network interface.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param nic_id The unique ID of the NIC
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_nics_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_nics_find_by_id
  # Retrieve a Network Interface
  # Retrieves the attributes of a given network interface.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param nic_id The unique ID of the NIC
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Nic]
  describe 'datacenters_servers_nics_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_nics_get
  # List Network Interfaces
  # Retrieves a list of network interfaces.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with limit for pagination)
  # @option opts [Integer] :limit the maximum number of elements to return (use together with offset for pagination)
  # @return [Nics]
  describe 'datacenters_servers_nics_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_nics_patch
  # Partially Modify a Network Interface
  # You can use update attributes of a network interface.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param nic_id The unique ID of the NIC
  # @param nic Modified properties of Nic
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Nic]
  describe 'datacenters_servers_nics_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_nics_post
  # Create a Network Interface
  # Adds a network interface to the target server. Combined count of network interfaces and volumes attached to the server should not exceed size 24.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param nic Nic to be created
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Nic]
  describe 'datacenters_servers_nics_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_nics_put
  # Modify a Network Interface
  # You can use update attributes of a network interface.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param nic_id The unique ID of the NIC
  # @param nic Modified Nic
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Nic]
  describe 'datacenters_servers_nics_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
