import {
  to = segment_source.id-oSE6jE2wztKNwn99SjoW6Q
  id = "oSE6jE2wztKNwn99SjoW6Q"
}

resource "segment_source" "id-oSE6jE2wztKNwn99SjoW6Q" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "8HWbgPTt3k"
  }
  name     = "basic-sandbox-mciver"
  settings = jsonencode({})
  slug     = "dotnet_server_mciver"
}