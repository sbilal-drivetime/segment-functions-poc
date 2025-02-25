import {
  to = segment_source.id-ifP3K6J6hzYPxN9wkV48qy
  id = "ifP3K6J6hzYPxN9wkV48qy"
}

resource "segment_source" "id-ifP3K6J6hzYPxN9wkV48qy" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "bc-test-snowflake-dwh"
  settings = jsonencode({
    account   = "drivetime.west-us-2.azure"
    database  = "NON_PROD_SEGMENT_EVENTS"
    username  = "NON_PROD_SEGMENT_USER"
    warehouse = "SEGMENT_WH"
  })
  slug = "snowflake"
}