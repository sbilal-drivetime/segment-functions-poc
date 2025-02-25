import {
  to = segment_source.id-odVaxr3qS5cj8YdWcTj32Z
  id = "odVaxr3qS5cj8YdWcTj32Z"
}

resource "segment_source" "id-odVaxr3qS5cj8YdWcTj32Z" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "dt-test-retl-person-data"
  settings = jsonencode({
    account   = "hs17975.west-us-2.azure"
    database  = "REPLICATED"
    username  = "SVC_SEGMENT"
    warehouse = "STREAMING_REALTIME_XSMALL"
  })
  slug = "dt_person_snowflake_test"
}