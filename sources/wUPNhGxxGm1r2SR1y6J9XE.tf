import {
  to = segment_source.id-wUPNhGxxGm1r2SR1y6J9XE
  id = "wUPNhGxxGm1r2SR1y6J9XE"
}

resource "segment_source" "id-wUPNhGxxGm1r2SR1y6J9XE" {
  enabled = false
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "BcNextMockData"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "bcnextmockdata"
}