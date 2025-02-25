import {
  to = segment_reverse_etl_model.id-uHGKzEC4viXj6M1rqAPZsJ
  id = "uHGKzEC4viXj6M1rqAPZsJ"
}

resource "segment_reverse_etl_model" "id-uHGKzEC4viXj6M1rqAPZsJ" {
  description             = " "
  enabled                 = true
  name                    = "dt-test-textineligibleactivity-reverseetl-model"
  query                   = "--Go forward leads\r\nSELECT\tDISTINCT\r\n\t\t\t\tCAST(LEADID AS STRING) AS LeadID,\r\n\t\t\t\tTextEligibleActivity\r\nFROM\t\tNON_PROD_REPLICATED.LEADSTRATEGY.V_GETSUPERHOTTEXT_INELIGIBLEACTIVITY;"
  query_identifier_column = "LEADID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}