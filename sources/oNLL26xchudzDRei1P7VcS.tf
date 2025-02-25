import {
  to = segment_source.id-oNLL26xchudzDRei1P7VcS
  id = "oNLL26xchudzDRei1P7VcS"
}

resource "segment_source" "id-oNLL26xchudzDRei1P7VcS" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "U9mT0bPcI6"
  }
  name     = "dt-leads-api"
  settings = jsonencode({})
  slug     = "dt_leads_api"
}