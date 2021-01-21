=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 5.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module Ionoscloud
  class ResourceLimits
    # maximum number of cores per server
    attr_accessor :cores_per_server

    # maximum cores per contract
    attr_accessor :cores_per_contract

    # number of cores provisioned
    attr_accessor :cores_provisioned

    # maximum ram per server
    attr_accessor :ram_per_server

    # maximum ram per contract
    attr_accessor :ram_per_contract

    # ram provisioned
    attr_accessor :ram_provisioned

    # hdd limit per volume
    attr_accessor :hdd_limit_per_volume

    # hdd limit per contract
    attr_accessor :hdd_limit_per_contract

    # hdd volume provisioned
    attr_accessor :hdd_volume_provisioned

    # ssd limit per volume
    attr_accessor :ssd_limit_per_volume

    # ssd limit per contract
    attr_accessor :ssd_limit_per_contract

    # ssd volume provisioned
    attr_accessor :ssd_volume_provisioned

    # total reservable ip limit of the customer
    attr_accessor :reservable_ips

    # reserved ips on a contract
    attr_accessor :reserved_ips_on_contract

    # reserved ips in use
    attr_accessor :reserved_ips_in_use

    # k8s clusters total limit
    attr_accessor :k8s_cluster_limit_total

    # k8s clusters provisioned
    attr_accessor :k8s_clusters_provisioned

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cores_per_server' => :'coresPerServer',
        :'cores_per_contract' => :'coresPerContract',
        :'cores_provisioned' => :'coresProvisioned',
        :'ram_per_server' => :'ramPerServer',
        :'ram_per_contract' => :'ramPerContract',
        :'ram_provisioned' => :'ramProvisioned',
        :'hdd_limit_per_volume' => :'hddLimitPerVolume',
        :'hdd_limit_per_contract' => :'hddLimitPerContract',
        :'hdd_volume_provisioned' => :'hddVolumeProvisioned',
        :'ssd_limit_per_volume' => :'ssdLimitPerVolume',
        :'ssd_limit_per_contract' => :'ssdLimitPerContract',
        :'ssd_volume_provisioned' => :'ssdVolumeProvisioned',
        :'reservable_ips' => :'reservableIps',
        :'reserved_ips_on_contract' => :'reservedIpsOnContract',
        :'reserved_ips_in_use' => :'reservedIpsInUse',
        :'k8s_cluster_limit_total' => :'k8sClusterLimitTotal',
        :'k8s_clusters_provisioned' => :'k8sClustersProvisioned'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cores_per_server' => :'Integer',
        :'cores_per_contract' => :'Integer',
        :'cores_provisioned' => :'Integer',
        :'ram_per_server' => :'Integer',
        :'ram_per_contract' => :'Integer',
        :'ram_provisioned' => :'Integer',
        :'hdd_limit_per_volume' => :'Integer',
        :'hdd_limit_per_contract' => :'Integer',
        :'hdd_volume_provisioned' => :'Integer',
        :'ssd_limit_per_volume' => :'Integer',
        :'ssd_limit_per_contract' => :'Integer',
        :'ssd_volume_provisioned' => :'Integer',
        :'reservable_ips' => :'Integer',
        :'reserved_ips_on_contract' => :'Integer',
        :'reserved_ips_in_use' => :'Integer',
        :'k8s_cluster_limit_total' => :'Integer',
        :'k8s_clusters_provisioned' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::ResourceLimits` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::ResourceLimits`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cores_per_server')
        self.cores_per_server = attributes[:'cores_per_server']
      end

      if attributes.key?(:'cores_per_contract')
        self.cores_per_contract = attributes[:'cores_per_contract']
      end

      if attributes.key?(:'cores_provisioned')
        self.cores_provisioned = attributes[:'cores_provisioned']
      end

      if attributes.key?(:'ram_per_server')
        self.ram_per_server = attributes[:'ram_per_server']
      end

      if attributes.key?(:'ram_per_contract')
        self.ram_per_contract = attributes[:'ram_per_contract']
      end

      if attributes.key?(:'ram_provisioned')
        self.ram_provisioned = attributes[:'ram_provisioned']
      end

      if attributes.key?(:'hdd_limit_per_volume')
        self.hdd_limit_per_volume = attributes[:'hdd_limit_per_volume']
      end

      if attributes.key?(:'hdd_limit_per_contract')
        self.hdd_limit_per_contract = attributes[:'hdd_limit_per_contract']
      end

      if attributes.key?(:'hdd_volume_provisioned')
        self.hdd_volume_provisioned = attributes[:'hdd_volume_provisioned']
      end

      if attributes.key?(:'ssd_limit_per_volume')
        self.ssd_limit_per_volume = attributes[:'ssd_limit_per_volume']
      end

      if attributes.key?(:'ssd_limit_per_contract')
        self.ssd_limit_per_contract = attributes[:'ssd_limit_per_contract']
      end

      if attributes.key?(:'ssd_volume_provisioned')
        self.ssd_volume_provisioned = attributes[:'ssd_volume_provisioned']
      end

      if attributes.key?(:'reservable_ips')
        self.reservable_ips = attributes[:'reservable_ips']
      end

      if attributes.key?(:'reserved_ips_on_contract')
        self.reserved_ips_on_contract = attributes[:'reserved_ips_on_contract']
      end

      if attributes.key?(:'reserved_ips_in_use')
        self.reserved_ips_in_use = attributes[:'reserved_ips_in_use']
      end

      if attributes.key?(:'k8s_cluster_limit_total')
        self.k8s_cluster_limit_total = attributes[:'k8s_cluster_limit_total']
      end

      if attributes.key?(:'k8s_clusters_provisioned')
        self.k8s_clusters_provisioned = attributes[:'k8s_clusters_provisioned']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cores_per_server.nil?
        invalid_properties.push('invalid value for "cores_per_server", cores_per_server cannot be nil.')
      end

      if @cores_per_contract.nil?
        invalid_properties.push('invalid value for "cores_per_contract", cores_per_contract cannot be nil.')
      end

      if @cores_provisioned.nil?
        invalid_properties.push('invalid value for "cores_provisioned", cores_provisioned cannot be nil.')
      end

      if @ram_per_server.nil?
        invalid_properties.push('invalid value for "ram_per_server", ram_per_server cannot be nil.')
      end

      if @ram_per_contract.nil?
        invalid_properties.push('invalid value for "ram_per_contract", ram_per_contract cannot be nil.')
      end

      if @ram_provisioned.nil?
        invalid_properties.push('invalid value for "ram_provisioned", ram_provisioned cannot be nil.')
      end

      if @hdd_limit_per_volume.nil?
        invalid_properties.push('invalid value for "hdd_limit_per_volume", hdd_limit_per_volume cannot be nil.')
      end

      if @hdd_limit_per_contract.nil?
        invalid_properties.push('invalid value for "hdd_limit_per_contract", hdd_limit_per_contract cannot be nil.')
      end

      if @hdd_volume_provisioned.nil?
        invalid_properties.push('invalid value for "hdd_volume_provisioned", hdd_volume_provisioned cannot be nil.')
      end

      if @ssd_limit_per_volume.nil?
        invalid_properties.push('invalid value for "ssd_limit_per_volume", ssd_limit_per_volume cannot be nil.')
      end

      if @ssd_limit_per_contract.nil?
        invalid_properties.push('invalid value for "ssd_limit_per_contract", ssd_limit_per_contract cannot be nil.')
      end

      if @ssd_volume_provisioned.nil?
        invalid_properties.push('invalid value for "ssd_volume_provisioned", ssd_volume_provisioned cannot be nil.')
      end

      if @reservable_ips.nil?
        invalid_properties.push('invalid value for "reservable_ips", reservable_ips cannot be nil.')
      end

      if @reserved_ips_on_contract.nil?
        invalid_properties.push('invalid value for "reserved_ips_on_contract", reserved_ips_on_contract cannot be nil.')
      end

      if @reserved_ips_in_use.nil?
        invalid_properties.push('invalid value for "reserved_ips_in_use", reserved_ips_in_use cannot be nil.')
      end

      if @k8s_cluster_limit_total.nil?
        invalid_properties.push('invalid value for "k8s_cluster_limit_total", k8s_cluster_limit_total cannot be nil.')
      end

      if @k8s_clusters_provisioned.nil?
        invalid_properties.push('invalid value for "k8s_clusters_provisioned", k8s_clusters_provisioned cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cores_per_server.nil?
      return false if @cores_per_contract.nil?
      return false if @cores_provisioned.nil?
      return false if @ram_per_server.nil?
      return false if @ram_per_contract.nil?
      return false if @ram_provisioned.nil?
      return false if @hdd_limit_per_volume.nil?
      return false if @hdd_limit_per_contract.nil?
      return false if @hdd_volume_provisioned.nil?
      return false if @ssd_limit_per_volume.nil?
      return false if @ssd_limit_per_contract.nil?
      return false if @ssd_volume_provisioned.nil?
      return false if @reservable_ips.nil?
      return false if @reserved_ips_on_contract.nil?
      return false if @reserved_ips_in_use.nil?
      return false if @k8s_cluster_limit_total.nil?
      return false if @k8s_clusters_provisioned.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cores_per_server == o.cores_per_server &&
          cores_per_contract == o.cores_per_contract &&
          cores_provisioned == o.cores_provisioned &&
          ram_per_server == o.ram_per_server &&
          ram_per_contract == o.ram_per_contract &&
          ram_provisioned == o.ram_provisioned &&
          hdd_limit_per_volume == o.hdd_limit_per_volume &&
          hdd_limit_per_contract == o.hdd_limit_per_contract &&
          hdd_volume_provisioned == o.hdd_volume_provisioned &&
          ssd_limit_per_volume == o.ssd_limit_per_volume &&
          ssd_limit_per_contract == o.ssd_limit_per_contract &&
          ssd_volume_provisioned == o.ssd_volume_provisioned &&
          reservable_ips == o.reservable_ips &&
          reserved_ips_on_contract == o.reserved_ips_on_contract &&
          reserved_ips_in_use == o.reserved_ips_in_use &&
          k8s_cluster_limit_total == o.k8s_cluster_limit_total &&
          k8s_clusters_provisioned == o.k8s_clusters_provisioned
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cores_per_server, cores_per_contract, cores_provisioned, ram_per_server, ram_per_contract, ram_provisioned, hdd_limit_per_volume, hdd_limit_per_contract, hdd_volume_provisioned, ssd_limit_per_volume, ssd_limit_per_contract, ssd_volume_provisioned, reservable_ips, reserved_ips_on_contract, reserved_ips_in_use, k8s_cluster_limit_total, k8s_clusters_provisioned].hash
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
