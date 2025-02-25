import {
  to = segment_source.id-hJ8VuW3TGZKcNLXJybZ16o
  id = "hJ8VuW3TGZKcNLXJybZ16o"
}

resource "segment_source" "id-hJ8VuW3TGZKcNLXJybZ16o" {
  enabled = true
  labels = [
    {
      key   = "deferred"
      value = "cleanup"
    },
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
  name     = "bc-test-poc-source-deletethislater"
  settings = jsonencode({})
  slug     = "bc_test_poc_source_deletethislater"
}