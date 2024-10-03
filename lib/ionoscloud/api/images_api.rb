=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class ImagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete images
    # Delete the specified image; this operation is only supported for private images.
    # @param image_id [String] The unique ID of the image.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [nil]
    def images_delete(image_id, opts = {})
      images_delete_with_http_info(image_id, opts)
      nil
    end

    # Delete images
    # Delete the specified image; this operation is only supported for private images.
    # @param image_id [String] The unique ID of the image.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def images_delete_with_http_info(image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.images_delete ...'
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling ImagesApi.images_delete"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_delete, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_delete, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/images/{imageId}'.sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
        :operation => :"ImagesApi.images_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve images
    # Retrieve the properties of the specified image.
    # @param image_id [String] The unique ID of the image.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Image]
    def images_find_by_id(image_id, opts = {})
      data, _status_code, _headers = images_find_by_id_with_http_info(image_id, opts)
      data
    end

    # Retrieve images
    # Retrieve the properties of the specified image.
    # @param image_id [String] The unique ID of the image.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def images_find_by_id_with_http_info(image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.images_find_by_id ...'
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling ImagesApi.images_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/images/{imageId}'.sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"ImagesApi.images_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List images
    # List all the images within the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Images]
    def images_get(opts = {})
      data, _status_code, _headers = images_get_with_http_info(opts)
      data
    end

    # List images
    # List all the images within the data center.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(Images, Integer, Hash)>] Images data, response status code and response headers
    def images_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.images_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/images'

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
      return_type = opts[:debug_return_type] || 'Images'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"ImagesApi.images_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Partially modify images
    # Update the properties of the specified image.
    # @param image_id [String] The unique ID of the image.
    # @param image [ImageProperties] The image properties to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Image]
    def images_patch(image_id, image, opts = {})
      data, _status_code, _headers = images_patch_with_http_info(image_id, image, opts)
      data
    end

    # Partially modify images
    # Update the properties of the specified image.
    # @param image_id [String] The unique ID of the image.
    # @param image [ImageProperties] The image properties to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def images_patch_with_http_info(image_id, image, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.images_patch ...'
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling ImagesApi.images_patch"
      end
      # verify the required parameter 'image' is set
      if @api_client.config.client_side_validation && image.nil?
        fail ArgumentError, "Missing the required parameter 'image' when calling ImagesApi.images_patch"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_patch, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_patch, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/images/{imageId}'.sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(image)

      # return_type
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"ImagesApi.images_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify an Image by ID
    # Modifies the properties of the specified image.
    # @param image_id [String] The unique ID of the image.
    # @param image [Image] The modified image
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines). (default to true)
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Image]
    def images_put(image_id, image, opts = {})
      data, _status_code, _headers = images_put_with_http_info(image_id, image, opts)
      data
    end

    # Modify an Image by ID
    # Modifies the properties of the specified image.
    # @param image_id [String] The unique ID of the image.
    # @param image [Image] The modified image
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether the response is pretty-printed (with indentations and new lines).
    # @option opts [Integer] :depth Controls the detail depth of the response objects.  GET /datacenters/[ID]  - depth&#x3D;0: Only direct properties are included; children (servers and other elements) are not included.  - depth&#x3D;1: Direct properties and children references are included.  - depth&#x3D;2: Direct properties and children properties are included.  - depth&#x3D;3: Direct properties and children properties and children&#39;s children are included.  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users with multiple contracts must provide the contract number, for which all API requests are to be executed.
    # @return [Array<(Image, Integer, Hash)>] Image data, response status code and response headers
    def images_put_with_http_info(image_id, image, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ImagesApi.images_put ...'
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling ImagesApi.images_put"
      end
      # verify the required parameter 'image' is set
      if @api_client.config.client_side_validation && image.nil?
        fail ArgumentError, "Missing the required parameter 'image' when calling ImagesApi.images_put"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_put, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ImagesApi.images_put, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/images/{imageId}'.sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(image)

      # return_type
      return_type = opts[:debug_return_type] || 'Image'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"ImagesApi.images_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end