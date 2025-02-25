import {
  to = segment_source.id-mp9fmVLnYmKXqV4CB62eMF
  id = "mp9fmVLnYmKXqV4CB62eMF"
}

resource "segment_source" "id-mp9fmVLnYmKXqV4CB62eMF" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "qqE6TuEDEM"
  }
  name     = "PEGA"
  settings = jsonencode({})
  slug     = "pega"
}