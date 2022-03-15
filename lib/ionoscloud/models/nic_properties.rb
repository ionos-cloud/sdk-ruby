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
  class NicProperties
  
    # The name of the  resource.
    attr_accessor :name


    # The MAC address of the NIC.
    attr_accessor :mac


    # Collection of IP addresses, assigned to the NIC. Explicitly assigned public IPs need to come from reserved IP blocks. Passing value null or empty array will assign an IP address automatically.
    attr_accessor :ips


    # Indicates if the NIC will reserve an IP using DHCP.
    attr_accessor :dhcp


    # The LAN ID the NIC will be on. If the LAN ID does not exist, it will be implicitly created.
    attr_accessor :lan


    # Activate or deactivate the firewall. By default, an active firewall without any defined rules will block all incoming network traffic except for the firewall rules that explicitly allows certain protocols, IP addresses and ports.
    attr_accessor :firewall_active


    # The type of firewall rules that will be allowed on the NIC. If not specified, the default INGRESS value is used.
    attr_accessor :firewall_type


    # The Logical Unit Number (LUN) of the storage volume. Null if this NIC was created using Cloud API and no DCD changes were performed on the Datacenter.
    attr_accessor :device_number


    # The PCI slot number for the NIC.
    attr_accessor :pci_slot

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

        :'mac' => :'mac',

        :'ips' => :'ips',

        :'dhcp' => :'dhcp',

        :'lan' => :'lan',

        :'firewall_active' => :'firewallActive',

        :'firewall_type' => :'firewallType',

        :'device_number' => :'deviceNumber',

        :'pci_slot' => :'pciSlot'
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

        :'mac' => :'String',

        :'ips' => :'Array<String>',

        :'dhcp' => :'Boolean',

        :'lan' => :'Integer',

        :'firewall_active' => :'Boolean',

        :'firewall_type' => :'String',

        :'device_number' => :'Integer',

        :'pci_slot' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        


        :'ips',






      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::NicProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::NicProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }
      

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end


      if attributes.key?(:'mac')
        self.mac = attributes[:'mac']
      end


      if attributes.key?(:'ips') && (value = attributes[:'ips']).is_a?(Array)
        self.ips = value
      end


      if attributes.key?(:'dhcp')
        self.dhcp = attributes[:'dhcp']
      end


      if attributes.key?(:'lan')
        self.lan = attributes[:'lan']
      end


      if attributes.key?(:'firewall_active')
        self.firewall_active = attributes[:'firewall_active']
      end


      if attributes.key?(:'firewall_type')
        self.firewall_type = attributes[:'firewall_type']
      end


      if attributes.key?(:'device_number')
        self.device_number = attributes[:'device_number']
      end


      if attributes.key?(:'pci_slot')
        self.pci_slot = attributes[:'pci_slot']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      




      if @lan.nil?
        invalid_properties.push('invalid value for "lan", lan cannot be nil.')
      end





      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      




      return false if @lan.nil?


      firewall_type_validator = EnumAttributeValidator.new('String', ["INGRESS", "EGRESS", "BIDIRECTIONAL"])
      return false unless firewall_type_validator.valid?(@firewall_type)


      true
    end

    






    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] firewall_type Object to be assigned
    def firewall_type=(firewall_type)
      validator = EnumAttributeValidator.new('String', ["INGRESS", "EGRESS", "BIDIRECTIONAL"])
      unless validator.valid?(firewall_type)
        fail ArgumentError, "invalid value for \"firewall_type\", must be one of #{validator.allowable_values}."
      end
      @firewall_type = firewall_type
    end



    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        name == o.name &&
        mac == o.mac &&
        ips == o.ips &&
        dhcp == o.dhcp &&
        lan == o.lan &&
        firewall_active == o.firewall_active &&
        firewall_type == o.firewall_type &&
        device_number == o.device_number &&
        pci_slot == o.pci_slot
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, mac, ips, dhcp, lan, firewall_active, firewall_type, device_number, pci_slot].hash
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
