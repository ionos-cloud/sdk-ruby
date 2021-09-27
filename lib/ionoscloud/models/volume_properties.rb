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
  class VolumeProperties
    # A name of that resource
    attr_accessor :name

    # Hardware type of the volume.
    attr_accessor :type

    # The size of the volume in GB
    attr_accessor :size

    # The availability zone in which the volume should exist. The storage volume will be provisioned on as less physical storages as possible but cannot guarantee upfront
    attr_accessor :availability_zone

    # Image or snapshot ID to be used as template for this volume
    attr_accessor :image

    # Initial password to be set for installed OS. Works with public images only. Not modifiable, forbidden in update requests. Password rules allows all characters from a-z, A-Z, 0-9
    attr_accessor :image_password

    attr_accessor :image_alias

    # Public SSH keys are set on the image as authorized keys for appropriate SSH login to the instance using the corresponding private key. This field may only be set in creation requests. When reading, it always returns null. SSH keys are only supported if a public Linux image is used for the volume creation.
    attr_accessor :ssh_keys

    # The bus type of the volume. Default is VIRTIO
    attr_accessor :bus

    # OS type of this volume
    attr_accessor :licence_type

    # Is capable of CPU hot plug (no reboot required)
    attr_accessor :cpu_hot_plug

    # Is capable of memory hot plug (no reboot required)
    attr_accessor :ram_hot_plug

    # Is capable of nic hot plug (no reboot required)
    attr_accessor :nic_hot_plug

    # Is capable of nic hot unplug (no reboot required)
    attr_accessor :nic_hot_unplug

    # Is capable of Virt-IO drive hot plug (no reboot required)
    attr_accessor :disc_virtio_hot_plug

    # Is capable of Virt-IO drive hot unplug (no reboot required). This works only for non-Windows virtual Machines.
    attr_accessor :disc_virtio_hot_unplug

    # The LUN ID of the storage volume. Null for volumes not mounted to any VM
    attr_accessor :device_number

    # The uuid of the Backup Unit that user has access to. The property is immutable and is only allowed to be set on a new volume creation. It is mandatory to provide either 'public image' or 'imageAlias' in conjunction with this property.
    attr_accessor :backupunit_id

    # The cloud-init configuration for the volume as base64 encoded string. The property is immutable and is only allowed to be set on a new volume creation. It is mandatory to provide either 'public image' or 'imageAlias' that has cloud-init compatibility in conjunction with this property.
    attr_accessor :user_data

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
        :'type' => :'type',
        :'size' => :'size',
        :'availability_zone' => :'availabilityZone',
        :'image' => :'image',
        :'image_password' => :'imagePassword',
        :'image_alias' => :'imageAlias',
        :'ssh_keys' => :'sshKeys',
        :'bus' => :'bus',
        :'licence_type' => :'licenceType',
        :'cpu_hot_plug' => :'cpuHotPlug',
        :'ram_hot_plug' => :'ramHotPlug',
        :'nic_hot_plug' => :'nicHotPlug',
        :'nic_hot_unplug' => :'nicHotUnplug',
        :'disc_virtio_hot_plug' => :'discVirtioHotPlug',
        :'disc_virtio_hot_unplug' => :'discVirtioHotUnplug',
        :'device_number' => :'deviceNumber',
        :'backupunit_id' => :'backupunitId',
        :'user_data' => :'userData'
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
        :'type' => :'String',
        :'size' => :'Float',
        :'availability_zone' => :'String',
        :'image' => :'String',
        :'image_password' => :'String',
        :'image_alias' => :'String',
        :'ssh_keys' => :'Array<String>',
        :'bus' => :'String',
        :'licence_type' => :'String',
        :'cpu_hot_plug' => :'Boolean',
        :'ram_hot_plug' => :'Boolean',
        :'nic_hot_plug' => :'Boolean',
        :'nic_hot_unplug' => :'Boolean',
        :'disc_virtio_hot_plug' => :'Boolean',
        :'disc_virtio_hot_unplug' => :'Boolean',
        :'device_number' => :'Integer',
        :'backupunit_id' => :'String',
        :'user_data' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::VolumeProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::VolumeProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'availability_zone')
        self.availability_zone = attributes[:'availability_zone']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'image_password')
        self.image_password = attributes[:'image_password']
      end

      if attributes.key?(:'image_alias')
        self.image_alias = attributes[:'image_alias']
      end

      if attributes.key?(:'ssh_keys')
        if (value = attributes[:'ssh_keys']).is_a?(Array)
          self.ssh_keys = value
        end
      end

      if attributes.key?(:'bus')
        self.bus = attributes[:'bus']
      end

      if attributes.key?(:'licence_type')
        self.licence_type = attributes[:'licence_type']
      end

      if attributes.key?(:'cpu_hot_plug')
        self.cpu_hot_plug = attributes[:'cpu_hot_plug']
      end

      if attributes.key?(:'ram_hot_plug')
        self.ram_hot_plug = attributes[:'ram_hot_plug']
      end

      if attributes.key?(:'nic_hot_plug')
        self.nic_hot_plug = attributes[:'nic_hot_plug']
      end

      if attributes.key?(:'nic_hot_unplug')
        self.nic_hot_unplug = attributes[:'nic_hot_unplug']
      end

      if attributes.key?(:'disc_virtio_hot_plug')
        self.disc_virtio_hot_plug = attributes[:'disc_virtio_hot_plug']
      end

      if attributes.key?(:'disc_virtio_hot_unplug')
        self.disc_virtio_hot_unplug = attributes[:'disc_virtio_hot_unplug']
      end

      if attributes.key?(:'device_number')
        self.device_number = attributes[:'device_number']
      end

      if attributes.key?(:'backupunit_id')
        self.backupunit_id = attributes[:'backupunit_id']
      end

      if attributes.key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["HDD", "SSD", "SSD Standard", "SSD Premium", "DAS", "ISO"])
      return false unless type_validator.valid?(@type)
      return false if @size.nil?
      availability_zone_validator = EnumAttributeValidator.new('String', ["AUTO", "ZONE_1", "ZONE_2", "ZONE_3"])
      return false unless availability_zone_validator.valid?(@availability_zone)
      bus_validator = EnumAttributeValidator.new('String', ["VIRTIO", "IDE", "UNKNOWN"])
      return false unless bus_validator.valid?(@bus)
      licence_type_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "WINDOWS", "WINDOWS2016", "LINUX", "OTHER"])
      return false unless licence_type_validator.valid?(@licence_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["HDD", "SSD", "SSD Standard", "SSD Premium", "DAS", "ISO"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability_zone Object to be assigned
    def availability_zone=(availability_zone)
      validator = EnumAttributeValidator.new('String', ["AUTO", "ZONE_1", "ZONE_2", "ZONE_3"])
      unless validator.valid?(availability_zone)
        fail ArgumentError, "invalid value for \"availability_zone\", must be one of #{validator.allowable_values}."
      end
      @availability_zone = availability_zone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bus Object to be assigned
    def bus=(bus)
      validator = EnumAttributeValidator.new('String', ["VIRTIO", "IDE", "UNKNOWN"])
      unless validator.valid?(bus)
        fail ArgumentError, "invalid value for \"bus\", must be one of #{validator.allowable_values}."
      end
      @bus = bus
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] licence_type Object to be assigned
    def licence_type=(licence_type)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "WINDOWS", "WINDOWS2016", "LINUX", "OTHER"])
      unless validator.valid?(licence_type)
        fail ArgumentError, "invalid value for \"licence_type\", must be one of #{validator.allowable_values}."
      end
      @licence_type = licence_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          type == o.type &&
          size == o.size &&
          availability_zone == o.availability_zone &&
          image == o.image &&
          image_password == o.image_password &&
          image_alias == o.image_alias &&
          ssh_keys == o.ssh_keys &&
          bus == o.bus &&
          licence_type == o.licence_type &&
          cpu_hot_plug == o.cpu_hot_plug &&
          ram_hot_plug == o.ram_hot_plug &&
          nic_hot_plug == o.nic_hot_plug &&
          nic_hot_unplug == o.nic_hot_unplug &&
          disc_virtio_hot_plug == o.disc_virtio_hot_plug &&
          disc_virtio_hot_unplug == o.disc_virtio_hot_unplug &&
          device_number == o.device_number &&
          backupunit_id == o.backupunit_id &&
          user_data == o.user_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, type, size, availability_zone, image, image_password, image_alias, ssh_keys, bus, licence_type, cpu_hot_plug, ram_hot_plug, nic_hot_plug, nic_hot_unplug, disc_virtio_hot_plug, disc_virtio_hot_unplug, device_number, backupunit_id, user_data].hash
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
