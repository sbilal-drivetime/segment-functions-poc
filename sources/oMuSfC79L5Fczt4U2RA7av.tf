import {
  to = segment_source.id-oMuSfC79L5Fczt4U2RA7av
  id = "oMuSfC79L5Fczt4U2RA7av"
}

resource "segment_source" "id-oMuSfC79L5Fczt4U2RA7av" {
  enabled = true
  labels  = null
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "ProtocolViolations"
  settings = jsonencode({
    apiHost = "api.segment.io/v1"
  })
  slug = "protocolviolations"
}