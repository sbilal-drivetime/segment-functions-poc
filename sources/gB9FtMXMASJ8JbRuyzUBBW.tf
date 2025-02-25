import {
  to = segment_source.id-gB9FtMXMASJ8JbRuyzUBBW
  id = "gB9FtMXMASJ8JbRuyzUBBW"
}

resource "segment_source" "id-gB9FtMXMASJ8JbRuyzUBBW" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "dt-dev-retl-snowflake-prod-data"
  settings = jsonencode({
    account   = "drivetime.west-us-2.azure"
    database  = "NON_PROD_SEGMENT_EVENTS"
    username  = "NON_PROD_SEGMENT_USER"
    warehouse = "SEGMENT_WH"
  })
  slug = "dt_dev_retl_snowflake_prod_data"
}