=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Ionoscloud::ServerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ServerApi' do
  before do
    # run before each test
    @api_instance = Ionoscloud::ServerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServerApi' do
    it 'should create an instance of ServerApi' do
      expect(@api_instance).to be_instance_of(Ionoscloud::ServerApi)
    end
  end

  # unit tests for datacenters_servers_cdroms_delete
  # Detach a CD-ROM
  # This will detach a CD-ROM from the server
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param cdrom_id The unique ID of the CD-ROM
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_cdroms_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_cdroms_find_by_id
  # Retrieve an attached CD-ROM
  # You can retrieve a specific CD-ROM attached to the server
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param cdrom_id The unique ID of the CD-ROM
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Image]
  describe 'datacenters_servers_cdroms_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_cdroms_get
  # List attached CD-ROMs 
  # You can retrieve a list of CD-ROMs attached to the server.
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination)
  # @option opts [Integer] :limit the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination)
  # @return [Cdroms]
  describe 'datacenters_servers_cdroms_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_cdroms_post
  # Attach a CD-ROM
  # You can attach a CD-ROM to an existing server. You can attach up to 2 CD-ROMs to one server. 
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param cdrom CD-ROM to be attached
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Image]
  describe 'datacenters_servers_cdroms_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_delete
  # Delete a Server
  # This will remove a server from your datacenter; however, it will not remove the storage volumes attached to the server. You will need to make a separate API call to perform that action
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_find_by_id
  # Retrieve a Server
  # Returns information about a server such as its configuration, provisioning status, etc.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Server]
  describe 'datacenters_servers_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_get
  # List Servers 
  # You can retrieve a list of servers within a datacenter
  # @param datacenter_id The unique ID of the datacenter
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Boolean] :upgrade_needed It can be used to filter which servers can be upgraded which can not be upgraded.
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination)
  # @option opts [Integer] :limit the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination)
  # @return [Servers]
  describe 'datacenters_servers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_patch
  # Partially modify a Server
  # You can use update attributes of a server
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the server
  # @param server Modified properties of Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Server]
  describe 'datacenters_servers_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_post
  # Create a Server
  # Creates a server within an existing datacenter. You can configure the boot volume and connect the server to an existing LAN.
  # @param datacenter_id The unique ID of the datacenter
  # @param server Server to be created
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Server]
  describe 'datacenters_servers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_put
  # Modify a Server
  # Allows to modify the attributes of a Server. From v5 onwards &#39;allowReboot&#39; attribute will no longer be available. For certain server property change it was earlier forced to be provided. Now this behaviour is implicit and backend will do this automatically e.g. in earlier versions, when CPU family changes, the &#39;allowReboot&#39; property was required to be set to true which will no longer be the case and the server will be rebooted automatically
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the server
  # @param server Modified Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Server]
  describe 'datacenters_servers_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_reboot_post
  # Reboot a Server
  # This will force a hard reboot of the server. Do not use this method if you want to gracefully reboot the machine. This is the equivalent of powering off the machine and turning it back on.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_reboot_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_start_post
  # Start a Server
  # This will start a server. If the server&#39;s public IP was deallocated then a new IP will be assigned
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_start_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_stop_post
  # Stop a Server
  # This will stop a server. The machine will be forcefully powered off, billing will cease, and the public IP, if one is allocated, will be deallocated. The operation is not supported for Cube servers.
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_stop_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_upgrade_post
  # Upgrade a Server
  # This will upgrade the version of the server, if needed. To verify if there is an upgrade available for a server, call &#39;/datacenters/{datacenterId}/servers?upgradeNeeded&#x3D;true&#39;
  # @param datacenter_id The unique ID of the datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_upgrade_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_volumes_delete
  # Detach a volume
  # This will detach the volume from the server. This will not delete the volume from your datacenter. You will need to make a separate request to perform a deletion
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param volume_id The unique ID of the Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Object]
  describe 'datacenters_servers_volumes_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_volumes_find_by_id
  # Retrieve an attached volume
  # This will retrieve the properties of an attached volume.
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param volume_id The unique ID of the Volume
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Volume]
  describe 'datacenters_servers_volumes_find_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_volumes_get
  # List Attached Volumes
  # You can retrieve a list of volumes attached to the server
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with &lt;code&gt;limit&lt;/code&gt; for pagination)
  # @option opts [Integer] :limit the maximum number of elements to return (use together with &lt;code&gt;offset&lt;/code&gt; for pagination)
  # @return [AttachedVolumes]
  describe 'datacenters_servers_volumes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for datacenters_servers_volumes_post
  # Attach a volume
  # This will attach a pre-existing storage volume to the server. It is also possible to create and attach a volume in one step just by providing a new volume description as payload. Combine count of Nics and volumes attached to the server should not exceed size 24.
  # @param datacenter_id The unique ID of the Datacenter
  # @param server_id The unique ID of the Server
  # @param volume Volume to be attached (created and attached)
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
  # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
  # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
  # @return [Volume]
  describe 'datacenters_servers_volumes_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
