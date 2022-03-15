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
  class KubernetesNodePoolProperties
  
    # A Kubernetes node pool name. Valid Kubernetes node pool name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
    attr_accessor :name


    # A valid ID of the data center, to which user has access.
    attr_accessor :datacenter_id


    # The number of nodes that make up the node pool.
    attr_accessor :node_count


    # A valid CPU family name.
    attr_accessor :cpu_family


    # The number of cores for the node.
    attr_accessor :cores_count


    # The RAM size for the node. Must be set in multiples of 1024 MB, with minimum size is of 2048 MB.
    attr_accessor :ram_size


    # The availability zone in which the target VM should be provisioned.
    attr_accessor :availability_zone


    # The type of hardware for the volume.
    attr_accessor :storage_type


    # The size of the volume in GB. The size should be greater than 10GB.
    attr_accessor :storage_size


    # The Kubernetes version the nodepool is running. This imposes restrictions on what Kubernetes versions can be run in a cluster's nodepools. Additionally, not all Kubernetes versions are viable upgrade targets for all prior versions.
    attr_accessor :k8s_version


    attr_accessor :maintenance_window


    attr_accessor :auto_scaling


    # array of additional LANs attached to worker nodes
    attr_accessor :lans


    # map of labels attached to node pool.
    attr_accessor :labels


    # map of annotations attached to node pool.
    attr_accessor :annotations


    # Optional array of reserved public IP addresses to be used by the nodes. IPs must be from same location as the data center used for the node pool. The array must contain one more IP than maximum number possible number of nodes (nodeCount+1 for fixed number of nodes or maxNodeCount+1 when auto scaling is used). The extra IP is used when the nodes are rebuilt.
    attr_accessor :public_ips


    # List of available versions for upgrading the node pool.
    attr_accessor :available_upgrade_versions


    # Public IP address for the gateway performing source NAT for the node pool's nodes belonging to a private cluster. Required only if the node pool belongs to a private cluster.
    attr_accessor :gateway_ip

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

        :'datacenter_id' => :'datacenterId',

        :'node_count' => :'nodeCount',

        :'cpu_family' => :'cpuFamily',

        :'cores_count' => :'coresCount',

        :'ram_size' => :'ramSize',

        :'availability_zone' => :'availabilityZone',

        :'storage_type' => :'storageType',

        :'storage_size' => :'storageSize',

        :'k8s_version' => :'k8sVersion',

        :'maintenance_window' => :'maintenanceWindow',

        :'auto_scaling' => :'autoScaling',

        :'lans' => :'lans',

        :'labels' => :'labels',

        :'annotations' => :'annotations',

        :'public_ips' => :'publicIps',

        :'available_upgrade_versions' => :'availableUpgradeVersions',

        :'gateway_ip' => :'gatewayIp'
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

        :'datacenter_id' => :'String',

        :'node_count' => :'Integer',

        :'cpu_family' => :'String',

        :'cores_count' => :'Integer',

        :'ram_size' => :'Integer',

        :'availability_zone' => :'String',

        :'storage_type' => :'String',

        :'storage_size' => :'Integer',

        :'k8s_version' => :'String',

        :'maintenance_window' => :'KubernetesMaintenanceWindow',

        :'auto_scaling' => :'KubernetesAutoScaling',

        :'lans' => :'Array<KubernetesNodePoolLan>',

        :'labels' => :'Hash<String, String>',

        :'annotations' => :'Hash<String, String>',

        :'public_ips' => :'Array<String>',

        :'available_upgrade_versions' => :'Array<String>',

        :'gateway_ip' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::KubernetesNodePoolProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::KubernetesNodePoolProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }
      

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end


      if attributes.key?(:'datacenter_id')
        self.datacenter_id = attributes[:'datacenter_id']
      end


      if attributes.key?(:'node_count')
        self.node_count = attributes[:'node_count']
      end


      if attributes.key?(:'cpu_family')
        self.cpu_family = attributes[:'cpu_family']
      end


      if attributes.key?(:'cores_count')
        self.cores_count = attributes[:'cores_count']
      end


      if attributes.key?(:'ram_size')
        self.ram_size = attributes[:'ram_size']
      end


      if attributes.key?(:'availability_zone')
        self.availability_zone = attributes[:'availability_zone']
      end


      if attributes.key?(:'storage_type')
        self.storage_type = attributes[:'storage_type']
      end


      if attributes.key?(:'storage_size')
        self.storage_size = attributes[:'storage_size']
      end


      if attributes.key?(:'k8s_version')
        self.k8s_version = attributes[:'k8s_version']
      end


      if attributes.key?(:'maintenance_window')
        self.maintenance_window = attributes[:'maintenance_window']
      end


      if attributes.key?(:'auto_scaling')
        self.auto_scaling = attributes[:'auto_scaling']
      end


      if attributes.key?(:'lans') && (value = attributes[:'lans']).is_a?(Array)
        self.lans = value
      end


      if attributes.key?(:'labels') && (value = attributes[:'labels']).is_a?(Hash)
        self.labels = value
      end


      if attributes.key?(:'annotations') && (value = attributes[:'annotations']).is_a?(Hash)
        self.annotations = value
      end


      if attributes.key?(:'public_ips') && (value = attributes[:'public_ips']).is_a?(Array)
        self.public_ips = value
      end


      if attributes.key?(:'available_upgrade_versions') && (value = attributes[:'available_upgrade_versions']).is_a?(Array)
        self.available_upgrade_versions = value
      end


      if attributes.key?(:'gateway_ip')
        self.gateway_ip = attributes[:'gateway_ip']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end


      if @datacenter_id.nil?
        invalid_properties.push('invalid value for "datacenter_id", datacenter_id cannot be nil.')
      end


      if @node_count.nil?
        invalid_properties.push('invalid value for "node_count", node_count cannot be nil.')
      end


      if @cpu_family.nil?
        invalid_properties.push('invalid value for "cpu_family", cpu_family cannot be nil.')
      end


      if @cores_count.nil?
        invalid_properties.push('invalid value for "cores_count", cores_count cannot be nil.')
      end


      if @ram_size.nil?
        invalid_properties.push('invalid value for "ram_size", ram_size cannot be nil.')
      end


      if @availability_zone.nil?
        invalid_properties.push('invalid value for "availability_zone", availability_zone cannot be nil.')
      end


      if @storage_type.nil?
        invalid_properties.push('invalid value for "storage_type", storage_type cannot be nil.')
      end


      if @storage_size.nil?
        invalid_properties.push('invalid value for "storage_size", storage_size cannot be nil.')
      end










      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      
      return false if @name.nil?

      return false if @datacenter_id.nil?

      return false if @node_count.nil?

      return false if @cpu_family.nil?

      return false if @cores_count.nil?

      return false if @ram_size.nil?

      return false if @availability_zone.nil?
      availability_zone_validator = EnumAttributeValidator.new('String', ["AUTO", "ZONE_1", "ZONE_2"])
      return false unless availability_zone_validator.valid?(@availability_zone)

      return false if @storage_type.nil?
      storage_type_validator = EnumAttributeValidator.new('String', ["HDD", "SSD"])
      return false unless storage_type_validator.valid?(@storage_type)

      return false if @storage_size.nil?









      true
    end

    






    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability_zone Object to be assigned
    def availability_zone=(availability_zone)
      validator = EnumAttributeValidator.new('String', ["AUTO", "ZONE_1", "ZONE_2"])
      unless validator.valid?(availability_zone)
        fail ArgumentError, "invalid value for \"availability_zone\", must be one of #{validator.allowable_values}."
      end
      @availability_zone = availability_zone
    end


    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] storage_type Object to be assigned
    def storage_type=(storage_type)
      validator = EnumAttributeValidator.new('String', ["HDD", "SSD"])
      unless validator.valid?(storage_type)
        fail ArgumentError, "invalid value for \"storage_type\", must be one of #{validator.allowable_values}."
      end
      @storage_type = storage_type
    end











    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        name == o.name &&
        datacenter_id == o.datacenter_id &&
        node_count == o.node_count &&
        cpu_family == o.cpu_family &&
        cores_count == o.cores_count &&
        ram_size == o.ram_size &&
        availability_zone == o.availability_zone &&
        storage_type == o.storage_type &&
        storage_size == o.storage_size &&
        k8s_version == o.k8s_version &&
        maintenance_window == o.maintenance_window &&
        auto_scaling == o.auto_scaling &&
        lans == o.lans &&
        labels == o.labels &&
        annotations == o.annotations &&
        public_ips == o.public_ips &&
        available_upgrade_versions == o.available_upgrade_versions &&
        gateway_ip == o.gateway_ip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, datacenter_id, node_count, cpu_family, cores_count, ram_size, availability_zone, storage_type, storage_size, k8s_version, maintenance_window, auto_scaling, lans, labels, annotations, public_ips, available_upgrade_versions, gateway_ip].hash
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
