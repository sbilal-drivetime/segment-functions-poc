import {
  to = segment_reverse_etl_model.id-q3T3t5PpqPTYU4om6n67qs
  id = "q3T3t5PpqPTYU4om6n67qs"
}

resource "segment_reverse_etl_model" "id-q3T3t5PpqPTYU4om6n67qs" {
  description             = " "
  enabled                 = true
  name                    = "dt-test-texteligibleactivity-reverseetl-model"
  query                   = "SELECT\tDISTINCT\r\n        CAST(LEADID AS STRING) AS LeadID,\r\n\tTextEligibleActivity\r\nFROM\tNON_PROD_REPLICATED.LEADSTRATEGY.V_GETSUPERHOTTEXT_ELIGIBLEACTIVITY\r\nLIMIT 100;"
  query_identifier_column = "LEADID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}