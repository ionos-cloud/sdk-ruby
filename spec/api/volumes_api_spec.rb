=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0-SDK.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::VolumesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VolumesApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::VolumesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VolumesApi' do
    it 'should create an instance of VolumesApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::VolumesApi)
    end
  end

  # unit tests for datacenters_volumes_create_snapshot_post
  # Create Volume Snapshot
  # Creates a snapshot of a volume within the datacenter. You can use a snapshot to create a new storage volume or to restore a storage volume.
  # @param datacenter_id The unique ID of the data center.
  # @param volume_id The unique ID of the Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @option opts [String] :name The name of the snapshot
  # @option opts [String] :description The description of the snapshot
  # @option opts [Boolean] :sec_auth_protection Flag representing if extra protection is enabled on snapshot e.g. Two Factor protection etc.
  # @option opts [String] :licence_type The OS type of this Snapshot
  # @return [Snapshot]
  describe 'datacenters_volumes_create_snapshot_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_delete
  # Delete a Volume
  # Deletes the specified volume. This will result in the volume being removed from your datacenter. Use this with caution.
  # @param datacenter_id The unique ID of the data center.
  # @param volume_id The unique ID of the Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [nil]
  describe 'datacenters_volumes_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_find_by_id
  # Retrieve a Volume
  # Retrieves the attributes of a given Volume
  # @param datacenter_id The unique ID of the data center.
  # @param volume_id The unique ID of the Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [Volume]
  describe 'datacenters_volumes_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_get
  # List Volumes
  # Retrieves a list of Volumes.
  # @param datacenter_id The unique ID of the data center.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @option opts [Integer] :offset The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
  # @option opts [Integer] :limit The maximum number of elements to return (use together with offset for pagination).
  # @return [Volumes]
  describe 'datacenters_volumes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_patch
  # Partially modify a Volume
  # You can use update attributes of a volume.
  # @param datacenter_id The unique ID of the data center.
  # @param volume_id The unique ID of the Volume
  # @param volume Modified properties of Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [Volume]
  describe 'datacenters_volumes_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_post
  # Create a Volume
  # Creates a volume within the datacenter. This will not attach the volume to a server. Please see the Servers section for details on how to attach storage volumes
  # @param datacenter_id The unique ID of the data center.
  # @param volume Volume to be created
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [Volume]
  describe 'datacenters_volumes_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_put
  # Modify a Volume
  # You can use update attributes of a Volume
  # @param datacenter_id The unique ID of the data center.
  # @param volume_id The unique ID of the Volume
  # @param volume Modified Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @return [Volume]
  describe 'datacenters_volumes_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_volumes_restore_snapshot_post
  # Restore Volume Snapshot
  # This will restore a snapshot onto a volume. A snapshot is created as just another image that can be used to create subsequent volumes if you want or to restore an existing volume.
  # @param datacenter_id The unique ID of the data center.
  # @param volume_id The unique ID of the Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
  # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
  # @option opts [String] :snapshot_id This is the ID of the snapshot
  # @return [nil]
  describe 'datacenters_volumes_restore_snapshot_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
