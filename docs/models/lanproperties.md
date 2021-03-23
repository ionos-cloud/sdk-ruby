# LanProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **name** | **String** | A name of that resource | \[optional\] |
| **ip\_failover** | [**Array&lt;IPFailover&gt;**](ipfailover.md) | IP failover configurations for lan | \[optional\] |
| **pcc** | **String** | Unique identifier of the private cross connect the given LAN is connected to if any | \[optional\] |
| **public** | **Boolean** | Does this LAN faces the public Internet or not | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LanProperties.new(
  name: My resource,
  ip_failover: null,
  pcc: 3c11273c-b3e1-4ca3-8134-84fd2dd4ebec,
  public: true
)
```

