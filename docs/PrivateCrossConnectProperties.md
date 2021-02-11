# PrivateCrossConnectProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name of that resource | [optional] |
| **description** | **String** | Human readable description | [optional] |
| **peers** | [**Array&lt;Peer&gt;**](Peer.md) | Read-Only attribute. Lists LAN&#39;s joined to this private cross connect | [optional][readonly] |
| **connectable_datacenters** | [**Array&lt;ConnectableDatacenter&gt;**](ConnectableDatacenter.md) | Read-Only attribute. Lists datacenters that can be joined to this private cross connect | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::PrivateCrossConnectProperties.new(
  name: My resource,
  description: Private Cross-Connect between datacenter &#39;A&#39; and datacenter &#39;B&#39; ,
  peers: { &quot;peers&quot;: [ { &quot;id&quot;: &quot;&lt;lan-id&gt;&quot;, &quot;name&quot;: &quot;&lt;lan-name&gt;&quot;, &quot;datacenterId&quot;: &quot;&lt;dc-uuid&gt;&quot;,  &quot;datacenterName&quot;: &quot;&lt;dc-name&gt;&quot;, &quot;location&quot;: &quot;&lt;de/fra&gt;&quot;} ] },
  connectable_datacenters: { &quot;connectableDatacenters&quot;: [ { &quot;id&quot;: &quot;&lt;dc-id&gt;&quot;, &quot;name&quot;: &quot;&lt;dc-name&gt;&quot;, &quot;location&quot;: &quot;&lt;de/fra&gt;&quot;} ] }
)
```

