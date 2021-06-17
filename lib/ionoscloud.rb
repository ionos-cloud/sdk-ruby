=begin
#CLOUD API

#An enterprise-grade Infrastructure is provided as a Service (IaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.   The API allows you to perform a variety of management tasks such as spinning up additional servers, adding volumes, adjusting networking, and so forth. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive.

The version of the OpenAPI document: 6.0-SDK.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

# Common files
require 'ionoscloud/api_client'
require 'ionoscloud/api_error'
require 'ionoscloud/version'
require 'ionoscloud/configuration'

# Models
require 'ionoscloud/models/attached_volumes'
require 'ionoscloud/models/backup_unit'
require 'ionoscloud/models/backup_unit_properties'
require 'ionoscloud/models/backup_unit_sso'
require 'ionoscloud/models/backup_units'
require 'ionoscloud/models/balanced_nics'
require 'ionoscloud/models/cdroms'
require 'ionoscloud/models/connectable_datacenter'
require 'ionoscloud/models/contract'
require 'ionoscloud/models/contract_properties'
require 'ionoscloud/models/contracts'
require 'ionoscloud/models/cpu_architecture_properties'
require 'ionoscloud/models/data_center_entities'
require 'ionoscloud/models/datacenter'
require 'ionoscloud/models/datacenter_element_metadata'
require 'ionoscloud/models/datacenter_properties'
require 'ionoscloud/models/datacenters'
require 'ionoscloud/models/error'
require 'ionoscloud/models/error_message'
require 'ionoscloud/models/firewall_rule'
require 'ionoscloud/models/firewall_rules'
require 'ionoscloud/models/firewallrule_properties'
require 'ionoscloud/models/flow_log'
require 'ionoscloud/models/flow_log_properties'
require 'ionoscloud/models/flow_log_put'
require 'ionoscloud/models/flow_logs'
require 'ionoscloud/models/group'
require 'ionoscloud/models/group_entities'
require 'ionoscloud/models/group_members'
require 'ionoscloud/models/group_properties'
require 'ionoscloud/models/group_share'
require 'ionoscloud/models/group_share_properties'
require 'ionoscloud/models/group_shares'
require 'ionoscloud/models/group_users'
require 'ionoscloud/models/groups'
require 'ionoscloud/models/ip_failover'
require 'ionoscloud/models/image'
require 'ionoscloud/models/image_properties'
require 'ionoscloud/models/images'
require 'ionoscloud/models/info'
require 'ionoscloud/models/ip_block'
require 'ionoscloud/models/ip_block_properties'
require 'ionoscloud/models/ip_blocks'
require 'ionoscloud/models/ip_consumer'
require 'ionoscloud/models/kubernetes_auto_scaling'
require 'ionoscloud/models/kubernetes_cluster'
require 'ionoscloud/models/kubernetes_cluster_entities'
require 'ionoscloud/models/kubernetes_cluster_for_post'
require 'ionoscloud/models/kubernetes_cluster_for_put'
require 'ionoscloud/models/kubernetes_cluster_properties'
require 'ionoscloud/models/kubernetes_cluster_properties_for_post'
require 'ionoscloud/models/kubernetes_cluster_properties_for_put'
require 'ionoscloud/models/kubernetes_clusters'
require 'ionoscloud/models/kubernetes_maintenance_window'
require 'ionoscloud/models/kubernetes_node'
require 'ionoscloud/models/kubernetes_node_metadata'
require 'ionoscloud/models/kubernetes_node_pool'
require 'ionoscloud/models/kubernetes_node_pool_for_post'
require 'ionoscloud/models/kubernetes_node_pool_for_put'
require 'ionoscloud/models/kubernetes_node_pool_lan'
require 'ionoscloud/models/kubernetes_node_pool_lan_routes'
require 'ionoscloud/models/kubernetes_node_pool_properties'
require 'ionoscloud/models/kubernetes_node_pool_properties_for_post'
require 'ionoscloud/models/kubernetes_node_pool_properties_for_put'
require 'ionoscloud/models/kubernetes_node_pools'
require 'ionoscloud/models/kubernetes_node_properties'
require 'ionoscloud/models/kubernetes_nodes'
require 'ionoscloud/models/label'
require 'ionoscloud/models/label_properties'
require 'ionoscloud/models/label_resource'
require 'ionoscloud/models/label_resource_properties'
require 'ionoscloud/models/label_resources'
require 'ionoscloud/models/labels'
require 'ionoscloud/models/lan'
require 'ionoscloud/models/lan_entities'
require 'ionoscloud/models/lan_nics'
require 'ionoscloud/models/lan_post'
require 'ionoscloud/models/lan_properties'
require 'ionoscloud/models/lan_properties_post'
require 'ionoscloud/models/lans'
require 'ionoscloud/models/loadbalancer'
require 'ionoscloud/models/loadbalancer_entities'
require 'ionoscloud/models/loadbalancer_properties'
require 'ionoscloud/models/loadbalancers'
require 'ionoscloud/models/location'
require 'ionoscloud/models/location_properties'
require 'ionoscloud/models/locations'
require 'ionoscloud/models/nat_gateway'
require 'ionoscloud/models/nat_gateway_entities'
require 'ionoscloud/models/nat_gateway_lan_properties'
require 'ionoscloud/models/nat_gateway_properties'
require 'ionoscloud/models/nat_gateway_put'
require 'ionoscloud/models/nat_gateway_rule'
require 'ionoscloud/models/nat_gateway_rule_properties'
require 'ionoscloud/models/nat_gateway_rule_protocol'
require 'ionoscloud/models/nat_gateway_rule_put'
require 'ionoscloud/models/nat_gateway_rule_type'
require 'ionoscloud/models/nat_gateway_rules'
require 'ionoscloud/models/nat_gateways'
require 'ionoscloud/models/network_load_balancer'
require 'ionoscloud/models/network_load_balancer_entities'
require 'ionoscloud/models/network_load_balancer_forwarding_rule'
require 'ionoscloud/models/network_load_balancer_forwarding_rule_health_check'
require 'ionoscloud/models/network_load_balancer_forwarding_rule_properties'
require 'ionoscloud/models/network_load_balancer_forwarding_rule_put'
require 'ionoscloud/models/network_load_balancer_forwarding_rule_target'
require 'ionoscloud/models/network_load_balancer_forwarding_rule_target_health_check'
require 'ionoscloud/models/network_load_balancer_forwarding_rules'
require 'ionoscloud/models/network_load_balancer_properties'
require 'ionoscloud/models/network_load_balancer_put'
require 'ionoscloud/models/network_load_balancers'
require 'ionoscloud/models/nic'
require 'ionoscloud/models/nic_entities'
require 'ionoscloud/models/nic_properties'
require 'ionoscloud/models/nic_put'
require 'ionoscloud/models/nics'
require 'ionoscloud/models/no_state_meta_data'
require 'ionoscloud/models/pagination_links'
require 'ionoscloud/models/peer'
require 'ionoscloud/models/private_cross_connect'
require 'ionoscloud/models/private_cross_connect_properties'
require 'ionoscloud/models/private_cross_connects'
require 'ionoscloud/models/remote_console_url'
require 'ionoscloud/models/request'
require 'ionoscloud/models/request_metadata'
require 'ionoscloud/models/request_properties'
require 'ionoscloud/models/request_status'
require 'ionoscloud/models/request_status_metadata'
require 'ionoscloud/models/request_target'
require 'ionoscloud/models/requests'
require 'ionoscloud/models/resource'
require 'ionoscloud/models/resource_entities'
require 'ionoscloud/models/resource_groups'
require 'ionoscloud/models/resource_limits'
require 'ionoscloud/models/resource_properties'
require 'ionoscloud/models/resource_reference'
require 'ionoscloud/models/resources'
require 'ionoscloud/models/resources_users'
require 'ionoscloud/models/s3_key'
require 'ionoscloud/models/s3_key_metadata'
require 'ionoscloud/models/s3_key_properties'
require 'ionoscloud/models/s3_keys'
require 'ionoscloud/models/s3_object_storage_sso'
require 'ionoscloud/models/server'
require 'ionoscloud/models/server_entities'
require 'ionoscloud/models/server_properties'
require 'ionoscloud/models/servers'
require 'ionoscloud/models/snapshot'
require 'ionoscloud/models/snapshot_properties'
require 'ionoscloud/models/snapshots'
require 'ionoscloud/models/target_port_range'
require 'ionoscloud/models/template'
require 'ionoscloud/models/template_properties'
require 'ionoscloud/models/templates'
require 'ionoscloud/models/token'
require 'ionoscloud/models/type'
require 'ionoscloud/models/user'
require 'ionoscloud/models/user_metadata'
require 'ionoscloud/models/user_post'
require 'ionoscloud/models/user_properties'
require 'ionoscloud/models/user_properties_post'
require 'ionoscloud/models/user_properties_put'
require 'ionoscloud/models/user_put'
require 'ionoscloud/models/users'
require 'ionoscloud/models/users_entities'
require 'ionoscloud/models/volume'
require 'ionoscloud/models/volume_properties'
require 'ionoscloud/models/volumes'

# APIs
require 'ionoscloud/api/_api'
require 'ionoscloud/api/backup_units_api'
require 'ionoscloud/api/contract_resources_api'
require 'ionoscloud/api/data_centers_api'
require 'ionoscloud/api/firewall_rules_api'
require 'ionoscloud/api/flow_logs_api'
require 'ionoscloud/api/ip_blocks_api'
require 'ionoscloud/api/images_api'
require 'ionoscloud/api/kubernetes_api'
require 'ionoscloud/api/labels_api'
require 'ionoscloud/api/lans_api'
require 'ionoscloud/api/load_balancers_api'
require 'ionoscloud/api/locations_api'
require 'ionoscloud/api/nat_gateways_api'
require 'ionoscloud/api/network_interfaces_api'
require 'ionoscloud/api/network_load_balancers_api'
require 'ionoscloud/api/private_cross_connects_api'
require 'ionoscloud/api/requests_api'
require 'ionoscloud/api/servers_api'
require 'ionoscloud/api/snapshots_api'
require 'ionoscloud/api/templates_api'
require 'ionoscloud/api/user_management_api'
require 'ionoscloud/api/user_s3_keys_api'
require 'ionoscloud/api/volumes_api'

module Ionoscloud
  class << self
    # Customize default settings for the SDK using block.
    #   Ionoscloud.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
