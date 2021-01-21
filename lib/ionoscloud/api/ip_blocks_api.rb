=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class IPBlocksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete IP Block
    # Removes the specific IP Block
    # @param ipblock_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Object]
    def ipblocks_delete(ipblock_id, opts = {})
      data, _status_code, _headers = ipblocks_delete_with_http_info(ipblock_id, opts)
      data
    end

    # Delete IP Block
    # Removes the specific IP Block
    # @param ipblock_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def ipblocks_delete_with_http_info(ipblock_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPBlocksApi.ipblocks_delete ...'
      end
      # verify the required parameter 'ipblock_id' is set
      if @api_client.config.client_side_validation && ipblock_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock_id' when calling IPBlocksApi.ipblocks_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipblocks/{ipblockId}'.sub('{' + 'ipblockId' + '}', CGI.escape(ipblock_id.to_s))

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
        :operation => :"IPBlocksApi.ipblocks_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPBlocksApi#ipblocks_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an IP Block
    # Retrieves the attributes of a given IP Block.
    # @param ipblock_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [IpBlock]
    def ipblocks_find_by_id(ipblock_id, opts = {})
      data, _status_code, _headers = ipblocks_find_by_id_with_http_info(ipblock_id, opts)
      data
    end

    # Retrieve an IP Block
    # Retrieves the attributes of a given IP Block.
    # @param ipblock_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(IpBlock, Integer, Hash)>] IpBlock data, response status code and response headers
    def ipblocks_find_by_id_with_http_info(ipblock_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPBlocksApi.ipblocks_find_by_id ...'
      end
      # verify the required parameter 'ipblock_id' is set
      if @api_client.config.client_side_validation && ipblock_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock_id' when calling IPBlocksApi.ipblocks_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipblocks/{ipblockId}'.sub('{' + 'ipblockId' + '}', CGI.escape(ipblock_id.to_s))

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
      return_type = opts[:debug_return_type] || 'IpBlock'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"IPBlocksApi.ipblocks_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPBlocksApi#ipblocks_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List IP Blocks 
    # Retrieve a list of all reserved IP Blocks
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [IpBlocks]
    def ipblocks_get(opts = {})
      data, _status_code, _headers = ipblocks_get_with_http_info(opts)
      data
    end

    # List IP Blocks 
    # Retrieve a list of all reserved IP Blocks
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(IpBlocks, Integer, Hash)>] IpBlocks data, response status code and response headers
    def ipblocks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPBlocksApi.ipblocks_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipblocks'

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
      return_type = opts[:debug_return_type] || 'IpBlocks'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"IPBlocksApi.ipblocks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPBlocksApi#ipblocks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially modify IP Block
    # You can use update attributes of a resource
    # @param ipblock_id [String] 
    # @param ipblock [IpBlockProperties] IP Block to be modified
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [IpBlock]
    def ipblocks_patch(ipblock_id, ipblock, opts = {})
      data, _status_code, _headers = ipblocks_patch_with_http_info(ipblock_id, ipblock, opts)
      data
    end

    # Partially modify IP Block
    # You can use update attributes of a resource
    # @param ipblock_id [String] 
    # @param ipblock [IpBlockProperties] IP Block to be modified
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(IpBlock, Integer, Hash)>] IpBlock data, response status code and response headers
    def ipblocks_patch_with_http_info(ipblock_id, ipblock, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPBlocksApi.ipblocks_patch ...'
      end
      # verify the required parameter 'ipblock_id' is set
      if @api_client.config.client_side_validation && ipblock_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock_id' when calling IPBlocksApi.ipblocks_patch"
      end
      # verify the required parameter 'ipblock' is set
      if @api_client.config.client_side_validation && ipblock.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock' when calling IPBlocksApi.ipblocks_patch"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_patch, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_patch, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipblocks/{ipblockId}'.sub('{' + 'ipblockId' + '}', CGI.escape(ipblock_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ipblock)

      # return_type
      return_type = opts[:debug_return_type] || 'IpBlock'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"IPBlocksApi.ipblocks_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPBlocksApi#ipblocks_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reserve IP Block
    # This will reserve a new IP Block
    # @param ipblock [IpBlock] IP Block to be reserved
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [IpBlock]
    def ipblocks_post(ipblock, opts = {})
      data, _status_code, _headers = ipblocks_post_with_http_info(ipblock, opts)
      data
    end

    # Reserve IP Block
    # This will reserve a new IP Block
    # @param ipblock [IpBlock] IP Block to be reserved
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(IpBlock, Integer, Hash)>] IpBlock data, response status code and response headers
    def ipblocks_post_with_http_info(ipblock, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPBlocksApi.ipblocks_post ...'
      end
      # verify the required parameter 'ipblock' is set
      if @api_client.config.client_side_validation && ipblock.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock' when calling IPBlocksApi.ipblocks_post"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_post, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_post, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipblocks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ipblock)

      # return_type
      return_type = opts[:debug_return_type] || 'IpBlock'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"IPBlocksApi.ipblocks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPBlocksApi#ipblocks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify IP Block
    # You can use update attributes of a resource
    # @param ipblock_id [String] 
    # @param ipblock [IpBlock] IP Block to be modified
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [IpBlock]
    def ipblocks_put(ipblock_id, ipblock, opts = {})
      data, _status_code, _headers = ipblocks_put_with_http_info(ipblock_id, ipblock, opts)
      data
    end

    # Modify IP Block
    # You can use update attributes of a resource
    # @param ipblock_id [String] 
    # @param ipblock [IpBlock] IP Block to be modified
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(IpBlock, Integer, Hash)>] IpBlock data, response status code and response headers
    def ipblocks_put_with_http_info(ipblock_id, ipblock, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPBlocksApi.ipblocks_put ...'
      end
      # verify the required parameter 'ipblock_id' is set
      if @api_client.config.client_side_validation && ipblock_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock_id' when calling IPBlocksApi.ipblocks_put"
      end
      # verify the required parameter 'ipblock' is set
      if @api_client.config.client_side_validation && ipblock.nil?
        fail ArgumentError, "Missing the required parameter 'ipblock' when calling IPBlocksApi.ipblocks_put"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_put, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling IPBlocksApi.ipblocks_put, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ipblocks/{ipblockId}'.sub('{' + 'ipblockId' + '}', CGI.escape(ipblock_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ipblock)

      # return_type
      return_type = opts[:debug_return_type] || 'IpBlock'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"IPBlocksApi.ipblocks_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPBlocksApi#ipblocks_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
