=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'cgi'

module Ionoscloud
  class SnapshotApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Snapshot
    # Deletes the specified Snapshot.
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Object]
    def snapshots_delete(snapshot_id, opts = {})
      data, _status_code, _headers = snapshots_delete_with_http_info(snapshot_id, opts)
      data
    end

    # Delete a Snapshot
    # Deletes the specified Snapshot.
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def snapshots_delete_with_http_info(snapshot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnapshotApi.snapshots_delete ...'
      end
      # verify the required parameter 'snapshot_id' is set
      if @api_client.config.client_side_validation && snapshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'snapshot_id' when calling SnapshotApi.snapshots_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/snapshots/{snapshotId}'.sub('{' + 'snapshotId' + '}', CGI.escape(snapshot_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"SnapshotApi.snapshots_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnapshotApi#snapshots_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Snapshot by its uuid.
    # Retrieves the attributes of a given Snapshot.
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Snapshot]
    def snapshots_find_by_id(snapshot_id, opts = {})
      data, _status_code, _headers = snapshots_find_by_id_with_http_info(snapshot_id, opts)
      data
    end

    # Retrieve a Snapshot by its uuid.
    # Retrieves the attributes of a given Snapshot.
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Snapshot, Integer, Hash)>] Snapshot data, response status code and response headers
    def snapshots_find_by_id_with_http_info(snapshot_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnapshotApi.snapshots_find_by_id ...'
      end
      # verify the required parameter 'snapshot_id' is set
      if @api_client.config.client_side_validation && snapshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'snapshot_id' when calling SnapshotApi.snapshots_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/snapshots/{snapshotId}'.sub('{' + 'snapshotId' + '}', CGI.escape(snapshot_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Snapshot'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"SnapshotApi.snapshots_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnapshotApi#snapshots_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Snapshots 
    # Retrieve a list of available snapshots.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Snapshots]
    def snapshots_get(opts = {})
      data, _status_code, _headers = snapshots_get_with_http_info(opts)
      data
    end

    # List Snapshots 
    # Retrieve a list of available snapshots.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Snapshots, Integer, Hash)>] Snapshots data, response status code and response headers
    def snapshots_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnapshotApi.snapshots_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/snapshots'

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
      return_type = opts[:debug_return_type] || 'Snapshots'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"SnapshotApi.snapshots_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnapshotApi#snapshots_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially modify a Snapshot
    # You can use this method to update attributes of a Snapshot.
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param snapshot [SnapshotProperties] Modified Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Snapshot]
    def snapshots_patch(snapshot_id, snapshot, opts = {})
      data, _status_code, _headers = snapshots_patch_with_http_info(snapshot_id, snapshot, opts)
      data
    end

    # Partially modify a Snapshot
    # You can use this method to update attributes of a Snapshot.
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param snapshot [SnapshotProperties] Modified Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Snapshot, Integer, Hash)>] Snapshot data, response status code and response headers
    def snapshots_patch_with_http_info(snapshot_id, snapshot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnapshotApi.snapshots_patch ...'
      end
      # verify the required parameter 'snapshot_id' is set
      if @api_client.config.client_side_validation && snapshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'snapshot_id' when calling SnapshotApi.snapshots_patch"
      end
      # verify the required parameter 'snapshot' is set
      if @api_client.config.client_side_validation && snapshot.nil?
        fail ArgumentError, "Missing the required parameter 'snapshot' when calling SnapshotApi.snapshots_patch"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_patch, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_patch, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/snapshots/{snapshotId}'.sub('{' + 'snapshotId' + '}', CGI.escape(snapshot_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(snapshot)

      # return_type
      return_type = opts[:debug_return_type] || 'Snapshot'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"SnapshotApi.snapshots_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnapshotApi#snapshots_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify a Snapshot
    # You can use update attributes of a resource
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param snapshot [Snapshot] Modified Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Snapshot]
    def snapshots_put(snapshot_id, snapshot, opts = {})
      data, _status_code, _headers = snapshots_put_with_http_info(snapshot_id, snapshot, opts)
      data
    end

    # Modify a Snapshot
    # You can use update attributes of a resource
    # @param snapshot_id [String] The unique ID of the Snapshot
    # @param snapshot [Snapshot] Modified Snapshot
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Snapshot, Integer, Hash)>] Snapshot data, response status code and response headers
    def snapshots_put_with_http_info(snapshot_id, snapshot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SnapshotApi.snapshots_put ...'
      end
      # verify the required parameter 'snapshot_id' is set
      if @api_client.config.client_side_validation && snapshot_id.nil?
        fail ArgumentError, "Missing the required parameter 'snapshot_id' when calling SnapshotApi.snapshots_put"
      end
      # verify the required parameter 'snapshot' is set
      if @api_client.config.client_side_validation && snapshot.nil?
        fail ArgumentError, "Missing the required parameter 'snapshot' when calling SnapshotApi.snapshots_put"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_put, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling SnapshotApi.snapshots_put, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/snapshots/{snapshotId}'.sub('{' + 'snapshotId' + '}', CGI.escape(snapshot_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(snapshot)

      # return_type
      return_type = opts[:debug_return_type] || 'Snapshot'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"SnapshotApi.snapshots_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SnapshotApi#snapshots_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
