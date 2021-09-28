=begin
#CLOUD API

#IONOS Enterprise-grade Infrastructure as a Service (IaaS) solutions can be managed through the Cloud API, in addition or as an alternative to the \"Data Center Designer\" (DCD) browser-based tool.    Both methods employ consistent concepts and features, deliver similar power and flexibility, and can be used to perform a multitude of management tasks, including adding servers, volumes, configuring networks, and so on.

The version of the OpenAPI document: 6.0-SDK.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module Ionoscloud
  class ImageProperties
    # A name of that resource
    attr_accessor :name

    # Human readable description
    attr_accessor :description

    # Location of that image/snapshot. 
    attr_accessor :location

    # The size of the image in GB
    attr_accessor :size

    # Is capable of CPU hot plug (no reboot required)
    attr_accessor :cpu_hot_plug

    # Is capable of CPU hot unplug (no reboot required)
    attr_accessor :cpu_hot_unplug

    # Is capable of memory hot plug (no reboot required)
    attr_accessor :ram_hot_plug

    # Is capable of memory hot unplug (no reboot required)
    attr_accessor :ram_hot_unplug

    # Is capable of nic hot plug (no reboot required)
    attr_accessor :nic_hot_plug

    # Is capable of nic hot unplug (no reboot required)
    attr_accessor :nic_hot_unplug

    # Is capable of Virt-IO drive hot plug (no reboot required)
    attr_accessor :disc_virtio_hot_plug

    # Is capable of Virt-IO drive hot unplug (no reboot required). This works only for non-Windows virtual Machines.
    attr_accessor :disc_virtio_hot_unplug

    # Is capable of SCSI drive hot plug (no reboot required)
    attr_accessor :disc_scsi_hot_plug

    # Is capable of SCSI drive hot unplug (no reboot required). This works only for non-Windows virtual Machines.
    attr_accessor :disc_scsi_hot_unplug

    # OS type of this Image
    attr_accessor :licence_type

    # This indicates the type of image
    attr_accessor :image_type

    # Indicates if the image is part of the public repository or not
    attr_accessor :public

    # List of image aliases mapped for this Image
    attr_accessor :image_aliases

    # Cloud init compatibility
    attr_accessor :cloud_init

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
        :'description' => :'description',
        :'location' => :'location',
        :'size' => :'size',
        :'cpu_hot_plug' => :'cpuHotPlug',
        :'cpu_hot_unplug' => :'cpuHotUnplug',
        :'ram_hot_plug' => :'ramHotPlug',
        :'ram_hot_unplug' => :'ramHotUnplug',
        :'nic_hot_plug' => :'nicHotPlug',
        :'nic_hot_unplug' => :'nicHotUnplug',
        :'disc_virtio_hot_plug' => :'discVirtioHotPlug',
        :'disc_virtio_hot_unplug' => :'discVirtioHotUnplug',
        :'disc_scsi_hot_plug' => :'discScsiHotPlug',
        :'disc_scsi_hot_unplug' => :'discScsiHotUnplug',
        :'licence_type' => :'licenceType',
        :'image_type' => :'imageType',
        :'public' => :'public',
        :'image_aliases' => :'imageAliases',
        :'cloud_init' => :'cloudInit'
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
        :'description' => :'String',
        :'location' => :'String',
        :'size' => :'Float',
        :'cpu_hot_plug' => :'Boolean',
        :'cpu_hot_unplug' => :'Boolean',
        :'ram_hot_plug' => :'Boolean',
        :'ram_hot_unplug' => :'Boolean',
        :'nic_hot_plug' => :'Boolean',
        :'nic_hot_unplug' => :'Boolean',
        :'disc_virtio_hot_plug' => :'Boolean',
        :'disc_virtio_hot_unplug' => :'Boolean',
        :'disc_scsi_hot_plug' => :'Boolean',
        :'disc_scsi_hot_unplug' => :'Boolean',
        :'licence_type' => :'String',
        :'image_type' => :'String',
        :'public' => :'Boolean',
        :'image_aliases' => :'Array<String>',
        :'cloud_init' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::ImageProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::ImageProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'cpu_hot_plug')
        self.cpu_hot_plug = attributes[:'cpu_hot_plug']
      end

      if attributes.key?(:'cpu_hot_unplug')
        self.cpu_hot_unplug = attributes[:'cpu_hot_unplug']
      end

      if attributes.key?(:'ram_hot_plug')
        self.ram_hot_plug = attributes[:'ram_hot_plug']
      end

      if attributes.key?(:'ram_hot_unplug')
        self.ram_hot_unplug = attributes[:'ram_hot_unplug']
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

      if attributes.key?(:'disc_scsi_hot_plug')
        self.disc_scsi_hot_plug = attributes[:'disc_scsi_hot_plug']
      end

      if attributes.key?(:'disc_scsi_hot_unplug')
        self.disc_scsi_hot_unplug = attributes[:'disc_scsi_hot_unplug']
      end

      if attributes.key?(:'licence_type')
        self.licence_type = attributes[:'licence_type']
      end

      if attributes.key?(:'image_type')
        self.image_type = attributes[:'image_type']
      end

      if attributes.key?(:'public')
        self.public = attributes[:'public']
      end

      if attributes.key?(:'image_aliases')
        if (value = attributes[:'image_aliases']).is_a?(Array)
          self.image_aliases = value
        end
      end

      if attributes.key?(:'cloud_init')
        self.cloud_init = attributes[:'cloud_init']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @licence_type.nil?
        invalid_properties.push('invalid value for "licence_type", licence_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @licence_type.nil?
      licence_type_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "WINDOWS", "WINDOWS2016", "LINUX", "OTHER"])
      return false unless licence_type_validator.valid?(@licence_type)
      image_type_validator = EnumAttributeValidator.new('String', ["HDD", "CDROM", "UNKNOWN"])
      return false unless image_type_validator.valid?(@image_type)
      cloud_init_validator = EnumAttributeValidator.new('String', ["NONE", "V1"])
      return false unless cloud_init_validator.valid?(@cloud_init)
      true
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image_type Object to be assigned
    def image_type=(image_type)
      validator = EnumAttributeValidator.new('String', ["HDD", "CDROM", "UNKNOWN"])
      unless validator.valid?(image_type)
        fail ArgumentError, "invalid value for \"image_type\", must be one of #{validator.allowable_values}."
      end
      @image_type = image_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cloud_init Object to be assigned
    def cloud_init=(cloud_init)
      validator = EnumAttributeValidator.new('String', ["NONE", "V1"])
      unless validator.valid?(cloud_init)
        fail ArgumentError, "invalid value for \"cloud_init\", must be one of #{validator.allowable_values}."
      end
      @cloud_init = cloud_init
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          location == o.location &&
          size == o.size &&
          cpu_hot_plug == o.cpu_hot_plug &&
          cpu_hot_unplug == o.cpu_hot_unplug &&
          ram_hot_plug == o.ram_hot_plug &&
          ram_hot_unplug == o.ram_hot_unplug &&
          nic_hot_plug == o.nic_hot_plug &&
          nic_hot_unplug == o.nic_hot_unplug &&
          disc_virtio_hot_plug == o.disc_virtio_hot_plug &&
          disc_virtio_hot_unplug == o.disc_virtio_hot_unplug &&
          disc_scsi_hot_plug == o.disc_scsi_hot_plug &&
          disc_scsi_hot_unplug == o.disc_scsi_hot_unplug &&
          licence_type == o.licence_type &&
          image_type == o.image_type &&
          public == o.public &&
          image_aliases == o.image_aliases &&
          cloud_init == o.cloud_init
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, location, size, cpu_hot_plug, cpu_hot_unplug, ram_hot_plug, ram_hot_unplug, nic_hot_plug, nic_hot_unplug, disc_virtio_hot_plug, disc_virtio_hot_unplug, disc_scsi_hot_plug, disc_scsi_hot_unplug, licence_type, image_type, public, image_aliases, cloud_init].hash
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
