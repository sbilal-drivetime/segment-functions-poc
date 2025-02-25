import {
  to = segment_source.id-j3FpsJtiLdkdfnd9b2QTT3
  id = "j3FpsJtiLdkdfnd9b2QTT3"
}

resource "segment_source" "id-j3FpsJtiLdkdfnd9b2QTT3" {
  enabled = false
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
    {
      key   = "org"
      value = "bridgecrest"
    },
  ]
  metadata = {
    id = "8HWbgPTt3k"
  }
  name     = "bc-test-loans-api"
  settings = jsonencode({})
  slug     = "dt_loans_api_legacy"
}