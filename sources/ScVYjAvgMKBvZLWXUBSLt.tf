import {
  to = segment_source.id-ScVYjAvgMKBvZLWXUBSLt
  id = "ScVYjAvgMKBvZLWXUBSLt"
}

resource "segment_source" "id-ScVYjAvgMKBvZLWXUBSLt" {
  enabled = true
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
    id = "iUM16Md8P2"
  }
  name     = "bc-test-api-calls"
  settings = jsonencode({})
  slug     = "bc_test_api_calls"
}