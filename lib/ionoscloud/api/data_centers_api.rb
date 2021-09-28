=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0-SDK.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class DataCentersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete data centers
    # Remove the specified data center and all the elements it contains. This is method is destructive and should be used carefully.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [nil]
    def datacenters_delete(datacenter_id, opts = {})
      datacenters_delete_with_http_info(datacenter_id, opts)
      nil
    end

    # Delete data centers
    # Remove the specified data center and all the elements it contains. This is method is destructive and should be used carefully.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def datacenters_delete_with_http_info(datacenter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataCentersApi.datacenters_delete ...'
      end
      # verify the required parameter 'datacenter_id' is set
      if @api_client.config.client_side_validation && datacenter_id.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter_id' when calling DataCentersApi.datacenters_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/datacenters/{datacenterId}'.sub('{' + 'datacenterId' + '}', CGI.escape(datacenter_id.to_s))

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
        :operation => :"DataCentersApi.datacenters_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataCentersApi#datacenters_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve data centers
    # Retrieve data centers by resource ID. This value is in the response body when the data center is created, and in the list of the data centers, returned by GET.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Datacenter]
    def datacenters_find_by_id(datacenter_id, opts = {})
      data, _status_code, _headers = datacenters_find_by_id_with_http_info(datacenter_id, opts)
      data
    end

    # Retrieve data centers
    # Retrieve data centers by resource ID. This value is in the response body when the data center is created, and in the list of the data centers, returned by GET.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(Datacenter, Integer, Hash)>] Datacenter data, response status code and response headers
    def datacenters_find_by_id_with_http_info(datacenter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataCentersApi.datacenters_find_by_id ...'
      end
      # verify the required parameter 'datacenter_id' is set
      if @api_client.config.client_side_validation && datacenter_id.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter_id' when calling DataCentersApi.datacenters_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/datacenters/{datacenterId}'.sub('{' + 'datacenterId' + '}', CGI.escape(datacenter_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Datacenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"DataCentersApi.datacenters_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataCentersApi#datacenters_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List your data centers
    # List the data centers for your account. Default limit is the first 100 items; use pagination query parameters for listing more items.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @option opts [Integer] :offset The first element (from the complete list of the elements) to include in the response (use together with limit for pagination). (default to 0)
    # @option opts [Integer] :limit The maximum number of elements to return (use together with offset for pagination). (default to 1000)
    # @return [Datacenters]
    def datacenters_get(opts = {})
      data, _status_code, _headers = datacenters_get_with_http_info(opts)
      data
    end

    # List your data centers
    # List the data centers for your account. Default limit is the first 100 items; use pagination query parameters for listing more items.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @option opts [Integer] :offset The first element (from the complete list of the elements) to include in the response (use together with limit for pagination).
    # @option opts [Integer] :limit The maximum number of elements to return (use together with offset for pagination).
    # @return [Array<(Datacenters, Integer, Hash)>] Datacenters data, response status code and response headers
    def datacenters_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataCentersApi.datacenters_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling DataCentersApi.datacenters_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DataCentersApi.datacenters_get, must be smaller than or equal to 10000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DataCentersApi.datacenters_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/datacenters'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
      return_type = opts[:debug_return_type] || 'Datacenters'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"DataCentersApi.datacenters_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataCentersApi#datacenters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially modify data centers
    # Update data centers, rename them, or change their descriptions.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param datacenter [DatacenterProperties] The modified properties of the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Datacenter]
    def datacenters_patch(datacenter_id, datacenter, opts = {})
      data, _status_code, _headers = datacenters_patch_with_http_info(datacenter_id, datacenter, opts)
      data
    end

    # Partially modify data centers
    # Update data centers, rename them, or change their descriptions.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param datacenter [DatacenterProperties] The modified properties of the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(Datacenter, Integer, Hash)>] Datacenter data, response status code and response headers
    def datacenters_patch_with_http_info(datacenter_id, datacenter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataCentersApi.datacenters_patch ...'
      end
      # verify the required parameter 'datacenter_id' is set
      if @api_client.config.client_side_validation && datacenter_id.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter_id' when calling DataCentersApi.datacenters_patch"
      end
      # verify the required parameter 'datacenter' is set
      if @api_client.config.client_side_validation && datacenter.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter' when calling DataCentersApi.datacenters_patch"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_patch, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_patch, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/datacenters/{datacenterId}'.sub('{' + 'datacenterId' + '}', CGI.escape(datacenter_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(datacenter)

      # return_type
      return_type = opts[:debug_return_type] || 'Datacenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"DataCentersApi.datacenters_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataCentersApi#datacenters_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create data centers
    # Create new data centers, and data centers that already contain elements, such as servers and storage volumes, with this POST method.  Virtual data centers are the foundation of the platform; they act as logical containers for all other objects you create, such as servers and storage volumes. You can provision as many data centers as needed. Data centers have their own private networks and are logically segmented from each other to create isolation.
    # @param datacenter [Datacenter] The data center to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Datacenter]
    def datacenters_post(datacenter, opts = {})
      data, _status_code, _headers = datacenters_post_with_http_info(datacenter, opts)
      data
    end

    # Create data centers
    # Create new data centers, and data centers that already contain elements, such as servers and storage volumes, with this POST method.  Virtual data centers are the foundation of the platform; they act as logical containers for all other objects you create, such as servers and storage volumes. You can provision as many data centers as needed. Data centers have their own private networks and are logically segmented from each other to create isolation.
    # @param datacenter [Datacenter] The data center to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(Datacenter, Integer, Hash)>] Datacenter data, response status code and response headers
    def datacenters_post_with_http_info(datacenter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataCentersApi.datacenters_post ...'
      end
      # verify the required parameter 'datacenter' is set
      if @api_client.config.client_side_validation && datacenter.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter' when calling DataCentersApi.datacenters_post"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_post, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_post, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/datacenters'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(datacenter)

      # return_type
      return_type = opts[:debug_return_type] || 'Datacenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"DataCentersApi.datacenters_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataCentersApi#datacenters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify data centers
    # Update data centers, rename them, or change their descriptions.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param datacenter [Datacenter] The modified data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Datacenter]
    def datacenters_put(datacenter_id, datacenter, opts = {})
      data, _status_code, _headers = datacenters_put_with_http_info(datacenter_id, datacenter, opts)
      data
    end

    # Modify data centers
    # Update data centers, rename them, or change their descriptions.
    # @param datacenter_id [String] The unique ID of the data center.
    # @param datacenter [Datacenter] The modified data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, against which all API requests are to be executed.
    # @return [Array<(Datacenter, Integer, Hash)>] Datacenter data, response status code and response headers
    def datacenters_put_with_http_info(datacenter_id, datacenter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DataCentersApi.datacenters_put ...'
      end
      # verify the required parameter 'datacenter_id' is set
      if @api_client.config.client_side_validation && datacenter_id.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter_id' when calling DataCentersApi.datacenters_put"
      end
      # verify the required parameter 'datacenter' is set
      if @api_client.config.client_side_validation && datacenter.nil?
        fail ArgumentError, "Missing the required parameter 'datacenter' when calling DataCentersApi.datacenters_put"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_put, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling DataCentersApi.datacenters_put, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/datacenters/{datacenterId}'.sub('{' + 'datacenterId' + '}', CGI.escape(datacenter_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(datacenter)

      # return_type
      return_type = opts[:debug_return_type] || 'Datacenter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"DataCentersApi.datacenters_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DataCentersApi#datacenters_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
