import {
  to = segment_warehouse.id-hikneLeBN4TSRYv8XKNREM
  id = "hikneLeBN4TSRYv8XKNREM"
}

resource "segment_warehouse" "id-hikneLeBN4TSRYv8XKNREM" {
  enabled = true
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "snowflake_retail_bot_development"
  settings = jsonencode({
    account   = "hs17975.west-us-2.azure"
    auth_type = "password_auth"
    database  = "SEGMENT_EVENTS"
    username  = "SVC_SEGMENT"
    warehouse = "STREAMING_REALTIME_XSMALL"
  })
}