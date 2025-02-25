import {
  to = segment_reverse_etl_model.id-aDYbPHPaNsjmua7GaWapBC
  id = "aDYbPHPaNsjmua7GaWapBC"
}

resource "segment_reverse_etl_model" "id-aDYbPHPaNsjmua7GaWapBC" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-reverseetl-groups-buyer"
  query                   = "--select accountnumber group_id, accounttype, status, originatingcompany, lendingprovider, route, dayspastdue, lengthofdelinquency, vin, vehicleyear, vehiclemake, vehiclemodel, isceaseanddesistfraud, isceaseanddesistpartial, isceaseanddesistcomplete, ismilitary, iscomplaint, issettlement, isseizure, isdeficiencywaiverineligible, checkdigit, customerid user_id,accounttype relationship_type FROM non_prod_analytics.servicing_pega.custacct_summary CA\n--where accounttype = 'Buyer' and accountnumber in (200209208001,119014420101)\n\nSELECT\n  PARSE_JSON(\n    '[' ||\n      LISTAGG(\n        '{\n            \"accountNumber\": \"' || accountnumber || ',\",\n            \"accountStatus\": \"' || status || ',\",\n            \"lendingProvider\": \"' || lendingProvider || '\"\n\n        }',\n        ', '\n      )\n      ||\n   --   WITHIN GROUP (ORDER BY column_index) ||\n    ']'\n  )::VARIANT AS accountData\n  from non_prod_analytics.servicing_pega.custacct_summary\nwhere accounttype = 'Buyer'\nand customerid = 'F8BA83A9-0042-4CC4-B4FA-5B3B3F85F805';"
  query_identifier_column = "group_id"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}