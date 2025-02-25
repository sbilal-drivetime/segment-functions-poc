import {
  to = segment_source.id-sNUu1qBNvRZgd1KLrUMu9Y
  id = "sNUu1qBNvRZgd1KLrUMu9Y"
}

resource "segment_source" "id-sNUu1qBNvRZgd1KLrUMu9Y" {
  enabled = false
  labels  = null
  metadata = {
    id = "iUM16Md8P2"
  }
  name     = "bc-test-reverseetl-customer-data"
  settings = jsonencode({})
  slug     = "reverse_etl_cud_source"
}