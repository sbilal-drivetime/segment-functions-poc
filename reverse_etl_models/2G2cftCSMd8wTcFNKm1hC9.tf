import {
  to = segment_reverse_etl_model.id-2G2cftCSMd8wTcFNKm1hC9
  id = "2G2cftCSMd8wTcFNKm1hC9"
}

resource "segment_reverse_etl_model" "id-2G2cftCSMd8wTcFNKm1hC9" {
  description             = " "
  enabled                 = false
  name                    = "Eligibility_JSON_CW"
  query                   = "SELECT ACCOUNTID, ACCOUNTNUMBER, JSON_PAYLOAD \r\nFROM NON_PROD_LOGIC.REVERSE_ETL.ELIGIBILITY_JSON"
  query_identifier_column = "ACCOUNTID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}