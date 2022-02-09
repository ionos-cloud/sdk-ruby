=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module Ionoscloud
  class ContractApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a Contract
    # Retrieves the attributes of user's contract.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines) (default to true)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on (default to 0)
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Contract]
    def contracts_get(opts = {})
      data, _status_code, _headers = contracts_get_with_http_info(opts)
      data
    end

    # Retrieve a Contract
    # Retrieves the attributes of user&#39;s contract.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :pretty Controls whether response is pretty-printed (with indentation and new lines)
    # @option opts [Integer] :depth Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth&#x3D;0: only direct properties are included. Children (servers etc.) are not included  - depth&#x3D;1: direct properties and children references are included  - depth&#x3D;2: direct properties and children properties are included  - depth&#x3D;3: direct properties and children properties and children&#39;s children are included  - depth&#x3D;... and so on
    # @option opts [Integer] :x_contract_number Users having more than 1 contract need to provide contract number, against which all API requests should be executed
    # @return [Array<(Contract, Integer, Hash)>] Contract data, response status code and response headers
    def contracts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractApi.contracts_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] > 10
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ContractApi.contracts_get, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'depth'].nil? && opts[:'depth'] < 0
        fail ArgumentError, 'invalid value for "opts[:"depth"]" when calling ContractApi.contracts_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/contracts'

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
      return_type = opts[:debug_return_type] || 'Contract'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic Authentication', 'Token Authentication']

      new_options = opts.merge(
        :operation => :"ContractApi.contracts_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractApi#contracts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end