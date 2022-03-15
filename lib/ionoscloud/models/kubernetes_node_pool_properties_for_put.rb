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
  class KubernetesNodePoolPropertiesForPut
  
    # A Kubernetes node pool name. Valid Kubernetes node pool name must be 63 characters or less and must be empty or begin and end with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
    attr_accessor :name


    # The number of nodes that make up the node pool.
    attr_accessor :node_count


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


    # Optional array of reserved public IP addresses to be used by the nodes. IPs must be from same location as the data center used for the node pool. The array must contain one more IP than the maximum possible number of nodes (nodeCount+1 for fixed number of nodes or maxNodeCount+1 when auto scaling is used). The extra IP is used when the nodes are rebuilt.
    attr_accessor :public_ips

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',

        :'node_count' => :'nodeCount',

        :'k8s_version' => :'k8sVersion',

        :'maintenance_window' => :'maintenanceWindow',

        :'auto_scaling' => :'autoScaling',

        :'lans' => :'lans',

        :'labels' => :'labels',

        :'annotations' => :'annotations',

        :'public_ips' => :'publicIps'
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

        :'node_count' => :'Integer',

        :'k8s_version' => :'String',

        :'maintenance_window' => :'KubernetesMaintenanceWindow',

        :'auto_scaling' => :'KubernetesAutoScaling',

        :'lans' => :'Array<KubernetesNodePoolLan>',

        :'labels' => :'Hash<String, String>',

        :'annotations' => :'Hash<String, String>',

        :'public_ips' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::KubernetesNodePoolPropertiesForPut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::KubernetesNodePoolPropertiesForPut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }
      

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end


      if attributes.key?(:'node_count')
        self.node_count = attributes[:'node_count']
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
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      

      if @node_count.nil?
        invalid_properties.push('invalid value for "node_count", node_count cannot be nil.')
      end








      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      

      return false if @node_count.nil?







      true
    end

    








    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
        name == o.name &&
        node_count == o.node_count &&
        k8s_version == o.k8s_version &&
        maintenance_window == o.maintenance_window &&
        auto_scaling == o.auto_scaling &&
        lans == o.lans &&
        labels == o.labels &&
        annotations == o.annotations &&
        public_ips == o.public_ips
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, node_count, k8s_version, maintenance_window, auto_scaling, lans, labels, annotations, public_ips].hash
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
