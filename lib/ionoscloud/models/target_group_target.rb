=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module Ionoscloud
  class TargetGroupTarget
  
    # When the health check is enabled, the target is available only when it accepts regular TCP or HTTP connection attempts for state checking. The state check consists of one connection attempt with the target's address and port. The default value is 'TRUE'.
    attr_accessor :health_check_enabled


    # The IP address of the balanced target.
    attr_accessor :ip


    # When the maintenance mode is enabled, the target is prevented from receiving traffic; the default value is 'FALSE'.
    attr_accessor :maintenance_enabled


    # The port of the balanced target service; the valid range is 1 to 65535.
    attr_accessor :port


    # The traffic is distributed proportionally to target weight, which is the ratio of the total weight of all targets. A target with higher weight receives a larger share of traffic. The valid range is from 0 to 256; the default value is '1'. Targets with a weight of '0' do not participate in load balancing but still accept persistent connections. We recommend using values in the middle range to leave room for later adjustments.
    attr_accessor :weight

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'health_check_enabled' => :'healthCheckEnabled',

        :'ip' => :'ip',

        :'maintenance_enabled' => :'maintenanceEnabled',

        :'port' => :'port',

        :'weight' => :'weight'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        
        :'health_check_enabled' => :'Boolean',

        :'ip' => :'String',

        :'maintenance_enabled' => :'Boolean',

        :'port' => :'Integer',

        :'weight' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::TargetGroupTarget` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::TargetGroupTarget`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }
      

      if attributes.key?(:'health_check_enabled')
        self.health_check_enabled = attributes[:'health_check_enabled']
      end


      if attributes.key?(:'ip')
        self.ip = attributes[:'ip']
      end


      if attributes.key?(:'maintenance_enabled')
        self.maintenance_enabled = attributes[:'maintenance_enabled']
      end


      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end


      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      

      if @ip.nil?
        invalid_properties.push('invalid value for "ip", ip cannot be nil.')
      end



      if @port.nil?
        invalid_properties.push('invalid value for "port", port cannot be nil.')
      end


      if @weight.nil?
        invalid_properties.push('invalid value for "weight", weight cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      

      return false if @ip.nil?


      return false if @port.nil?

      return false if @weight.nil?
      true
    end

    




    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        health_check_enabled == o.health_check_enabled &&
        ip == o.ip &&
        maintenance_enabled == o.maintenance_enabled &&
        port == o.port &&
        weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [health_check_enabled, ip, maintenance_enabled, port, weight].hash
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
