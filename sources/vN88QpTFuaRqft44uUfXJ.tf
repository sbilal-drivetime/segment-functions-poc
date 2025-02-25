import {
  to = segment_source.id-vN88QpTFuaRqft44uUfXJ
  id = "vN88QpTFuaRqft44uUfXJ"
}

resource "segment_source" "id-vN88QpTFuaRqft44uUfXJ" {
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
  name     = "bc-test-source-decisions-letters"
  settings = jsonencode({})
  slug     = "http_api_decisions_letter_poc"
}