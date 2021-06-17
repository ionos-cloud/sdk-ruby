=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 6.0-SDK.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module Ionoscloud
  class GroupProperties
    # A name of that resource
    attr_accessor :name

    # create data center privilege
    attr_accessor :create_data_center

    # create snapshot privilege
    attr_accessor :create_snapshot

    # reserve ip block privilege
    attr_accessor :reserve_ip

    # activity log access privilege
    attr_accessor :access_activity_log

    # create pcc privilege
    attr_accessor :create_pcc

    # S3 privilege
    attr_accessor :s3_privilege

    # create backup unit privilege
    attr_accessor :create_backup_unit

    # create internet access privilege
    attr_accessor :create_internet_access

    # create kubernetes cluster privilege
    attr_accessor :create_k8s_cluster

    # create Flow Logs privilege
    attr_accessor :create_flow_log

    # Privilege for a group to access and manage monitoring related functionality (access metrics, CRUD on alarms, alarm-actions etc) using Monotoring-as-a-Service (MaaS).
    attr_accessor :access_and_manage_monitoring

    # Privilege for a group to access and manage certificates.
    attr_accessor :access_and_manage_certificates

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'create_data_center' => :'createDataCenter',
        :'create_snapshot' => :'createSnapshot',
        :'reserve_ip' => :'reserveIp',
        :'access_activity_log' => :'accessActivityLog',
        :'create_pcc' => :'createPcc',
        :'s3_privilege' => :'s3Privilege',
        :'create_backup_unit' => :'createBackupUnit',
        :'create_internet_access' => :'createInternetAccess',
        :'create_k8s_cluster' => :'createK8sCluster',
        :'create_flow_log' => :'createFlowLog',
        :'access_and_manage_monitoring' => :'accessAndManageMonitoring',
        :'access_and_manage_certificates' => :'accessAndManageCertificates'
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
        :'create_data_center' => :'Boolean',
        :'create_snapshot' => :'Boolean',
        :'reserve_ip' => :'Boolean',
        :'access_activity_log' => :'Boolean',
        :'create_pcc' => :'Boolean',
        :'s3_privilege' => :'Boolean',
        :'create_backup_unit' => :'Boolean',
        :'create_internet_access' => :'Boolean',
        :'create_k8s_cluster' => :'Boolean',
        :'create_flow_log' => :'Boolean',
        :'access_and_manage_monitoring' => :'Boolean',
        :'access_and_manage_certificates' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Ionoscloud::GroupProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Ionoscloud::GroupProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'create_data_center')
        self.create_data_center = attributes[:'create_data_center']
      end

      if attributes.key?(:'create_snapshot')
        self.create_snapshot = attributes[:'create_snapshot']
      end

      if attributes.key?(:'reserve_ip')
        self.reserve_ip = attributes[:'reserve_ip']
      end

      if attributes.key?(:'access_activity_log')
        self.access_activity_log = attributes[:'access_activity_log']
      end

      if attributes.key?(:'create_pcc')
        self.create_pcc = attributes[:'create_pcc']
      end

      if attributes.key?(:'s3_privilege')
        self.s3_privilege = attributes[:'s3_privilege']
      end

      if attributes.key?(:'create_backup_unit')
        self.create_backup_unit = attributes[:'create_backup_unit']
      end

      if attributes.key?(:'create_internet_access')
        self.create_internet_access = attributes[:'create_internet_access']
      end

      if attributes.key?(:'create_k8s_cluster')
        self.create_k8s_cluster = attributes[:'create_k8s_cluster']
      end

      if attributes.key?(:'create_flow_log')
        self.create_flow_log = attributes[:'create_flow_log']
      end

      if attributes.key?(:'access_and_manage_monitoring')
        self.access_and_manage_monitoring = attributes[:'access_and_manage_monitoring']
      end

      if attributes.key?(:'access_and_manage_certificates')
        self.access_and_manage_certificates = attributes[:'access_and_manage_certificates']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          create_data_center == o.create_data_center &&
          create_snapshot == o.create_snapshot &&
          reserve_ip == o.reserve_ip &&
          access_activity_log == o.access_activity_log &&
          create_pcc == o.create_pcc &&
          s3_privilege == o.s3_privilege &&
          create_backup_unit == o.create_backup_unit &&
          create_internet_access == o.create_internet_access &&
          create_k8s_cluster == o.create_k8s_cluster &&
          create_flow_log == o.create_flow_log &&
          access_and_manage_monitoring == o.access_and_manage_monitoring &&
          access_and_manage_certificates == o.access_and_manage_certificates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, create_data_center, create_snapshot, reserve_ip, access_activity_log, create_pcc, s3_privilege, create_backup_unit, create_internet_access, create_k8s_cluster, create_flow_log, access_and_manage_monitoring, access_and_manage_certificates].hash
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
