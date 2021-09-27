=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module Ionoscloud
  class KubernetesClusterProperties
    # A Kubernetes Cluster Name. Valid Kubernetes Cluster name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
    attr_accessor :name

    # The kubernetes version in which a cluster is running. This imposes restrictions on what kubernetes versions can be run in a cluster's nodepools. Additionally, not all kubernetes versions are viable upgrade targets for all prior versions.
    attr_accessor :k8s_version

    attr_accessor :maintenance_window

    # List of available versions for upgrading the cluster
    attr_accessor :available_upgrade_versions

    # List of versions that may be used for node pools under this cluster
    attr_accessor :viable_node_pool_versions

    # The indicator if the cluster is public or private. Be aware that setting it to false is currently in beta phase.
    attr_accessor :public

    # Access to the K8s API server is restricted to these CIDRs. Cluster-internal traffic is not affected by this restriction. If no allowlist is specified, access is not restricted. If an IP without subnet mask is provided, the default value will be used: 32 for IPv4 and 128 for IPv6.
    attr_accessor :api_subnet_allow_list

    # List of S3 bucket configured for K8s usage. For now it contains only one S3 bucket used to store K8s API audit logs
    attr_accessor :s3_buckets

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'k8s_version' => :'k8sVersion',
        :'maintenance_window' => :'maintenanceWindow',
        :'available_upgrade_versions' => :'availableUpgradeVersions',
        :'viable_node_pool_versions' => :'viableNodePoolVersions',
        :'public' => :'public',
        :'api_subnet_allow_list' => :'apiSubnetAllowList',
        :'s3_buckets' => :'s3Buckets'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'k8s_version' => :'String',
        :'maintenance_window' => :'KubernetesMaintenanceWindow',
        :'available_upgrade_versions' => :'Array<String>',
        :'viable_node_pool_versions' => :'Array<String>',
        :'public' => :'Boolean',
        :'api_subnet_allow_list' => :'Array<String>',
        :'s3_buckets' => :'Array<S3Bucket>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::KubernetesClusterProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::KubernetesClusterProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'k8s_version')
        self.k8s_version = attributes[:'k8s_version']
      end

      if attributes.key?(:'maintenance_window')
        self.maintenance_window = attributes[:'maintenance_window']
      end

      if attributes.key?(:'available_upgrade_versions')
        if (value = attributes[:'available_upgrade_versions']).is_a?(Array)
          self.available_upgrade_versions = value
        end
      end

      if attributes.key?(:'viable_node_pool_versions')
        if (value = attributes[:'viable_node_pool_versions']).is_a?(Array)
          self.viable_node_pool_versions = value
        end
      end

      if attributes.key?(:'public')
        self.public = attributes[:'public']
      else
        self.public = true
      end

      if attributes.key?(:'api_subnet_allow_list')
        if (value = attributes[:'api_subnet_allow_list']).is_a?(Array)
          self.api_subnet_allow_list = value
        end
      end

      if attributes.key?(:'s3_buckets')
        if (value = attributes[:'s3_buckets']).is_a?(Array)
          self.s3_buckets = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          k8s_version == o.k8s_version &&
          maintenance_window == o.maintenance_window &&
          available_upgrade_versions == o.available_upgrade_versions &&
          viable_node_pool_versions == o.viable_node_pool_versions &&
          public == o.public &&
          api_subnet_allow_list == o.api_subnet_allow_list &&
          s3_buckets == o.s3_buckets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, k8s_version, maintenance_window, available_upgrade_versions, viable_node_pool_versions, public, api_subnet_allow_list, s3_buckets].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Ionoscloud.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
