import {
  to = segment_source.id-wnHJxvT3a6m8gEdywCKkLW
  id = "wnHJxvT3a6m8gEdywCKkLW"
}

resource "segment_source" "id-wnHJxvT3a6m8gEdywCKkLW" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "retl-snowflake-prod-inventory-leads"
  settings = jsonencode({
    account   = "drivetime.west-us-2.azure"
    database  = "NON_PROD_SEGMENT_EVENTS"
    username  = "NON_PROD_SEGMENT_USER"
    warehouse = "SEGMENT_WH"
  })
  slug = "snowflake_prod"
}