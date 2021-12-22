=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class BackupUnitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete backup units
    # Remove the specified backup unit.  This process will delete: 1) The backup plans inside the backup unit 2) All backups, associated with this backup unit 3) The backup user 4) The backup unit itself
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [nil]
    def backupunits_delete(backupunit_id, opts = {})
      backupunits_delete_with_http_info(backupunit_id, opts)
      nil
    end

    # Delete backup units
    # Remove the specified backup unit.  This process will delete: 1) The backup plans inside the backup unit 2) All backups, associated with this backup unit 3) The backup user 4) The backup unit itself
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def backupunits_delete_with_http_info(backupunit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_delete ...'
      end
      # verify the required parameter 'backupunit_id' is set
      if @api_client.config.client_side_validation && backupunit_id.nil?
        fail ArgumentError, "Missing the required parameter 'backupunit_id' when calling BackupUnitsApi.backupunits_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/backupunits/{backupunitId}'.sub('{' + 'backupunitId' + '}', CGI.escape(backupunit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve backup units
    # Retrieve the properties of the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [BackupUnit]
    def backupunits_find_by_id(backupunit_id, opts = {})
      data, _status_code, _headers = backupunits_find_by_id_with_http_info(backupunit_id, opts)
      data
    end

    # Retrieve backup units
    # Retrieve the properties of the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(BackupUnit, Integer, Hash)>] BackupUnit data, response status code and response headers
    def backupunits_find_by_id_with_http_info(backupunit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_find_by_id ...'
      end
      # verify the required parameter 'backupunit_id' is set
      if @api_client.config.client_side_validation && backupunit_id.nil?
        fail ArgumentError, "Missing the required parameter 'backupunit_id' when calling BackupUnitsApi.backupunits_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/backupunits/{backupunitId}'.sub('{' + 'backupunitId' + '}', CGI.escape(backupunit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupUnit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List backup units
    # List all available backup units.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [BackupUnits]
    def backupunits_get(opts = {})
      data, _status_code, _headers = backupunits_get_with_http_info(opts)
      data
    end

    # List backup units
    # List all available backup units.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(BackupUnits, Integer, Hash)>] BackupUnits data, response status code and response headers
    def backupunits_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/backupunits'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupUnits'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially modify backup units
    # Update the properties of the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param backup_unit [BackupUnitProperties] The properties of the backup unit to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [BackupUnit]
    def backupunits_patch(backupunit_id, backup_unit, opts = {})
      data, _status_code, _headers = backupunits_patch_with_http_info(backupunit_id, backup_unit, opts)
      data
    end

    # Partially modify backup units
    # Update the properties of the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param backup_unit [BackupUnitProperties] The properties of the backup unit to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(BackupUnit, Integer, Hash)>] BackupUnit data, response status code and response headers
    def backupunits_patch_with_http_info(backupunit_id, backup_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_patch ...'
      end
      # verify the required parameter 'backupunit_id' is set
      if @api_client.config.client_side_validation && backupunit_id.nil?
        fail ArgumentError, "Missing the required parameter 'backupunit_id' when calling BackupUnitsApi.backupunits_patch"
      end
      # verify the required parameter 'backup_unit' is set
      if @api_client.config.client_side_validation && backup_unit.nil?
        fail ArgumentError, "Missing the required parameter 'backup_unit' when calling BackupUnitsApi.backupunits_patch"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_patch, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_patch, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/backupunits/{backupunitId}'.sub('{' + 'backupunitId' + '}', CGI.escape(backupunit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(backup_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'BackupUnit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create backup units
    # Create a backup unit. Backup units are resources, same as storage volumes or snapshots; they can be shared through groups in User management. 
    # @param backup_unit [BackupUnit] The backup unit to create.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [BackupUnit]
    def backupunits_post(backup_unit, opts = {})
      data, _status_code, _headers = backupunits_post_with_http_info(backup_unit, opts)
      data
    end

    # Create backup units
    # Create a backup unit. Backup units are resources, same as storage volumes or snapshots; they can be shared through groups in User management. 
    # @param backup_unit [BackupUnit] The backup unit to create.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(BackupUnit, Integer, Hash)>] BackupUnit data, response status code and response headers
    def backupunits_post_with_http_info(backup_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_post ...'
      end
      # verify the required parameter 'backup_unit' is set
      if @api_client.config.client_side_validation && backup_unit.nil?
        fail ArgumentError, "Missing the required parameter 'backup_unit' when calling BackupUnitsApi.backupunits_post"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_post, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_post, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/backupunits'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(backup_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'BackupUnit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify backup units
    # Modify the properties of the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param backup_unit [BackupUnit] The modified backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [BackupUnit]
    def backupunits_put(backupunit_id, backup_unit, opts = {})
      data, _status_code, _headers = backupunits_put_with_http_info(backupunit_id, backup_unit, opts)
      data
    end

    # Modify backup units
    # Modify the properties of the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param backup_unit [BackupUnit] The modified backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(BackupUnit, Integer, Hash)>] BackupUnit data, response status code and response headers
    def backupunits_put_with_http_info(backupunit_id, backup_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_put ...'
      end
      # verify the required parameter 'backupunit_id' is set
      if @api_client.config.client_side_validation && backupunit_id.nil?
        fail ArgumentError, "Missing the required parameter 'backupunit_id' when calling BackupUnitsApi.backupunits_put"
      end
      # verify the required parameter 'backup_unit' is set
      if @api_client.config.client_side_validation && backup_unit.nil?
        fail ArgumentError, "Missing the required parameter 'backup_unit' when calling BackupUnitsApi.backupunits_put"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_put, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling BackupUnitsApi.backupunits_put, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/backupunits/{backupunitId}'.sub('{' + 'backupunitId' + '}', CGI.escape(backupunit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(backup_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'BackupUnit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve BU single sign-on URLs
    # Retrieve a single sign-on URL for the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [BackupUnitSSO]
    def backupunits_ssourl_get(backupunit_id, opts = {})
      data, _status_code, _headers = backupunits_ssourl_get_with_http_info(backupunit_id, opts)
      data
    end

    # Retrieve BU single sign-on URLs
    # Retrieve a single sign-on URL for the specified backup unit.
    # @param backupunit_id [String] The unique ID of the backup unit.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(BackupUnitSSO, Integer, Hash)>] BackupUnitSSO data, response status code and response headers
    def backupunits_ssourl_get_with_http_info(backupunit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BackupUnitsApi.backupunits_ssourl_get ...'
      end
      # verify the required parameter 'backupunit_id' is set
      if @api_client.config.client_side_validation && backupunit_id.nil?
        fail ArgumentError, "Missing the required parameter 'backupunit_id' when calling BackupUnitsApi.backupunits_ssourl_get"
      end
      # resource path
      local_var_path = '/backupunits/{backupunitId}/ssourl'.sub('{' + 'backupunitId' + '}', CGI.escape(backupunit_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Contract-Number'] = opts[:'x_contract_number'] if !opts[:'x_contract_number'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BackupUnitSSO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"BackupUnitsApi.backupunits_ssourl_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BackupUnitsApi#backupunits_ssourl_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
