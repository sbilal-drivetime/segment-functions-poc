import {
  to = segment_reverse_etl_model.id-cezRzTc2nnoVhVG2C8NgJD
  id = "cezRzTc2nnoVhVG2C8NgJD"
}

resource "segment_reverse_etl_model" "id-cezRzTc2nnoVhVG2C8NgJD" {
  description             = " "
  enabled                 = true
  name                    = "retl-braze-nested-test"
  query                   = "SELECT \r\n    customerid,\r\n  PARSE_JSON(\r\n    '[' ||\r\n      LISTAGG(\r\n        '{\r\n            \"accountNumber\": \"' || accountnumber || '\",\r\n            \"accountStatus\": \"' || status || '\",\r\n            \"lendingProvider\": \"' || lendingProvider || '\",\r\n            \"testtest\": \"' || 'adding new attribute' || '\",\r\n\r\n        }',\r\n        ', '\r\n      )\r\n      ||\r\n    ']'\r\n  )::VARIANT AS accountData\r\n  from non_prod_analytics.servicing_pega.segment_test_group_poc \r\nwhere accounttype = 'Buyer'\r\nand customerid = 'F8BA83A9-0042-4CC4-B4FA-5B3B3F85F805'\r\nGROUP BY CUSTOMERID;"
  query_identifier_column = "customerid"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}