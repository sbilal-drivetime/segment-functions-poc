import {
  to = segment_warehouse.id-jG2bJmXK89xKd6R8VsdJ3V
  id = "jG2bJmXK89xKd6R8VsdJ3V"
}

resource "segment_warehouse" "id-jG2bJmXK89xKd6R8VsdJ3V" {
  enabled = true
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "sr-test-snowflake"
  settings = jsonencode({
    account   = "hs17975.west-us-2.azure"
    auth_type = "password_auth"
    database  = "SEGMENT_EVENTS"
    username  = "SVC_SEGMENT"
    warehouse = "STREAMING_REALTIME_XSMALL"
  })
}