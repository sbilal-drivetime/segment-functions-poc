import {
  to = segment_source.id-u5XebgFS5PU9DZBGT7jmxx
  id = "u5XebgFS5PU9DZBGT7jmxx"
}

resource "segment_source" "id-u5XebgFS5PU9DZBGT7jmxx" {
  enabled = false
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "DriveTimePOC"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "http://localhost:8080/"
  })
  slug = "drivetimepoc"
}