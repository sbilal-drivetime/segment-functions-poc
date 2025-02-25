import {
  to = segment_source.id-rLqHb359UMqmFG7QcQWxvJ
  id = "rLqHb359UMqmFG7QcQWxvJ"
}

resource "segment_source" "id-rLqHb359UMqmFG7QcQWxvJ" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "silverrock_test_website"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "silverrock_test_website"
}