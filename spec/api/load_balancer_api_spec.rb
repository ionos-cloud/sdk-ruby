=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::LoadBalancerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LoadBalancerApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::LoadBalancerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LoadBalancerApi' do
    it 'should create an instance of LoadBalancerApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::LoadBalancerApi)
    end
  end

  # unit tests for datacenters_loadbalancers_balancednics_delete
  # Detach a nic from loadbalancer
  # This will remove a nic from Load Balancer
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param nic_id The unique ID of the NIC
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_loadbalancers_balancednics_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_balancednics_find_by_nic_id
  # Retrieve a nic attached to Load Balancer
  # This will retrieve the properties of an attached nic.
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param nic_id The unique ID of the NIC
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Nic]
  describe 'datacenters_loadbalancers_balancednics_find_by_nic_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_balancednics_get
  # List Load Balancer Members 
  # You can retrieve a list of nics attached to a Load Balancer
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination)
  # @option opts [Integer] :limit the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination)
  # @return [BalancedNics]
  describe 'datacenters_loadbalancers_balancednics_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_balancednics_post
  # Attach a nic to Load Balancer
  # This will attach a pre-existing nic to a Load Balancer. 
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param nic Nic id to be attached
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Nic]
  describe 'datacenters_loadbalancers_balancednics_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_delete
  # Delete a Loadbalancer.
  # Removes the specific Loadbalancer
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_loadbalancers_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_find_by_id
  # Retrieve a loadbalancer
  # Retrieves the attributes of a given Loadbalancer
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Loadbalancer]
  describe 'datacenters_loadbalancers_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_get
  # List Load Balancers
  # Retrieve a list of Load Balancers within the datacenter
  # @param datacenter_id The unique ID of the datacenter
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination)
  # @option opts [Integer] :limit the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination)
  # @return [Loadbalancers]
  describe 'datacenters_loadbalancers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_patch
  # Partially modify a Loadbalancer
  # You can use update attributes of a resource
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param loadbalancer Modified Loadbalancer
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Loadbalancer]
  describe 'datacenters_loadbalancers_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_post
  # Create a Load Balancer
  # Creates a Loadbalancer within the datacenter
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer Loadbalancer to be created
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Loadbalancer]
  describe 'datacenters_loadbalancers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_loadbalancers_put
  # Modify a Load Balancer
  # You can use update attributes of a resource
  # @param datacenter_id The unique ID of the datacenter
  # @param loadbalancer_id The unique ID of the Load Balancer
  # @param loadbalancer Modified Loadbalancer
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Loadbalancer]
  describe 'datacenters_loadbalancers_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
