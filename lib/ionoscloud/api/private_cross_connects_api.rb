=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class PrivateCrossConnectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete private Cross-Connects
    # Remove the specified private Cross-Connect (only if not connected to any data centers).
    # @param pcc_id [String] The unique ID of the private Cross-Connect.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [nil]
    def pccs_delete(pcc_id, opts = {})
      pccs_delete_with_http_info(pcc_id, opts)
      nil
    end

    # Delete private Cross-Connects
    # Remove the specified private Cross-Connect (only if not connected to any data centers).
    # @param pcc_id [String] The unique ID of the private Cross-Connect.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def pccs_delete_with_http_info(pcc_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateCrossConnectsApi.pccs_delete ...'
      end
      # verify the required parameter 'pcc_id' is set
      if @api_client.config.client_side_validation && pcc_id.nil?
        fail ArgumentError, "Missing the required parameter 'pcc_id' when calling PrivateCrossConnectsApi.pccs_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pccs/{pccId}'.sub('{' + 'pccId' + '}', CGI.escape(pcc_id.to_s))

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
        :operation => :"PrivateCrossConnectsApi.pccs_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateCrossConnectsApi#pccs_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve private Cross-Connects
    # Retrieve a private Cross-Connect by the resource ID. Cross-Connect ID is in the response body when the private Cross-Connect is created, and in the list of private Cross-Connects, returned by GET.
    # @param pcc_id [String] The unique ID of the private Cross-Connect.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [PrivateCrossConnect]
    def pccs_find_by_id(pcc_id, opts = {})
      data, _status_code, _headers = pccs_find_by_id_with_http_info(pcc_id, opts)
      data
    end

    # Retrieve private Cross-Connects
    # Retrieve a private Cross-Connect by the resource ID. Cross-Connect ID is in the response body when the private Cross-Connect is created, and in the list of private Cross-Connects, returned by GET.
    # @param pcc_id [String] The unique ID of the private Cross-Connect.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(PrivateCrossConnect, Integer, Hash)>] PrivateCrossConnect data, response status code and response headers
    def pccs_find_by_id_with_http_info(pcc_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateCrossConnectsApi.pccs_find_by_id ...'
      end
      # verify the required parameter 'pcc_id' is set
      if @api_client.config.client_side_validation && pcc_id.nil?
        fail ArgumentError, "Missing the required parameter 'pcc_id' when calling PrivateCrossConnectsApi.pccs_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pccs/{pccId}'.sub('{' + 'pccId' + '}', CGI.escape(pcc_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PrivateCrossConnect'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"PrivateCrossConnectsApi.pccs_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateCrossConnectsApi#pccs_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List private Cross-Connects
    # List all private Cross-Connects for your account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [PrivateCrossConnects]
    def pccs_get(opts = {})
      data, _status_code, _headers = pccs_get_with_http_info(opts)
      data
    end

    # List private Cross-Connects
    # List all private Cross-Connects for your account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(PrivateCrossConnects, Integer, Hash)>] PrivateCrossConnects data, response status code and response headers
    def pccs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateCrossConnectsApi.pccs_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pccs'

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
      return_type = opts[:debug_return_type] || 'PrivateCrossConnects'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"PrivateCrossConnectsApi.pccs_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateCrossConnectsApi#pccs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially modify private Cross-Connects
    # Update the properties of the specified private Cross-Connect.
    # @param pcc_id [String] The unique ID of the private Cross-Connect.
    # @param pcc [PrivateCrossConnectProperties] The properties of the private Cross-Connect to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [PrivateCrossConnect]
    def pccs_patch(pcc_id, pcc, opts = {})
      data, _status_code, _headers = pccs_patch_with_http_info(pcc_id, pcc, opts)
      data
    end

    # Partially modify private Cross-Connects
    # Update the properties of the specified private Cross-Connect.
    # @param pcc_id [String] The unique ID of the private Cross-Connect.
    # @param pcc [PrivateCrossConnectProperties] The properties of the private Cross-Connect to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(PrivateCrossConnect, Integer, Hash)>] PrivateCrossConnect data, response status code and response headers
    def pccs_patch_with_http_info(pcc_id, pcc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateCrossConnectsApi.pccs_patch ...'
      end
      # verify the required parameter 'pcc_id' is set
      if @api_client.config.client_side_validation && pcc_id.nil?
        fail ArgumentError, "Missing the required parameter 'pcc_id' when calling PrivateCrossConnectsApi.pccs_patch"
      end
      # verify the required parameter 'pcc' is set
      if @api_client.config.client_side_validation && pcc.nil?
        fail ArgumentError, "Missing the required parameter 'pcc' when calling PrivateCrossConnectsApi.pccs_patch"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_patch, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_patch, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pccs/{pccId}'.sub('{' + 'pccId' + '}', CGI.escape(pcc_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pcc)

      # return_type
      return_type = opts[:debug_return_type] || 'PrivateCrossConnect'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"PrivateCrossConnectsApi.pccs_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateCrossConnectsApi#pccs_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create private Cross-Connects
    # Create a private Cross-Connect.
    # @param pcc [PrivateCrossConnect] The private Cross-Connect to create.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [PrivateCrossConnect]
    def pccs_post(pcc, opts = {})
      data, _status_code, _headers = pccs_post_with_http_info(pcc, opts)
      data
    end

    # Create private Cross-Connects
    # Create a private Cross-Connect.
    # @param pcc [PrivateCrossConnect] The private Cross-Connect to create.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(PrivateCrossConnect, Integer, Hash)>] PrivateCrossConnect data, response status code and response headers
    def pccs_post_with_http_info(pcc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateCrossConnectsApi.pccs_post ...'
      end
      # verify the required parameter 'pcc' is set
      if @api_client.config.client_side_validation && pcc.nil?
        fail ArgumentError, "Missing the required parameter 'pcc' when calling PrivateCrossConnectsApi.pccs_post"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_post, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling PrivateCrossConnectsApi.pccs_post, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/pccs'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pcc)

      # return_type
      return_type = opts[:debug_return_type] || 'PrivateCrossConnect'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"PrivateCrossConnectsApi.pccs_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateCrossConnectsApi#pccs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
