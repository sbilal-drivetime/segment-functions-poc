import {
  to = segment_source.id-bePyGNQQoqPPMm36xoXftZ
  id = "bePyGNQQoqPPMm36xoXftZ"
}

resource "segment_source" "id-bePyGNQQoqPPMm36xoXftZ" {
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
    id = "L8TEm5Z8UV"
  }
  name     = "BC_Test_Braze_Delivery_events"
  settings = jsonencode({})
  slug     = "bc_test_braze_delivery_events"
}