import {
  to = segment_reverse_etl_model.id-ebtsgCmquacZi3mrSyhyNi
  id = "ebtsgCmquacZi3mrSyhyNi"
}

resource "segment_reverse_etl_model" "id-ebtsgCmquacZi3mrSyhyNi" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-person-phone-details"
  query                   = "SELECT * FROM SEGMENT_EVENTS.LINKED_EVENTS.EVENT_DATA"
  query_identifier_column = "ID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "9c1DveYoeEj5PU88fW3cb1"
}