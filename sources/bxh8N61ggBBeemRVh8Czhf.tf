import {
  to = segment_source.id-bxh8N61ggBBeemRVh8Czhf
  id = "bxh8N61ggBBeemRVh8Czhf"
}

resource "segment_source" "id-bxh8N61ggBBeemRVh8Czhf" {
  enabled = true
  labels = [
    {
      key   = "org"
      value = "bridgecrest"
    },
  ]
  metadata = {
    id = "ymOV6oZKJ9"
  }
  name     = "NeuAnalytics-Remittance"
  settings = jsonencode({})
  slug     = "remittancefile"
}