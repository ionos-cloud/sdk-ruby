=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 6.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module Ionoscloud
  class FirewallruleProperties
    # A name of that resource
    attr_accessor :name

    # The protocol for the rule. Property cannot be modified after creation (disallowed in update requests)
    attr_accessor :protocol

    # Only traffic originating from the respective MAC address is allowed. Valid format: aa:bb:cc:dd:ee:ff. Value null allows all source MAC address
    attr_accessor :source_mac

    # Only traffic originating from the respective IPv4 address is allowed. Value null allows all source IPs
    attr_accessor :source_ip

    # In case the target NIC has multiple IP addresses, only traffic directed to the respective IP address of the NIC is allowed. Value null allows all target IPs
    attr_accessor :target_ip

    # Defines the allowed code (from 0 to 254) if protocol ICMP is chosen. Value null allows all codes
    attr_accessor :icmp_code

    # Defines the allowed type (from 0 to 254) if the protocol ICMP is chosen. Value null allows all types
    attr_accessor :icmp_type

    # Defines the start range of the allowed port (from 1 to 65534) if protocol TCP or UDP is chosen. Leave portRangeStart and portRangeEnd value null to allow all ports
    attr_accessor :port_range_start

    # Defines the end range of the allowed port (from 1 to 65534) if the protocol TCP or UDP is chosen. Leave portRangeStart and portRangeEnd null to allow all ports
    attr_accessor :port_range_end

    # The type of firewall rule. If is not specified, it will take the default value INGRESS
    attr_accessor :type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'protocol' => :'protocol',
        :'source_mac' => :'sourceMac',
        :'source_ip' => :'sourceIp',
        :'target_ip' => :'targetIp',
        :'icmp_code' => :'icmpCode',
        :'icmp_type' => :'icmpType',
        :'port_range_start' => :'portRangeStart',
        :'port_range_end' => :'portRangeEnd',
        :'type' => :'type'
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
        :'protocol' => :'String',
        :'source_mac' => :'String',
        :'source_ip' => :'String',
        :'target_ip' => :'String',
        :'icmp_code' => :'Integer',
        :'icmp_type' => :'Integer',
        :'port_range_start' => :'Integer',
        :'port_range_end' => :'Integer',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::FirewallruleProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::FirewallruleProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'source_mac')
        self.source_mac = attributes[:'source_mac']
      end

      if attributes.key?(:'source_ip')
        self.source_ip = attributes[:'source_ip']
      end

      if attributes.key?(:'target_ip')
        self.target_ip = attributes[:'target_ip']
      end

      if attributes.key?(:'icmp_code')
        self.icmp_code = attributes[:'icmp_code']
      end

      if attributes.key?(:'icmp_type')
        self.icmp_type = attributes[:'icmp_type']
      end

      if attributes.key?(:'port_range_start')
        self.port_range_start = attributes[:'port_range_start']
      end

      if attributes.key?(:'port_range_end')
        self.port_range_end = attributes[:'port_range_end']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @protocol.nil?
        invalid_properties.push('invalid value for "protocol", protocol cannot be nil.')
      end

      if !@icmp_code.nil? && @icmp_code > 254
        invalid_properties.push('invalid value for "icmp_code", must be smaller than or equal to 254.')
      end

      if !@icmp_code.nil? && @icmp_code < 0
        invalid_properties.push('invalid value for "icmp_code", must be greater than or equal to 0.')
      end

      if !@icmp_type.nil? && @icmp_type > 254
        invalid_properties.push('invalid value for "icmp_type", must be smaller than or equal to 254.')
      end

      if !@icmp_type.nil? && @icmp_type < 0
        invalid_properties.push('invalid value for "icmp_type", must be greater than or equal to 0.')
      end

      if !@port_range_start.nil? && @port_range_start > 65534
        invalid_properties.push('invalid value for "port_range_start", must be smaller than or equal to 65534.')
      end

      if !@port_range_start.nil? && @port_range_start < 1
        invalid_properties.push('invalid value for "port_range_start", must be greater than or equal to 1.')
      end

      if !@port_range_end.nil? && @port_range_end > 65534
        invalid_properties.push('invalid value for "port_range_end", must be smaller than or equal to 65534.')
      end

      if !@port_range_end.nil? && @port_range_end < 1
        invalid_properties.push('invalid value for "port_range_end", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @protocol.nil?
      protocol_validator = EnumAttributeValidator.new('String', ["TCP", "UDP", "ICMP", "ANY"])
      return false unless protocol_validator.valid?(@protocol)
      source_mac_validator = EnumAttributeValidator.new('String', ["@Valid MAC address@", "null"])
      return false unless source_mac_validator.valid?(@source_mac)
      source_ip_validator = EnumAttributeValidator.new('String', ["@Valid IP address@", "null"])
      return false unless source_ip_validator.valid?(@source_ip)
      target_ip_validator = EnumAttributeValidator.new('String', ["@Valid IP address@", "null"])
      return false unless target_ip_validator.valid?(@target_ip)
      return false if !@icmp_code.nil? && @icmp_code > 254
      return false if !@icmp_code.nil? && @icmp_code < 0
      return false if !@icmp_type.nil? && @icmp_type > 254
      return false if !@icmp_type.nil? && @icmp_type < 0
      return false if !@port_range_start.nil? && @port_range_start > 65534
      return false if !@port_range_start.nil? && @port_range_start < 1
      return false if !@port_range_end.nil? && @port_range_end > 65534
      return false if !@port_range_end.nil? && @port_range_end < 1
      type_validator = EnumAttributeValidator.new('String', ["INGRESS", "EGRESS"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protocol Object to be assigned
    def protocol=(protocol)
      validator = EnumAttributeValidator.new('String', ["TCP", "UDP", "ICMP", "ANY"])
      unless validator.valid?(protocol)
        fail ArgumentError, "invalid value for \"protocol\", must be one of #{validator.allowable_values}."
      end
      @protocol = protocol
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_mac Object to be assigned
    def source_mac=(source_mac)
      validator = EnumAttributeValidator.new('String', ["@Valid MAC address@", "null"])
      unless validator.valid?(source_mac)
        fail ArgumentError, "invalid value for \"source_mac\", must be one of #{validator.allowable_values}."
      end
      @source_mac = source_mac
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_ip Object to be assigned
    def source_ip=(source_ip)
      validator = EnumAttributeValidator.new('String', ["@Valid IP address@", "null"])
      unless validator.valid?(source_ip)
        fail ArgumentError, "invalid value for \"source_ip\", must be one of #{validator.allowable_values}."
      end
      @source_ip = source_ip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_ip Object to be assigned
    def target_ip=(target_ip)
      validator = EnumAttributeValidator.new('String', ["@Valid IP address@", "null"])
      unless validator.valid?(target_ip)
        fail ArgumentError, "invalid value for \"target_ip\", must be one of #{validator.allowable_values}."
      end
      @target_ip = target_ip
    end

    # Custom attribute writer method with validation
    # @param [Object] icmp_code Value to be assigned
    def icmp_code=(icmp_code)
      if !icmp_code.nil? && icmp_code > 254
        fail ArgumentError, 'invalid value for "icmp_code", must be smaller than or equal to 254.'
      end

      if !icmp_code.nil? && icmp_code < 0
        fail ArgumentError, 'invalid value for "icmp_code", must be greater than or equal to 0.'
      end

      @icmp_code = icmp_code
    end

    # Custom attribute writer method with validation
    # @param [Object] icmp_type Value to be assigned
    def icmp_type=(icmp_type)
      if !icmp_type.nil? && icmp_type > 254
        fail ArgumentError, 'invalid value for "icmp_type", must be smaller than or equal to 254.'
      end

      if !icmp_type.nil? && icmp_type < 0
        fail ArgumentError, 'invalid value for "icmp_type", must be greater than or equal to 0.'
      end

      @icmp_type = icmp_type
    end

    # Custom attribute writer method with validation
    # @param [Object] port_range_start Value to be assigned
    def port_range_start=(port_range_start)
      if !port_range_start.nil? && port_range_start > 65534
        fail ArgumentError, 'invalid value for "port_range_start", must be smaller than or equal to 65534.'
      end

      if !port_range_start.nil? && port_range_start < 1
        fail ArgumentError, 'invalid value for "port_range_start", must be greater than or equal to 1.'
      end

      @port_range_start = port_range_start
    end

    # Custom attribute writer method with validation
    # @param [Object] port_range_end Value to be assigned
    def port_range_end=(port_range_end)
      if !port_range_end.nil? && port_range_end > 65534
        fail ArgumentError, 'invalid value for "port_range_end", must be smaller than or equal to 65534.'
      end

      if !port_range_end.nil? && port_range_end < 1
        fail ArgumentError, 'invalid value for "port_range_end", must be greater than or equal to 1.'
      end

      @port_range_end = port_range_end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["INGRESS", "EGRESS"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          protocol == o.protocol &&
          source_mac == o.source_mac &&
          source_ip == o.source_ip &&
          target_ip == o.target_ip &&
          icmp_code == o.icmp_code &&
          icmp_type == o.icmp_type &&
          port_range_start == o.port_range_start &&
          port_range_end == o.port_range_end &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, protocol, source_mac, source_ip, target_ip, icmp_code, icmp_type, port_range_start, port_range_end, type].hash
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
