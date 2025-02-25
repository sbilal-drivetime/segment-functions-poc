import {
  to = segment_source.id-pcT6iL9neSdoeAwwMzsAmh
  id = "pcT6iL9neSdoeAwwMzsAmh"
}

resource "segment_source" "id-pcT6iL9neSdoeAwwMzsAmh" {
  enabled = false
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "oQ5dZPW0Ii"
  }
  name = "Salesforce Marketing Cloud (Akshay POC)"
  settings = jsonencode({
    client-id = "ozc23h348fnil3a3rsbzg3je"
    subdomain = "mcpqvpv75vnfbprnl1bmmg2x07r0"
  })
  slug = "salesforce_marketing_cloud_akshay_poc"
}