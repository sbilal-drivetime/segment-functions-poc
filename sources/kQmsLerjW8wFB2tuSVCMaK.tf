import {
  to = segment_source.id-kQmsLerjW8wFB2tuSVCMaK
  id = "kQmsLerjW8wFB2tuSVCMaK"
}

resource "segment_source" "id-kQmsLerjW8wFB2tuSVCMaK" {
  enabled = false
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "XRksQPCr7X"
  }
  name     = "SubodhAndCodyPOC"
  settings = jsonencode({})
  slug     = "subodhandcodypoc"
}