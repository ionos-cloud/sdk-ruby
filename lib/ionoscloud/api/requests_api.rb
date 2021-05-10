=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class RequestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a Request
    # Retrieves the attributes of a given request.
    # @param request_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Request]
    def requests_find_by_id(request_id, opts = {})
      data, _status_code, _headers = requests_find_by_id_with_http_info(request_id, opts)
      data
    end

    # Retrieve a Request
    # Retrieves the attributes of a given request.
    # @param request_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Request, Integer, Hash)>] Request data, response status code and response headers
    def requests_find_by_id_with_http_info(request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestsApi.requests_find_by_id ...'
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling RequestsApi.requests_find_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling RequestsApi.requests_find_by_id, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling RequestsApi.requests_find_by_id, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/requests/{requestId}'.sub('{' + 'requestId' + '}', CGI.escape(request_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Request'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"RequestsApi.requests_find_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestsApi#requests_find_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Requests
    # Retrieve a list of API requests.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @option opts [String] :filter_status Request filter to fetch all requests based on a particular status [QUEUED, RUNNING, DONE, FAILED]. It doesn&#39;t depend on depth query parameter
    # @option opts [String] :filter_created_after Request filter to fetch all requests created after the specified date. It doesn&#39;t depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00
    # @option opts [String] :filter_created_before Request filter to fetch all requests created before the specified date. It doesn&#39;t depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00
    # @option opts [String] :filter_created_date Response filter to select and display only the requests that contains the specified createdDate. The value is case insensitive and it  depends on depth query parameter that should have a value greater than 0. Date format e.g. 2020-11-16T17:42:59Z
    # @option opts [String] :filter_created_by Response filter to select and display only the requests that contains the specified createdBy. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_etag Response filter to select and display only the requests that contains the specified etag. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_request_status Response filter to select and display only the requests that contains the specified requestStatus. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_method Response filter to select and display only the requests that contains the specified method. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_headers Response filter to select and display only the requests that contains the specified headers. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_body Response filter to select and display only the requests that contains the specified body. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_url Response filter to select and display only the requests that contains the specified url. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with limit for pagination) (default to 0)
    # @option opts [Integer] :limit the maximum number of elements to return (use together with offset for pagination) (default to 1000)
    # @return [Requests]
    def requests_get(opts = {})
      data, _status_code, _headers = requests_get_with_http_info(opts)
      data
    end

    # List Requests
    # Retrieve a list of API requests.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @option opts [String] :filter_status Request filter to fetch all requests based on a particular status [QUEUED, RUNNING, DONE, FAILED]. It doesn&#39;t depend on depth query parameter
    # @option opts [String] :filter_created_after Request filter to fetch all requests created after the specified date. It doesn&#39;t depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00
    # @option opts [String] :filter_created_before Request filter to fetch all requests created before the specified date. It doesn&#39;t depend on depth query parameter. Date format e.g. 2021-01-01+00:00:00
    # @option opts [String] :filter_created_date Response filter to select and display only the requests that contains the specified createdDate. The value is case insensitive and it  depends on depth query parameter that should have a value greater than 0. Date format e.g. 2020-11-16T17:42:59Z
    # @option opts [String] :filter_created_by Response filter to select and display only the requests that contains the specified createdBy. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_etag Response filter to select and display only the requests that contains the specified etag. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_request_status Response filter to select and display only the requests that contains the specified requestStatus. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_method Response filter to select and display only the requests that contains the specified method. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_headers Response filter to select and display only the requests that contains the specified headers. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_body Response filter to select and display only the requests that contains the specified body. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [String] :filter_url Response filter to select and display only the requests that contains the specified url. The value is case insensitive and it depends on depth query parameter that should have a value greater than 0. 
    # @option opts [Integer] :offset the first element (of the total list of elements) to include in the response (use together with limit for pagination)
    # @option opts [Integer] :limit the maximum number of elements to return (use together with offset for pagination)
    # @return [Array<(Requests, Integer, Hash)>] Requests data, response status code and response headers
    def requests_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestsApi.requests_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling RequestsApi.requests_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling RequestsApi.requests_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling RequestsApi.requests_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RequestsApi.requests_get, must be smaller than or equal to 10000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RequestsApi.requests_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/requests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?
      query_params[:'depth'] = opts[:'depth'] if !opts[:'depth'].nil?
      query_params[:'filter.status'] = opts[:'filter_status'] if !opts[:'filter_status'].nil?
      query_params[:'filter.createdAfter'] = opts[:'filter_created_after'] if !opts[:'filter_created_after'].nil?
      query_params[:'filter.createdBefore'] = opts[:'filter_created_before'] if !opts[:'filter_created_before'].nil?
      query_params[:'filter.createdDate'] = opts[:'filter_created_date'] if !opts[:'filter_created_date'].nil?
      query_params[:'filter.createdBy'] = opts[:'filter_created_by'] if !opts[:'filter_created_by'].nil?
      query_params[:'filter.etag'] = opts[:'filter_etag'] if !opts[:'filter_etag'].nil?
      query_params[:'filter.requestStatus'] = opts[:'filter_request_status'] if !opts[:'filter_request_status'].nil?
      query_params[:'filter.method'] = opts[:'filter_method'] if !opts[:'filter_method'].nil?
      query_params[:'filter.headers'] = opts[:'filter_headers'] if !opts[:'filter_headers'].nil?
      query_params[:'filter.body'] = opts[:'filter_body'] if !opts[:'filter_body'].nil?
      query_params[:'filter.url'] = opts[:'filter_url'] if !opts[:'filter_url'].nil?
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
      return_type = opts[:debug_return_type] || 'Requests'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"RequestsApi.requests_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestsApi#requests_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve Request Status
    # Retrieves the status of a given request.
    # @param request_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [RequestStatus]
    def requests_status_get(request_id, opts = {})
      data, _status_code, _headers = requests_status_get_with_http_info(request_id, opts)
      data
    end

    # Retrieve Request Status
    # Retrieves the status of a given request.
    # @param request_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(RequestStatus, Integer, Hash)>] RequestStatus data, response status code and response headers
    def requests_status_get_with_http_info(request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RequestsApi.requests_status_get ...'
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling RequestsApi.requests_status_get"
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling RequestsApi.requests_status_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling RequestsApi.requests_status_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/requests/{requestId}/status'.sub('{' + 'requestId' + '}', CGI.escape(request_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RequestStatus'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"RequestsApi.requests_status_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RequestsApi#requests_status_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
