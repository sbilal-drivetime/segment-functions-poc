import {
  to = segment_source.id-266PaFyznQWhPFwK1fiyPP
  id = "266PaFyznQWhPFwK1fiyPP"
}

resource "segment_source" "id-266PaFyznQWhPFwK1fiyPP" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "EK6jSIcawH"
  }
  name     = "Postman"
  settings = jsonencode({})
  slug     = "postman"
}