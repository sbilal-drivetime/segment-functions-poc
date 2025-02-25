import {
  to = segment_reverse_etl_model.id-eGZpuvNLNSi9SMSEiGVxsT
  id = "eGZpuvNLNSi9SMSEiGVxsT"
}

resource "segment_reverse_etl_model" "id-eGZpuvNLNSi9SMSEiGVxsT" {
  description             = "Programatically generated rETL model that is associated with an Engage rETL audience"
  enabled                 = true
  name                    = "Test Audience"
  query                   = "SELECT 1"
  query_identifier_column = "matchId"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "9c1DveYoeEj5PU88fW3cb1"
}