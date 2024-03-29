=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class UserS3KeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete S3 keys
    # Delete the specified user S3 key.
    # @param user_id [String] The unique ID of the user.
    # @param key_id [String] The unique ID of the S3 key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [nil]
    def um_users_s3keys_delete(user_id, key_id, opts = {})
      um_users_s3keys_delete_with_http_info(user_id, key_id, opts)
      nil
    end

    # Delete S3 keys
    # Delete the specified user S3 key.
    # @param user_id [String] The unique ID of the user.
    # @param key_id [String] The unique ID of the S3 key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def um_users_s3keys_delete_with_http_info(user_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserS3KeysApi.um_users_s3keys_delete ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserS3KeysApi.um_users_s3keys_delete"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling UserS3KeysApi.um_users_s3keys_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/um/users/{userId}/s3keys/{keyId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

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
        :operation => :"UserS3KeysApi.um_users_s3keys_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserS3KeysApi#um_users_s3keys_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve user S3 keys by key ID
    # Retrieve the specified user S3 key. The user ID is in the response body when the user is created, and in the list of the users, returned by GET. The key ID is in the response body when the S3 key is created, and in the list of all user S3 keys, returned by GET.
    # @param user_id [String] The unique ID of the user.
    # @param key_id [String] The unique ID of the S3 key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [S3Key]
    def um_users_s3keys_find_by_key_id(user_id, key_id, opts = {})
      data, _status_code, _headers = um_users_s3keys_find_by_key_id_with_http_info(user_id, key_id, opts)
      data
    end

    # Retrieve user S3 keys by key ID
    # Retrieve the specified user S3 key. The user ID is in the response body when the user is created, and in the list of the users, returned by GET. The key ID is in the response body when the S3 key is created, and in the list of all user S3 keys, returned by GET.
    # @param user_id [String] The unique ID of the user.
    # @param key_id [String] The unique ID of the S3 key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(S3Key, Integer, Hash)>] S3Key data, response status code and response headers
    def um_users_s3keys_find_by_key_id_with_http_info(user_id, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserS3KeysApi.um_users_s3keys_find_by_key_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserS3KeysApi.um_users_s3keys_find_by_key_id"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling UserS3KeysApi.um_users_s3keys_find_by_key_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_find_by_key_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_find_by_key_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/um/users/{userId}/s3keys/{keyId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'S3Key'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"UserS3KeysApi.um_users_s3keys_find_by_key_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserS3KeysApi#um_users_s3keys_find_by_key_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List user S3 keys
    # List S3 keys by user ID. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.
    # @param user_id [String] The unique ID of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [S3Keys]
    def um_users_s3keys_get(user_id, opts = {})
      data, _status_code, _headers = um_users_s3keys_get_with_http_info(user_id, opts)
      data
    end

    # List user S3 keys
    # List S3 keys by user ID. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.
    # @param user_id [String] The unique ID of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(S3Keys, Integer, Hash)>] S3Keys data, response status code and response headers
    def um_users_s3keys_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserS3KeysApi.um_users_s3keys_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserS3KeysApi.um_users_s3keys_get"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/um/users/{userId}/s3keys'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'S3Keys'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"UserS3KeysApi.um_users_s3keys_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserS3KeysApi#um_users_s3keys_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create user S3 keys
    # Create an S3 key for the specified user. The user ID is in the response body when the user is created, and in the list of the users, returned by GET. A maximum of five keys per user can be generated.
    # @param user_id [String] The unique ID of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [S3Key]
    def um_users_s3keys_post(user_id, opts = {})
      data, _status_code, _headers = um_users_s3keys_post_with_http_info(user_id, opts)
      data
    end

    # Create user S3 keys
    # Create an S3 key for the specified user. The user ID is in the response body when the user is created, and in the list of the users, returned by GET. A maximum of five keys per user can be generated.
    # @param user_id [String] The unique ID of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(S3Key, Integer, Hash)>] S3Key data, response status code and response headers
    def um_users_s3keys_post_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserS3KeysApi.um_users_s3keys_post ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserS3KeysApi.um_users_s3keys_post"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_post, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_post, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/um/users/{userId}/s3keys'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'S3Key'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"UserS3KeysApi.um_users_s3keys_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserS3KeysApi#um_users_s3keys_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify a S3 Key by Key ID
    # Enables or disables the specified user S3 key.
    # @param user_id [String] The unique ID of the user.
    # @param key_id [String] The unique ID of the S3 key.
    # @param s3_key [S3Key] The modified S3 key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [S3Key]
    def um_users_s3keys_put(user_id, key_id, s3_key, opts = {})
      data, _status_code, _headers = um_users_s3keys_put_with_http_info(user_id, key_id, s3_key, opts)
      data
    end

    # Modify a S3 Key by Key ID
    # Enables or disables the specified user S3 key.
    # @param user_id [String] The unique ID of the user.
    # @param key_id [String] The unique ID of the S3 key.
    # @param s3_key [S3Key] The modified S3 key.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(S3Key, Integer, Hash)>] S3Key data, response status code and response headers
    def um_users_s3keys_put_with_http_info(user_id, key_id, s3_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserS3KeysApi.um_users_s3keys_put ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserS3KeysApi.um_users_s3keys_put"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling UserS3KeysApi.um_users_s3keys_put"
      end
      # verify the required parameter 's3_key' is set
      if @api_client.config.client_side_validation && s3_key.nil?
        fail ArgumentError, "Missing the required parameter 's3_key' when calling UserS3KeysApi.um_users_s3keys_put"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_put, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling UserS3KeysApi.um_users_s3keys_put, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/um/users/{userId}/s3keys/{keyId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(s3_key)

      # return_type
      return_type = opts[:debug_return_type] || 'S3Key'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"UserS3KeysApi.um_users_s3keys_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserS3KeysApi#um_users_s3keys_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve S3 single sign-on URLs
    # Retrieve S3 Object Storage single sign-on URLs for the the specified user. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.
    # @param user_id [String] The unique ID of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [S3ObjectStorageSSO]
    def um_users_s3ssourl_get(user_id, opts = {})
      data, _status_code, _headers = um_users_s3ssourl_get_with_http_info(user_id, opts)
      data
    end

    # Retrieve S3 single sign-on URLs
    # Retrieve S3 Object Storage single sign-on URLs for the the specified user. The user ID is in the response body when the user is created, and in the list of the users, returned by GET.
    # @param user_id [String] The unique ID of the user.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(S3ObjectStorageSSO, Integer, Hash)>] S3ObjectStorageSSO data, response status code and response headers
    def um_users_s3ssourl_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserS3KeysApi.um_users_s3ssourl_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserS3KeysApi.um_users_s3ssourl_get"
      end
      # resource path
      local_var_path = '/um/users/{userId}/s3ssourl'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'S3ObjectStorageSSO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"UserS3KeysApi.um_users_s3ssourl_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserS3KeysApi#um_users_s3ssourl_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
