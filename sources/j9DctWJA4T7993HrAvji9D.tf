import {
  to = segment_source.id-j9DctWJA4T7993HrAvji9D
  id = "j9DctWJA4T7993HrAvji9D"
}

resource "segment_source" "id-j9DctWJA4T7993HrAvji9D" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "BcNext_CustomEvent"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "bcnext_customevent"
}