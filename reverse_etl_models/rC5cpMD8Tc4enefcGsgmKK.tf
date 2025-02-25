import {
  to = segment_reverse_etl_model.id-rC5cpMD8Tc4enefcGsgmKK
  id = "rC5cpMD8Tc4enefcGsgmKK"
}

resource "segment_reverse_etl_model" "id-rC5cpMD8Tc4enefcGsgmKK" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-reverseetl-groups-cosigner"
  query                   = "select accountnumber group_id, accounttype, status, originatingcompany, lendingprovider, route, dayspastdue, lengthofdelinquency, vin, vehicleyear, vehiclemake, vehiclemodel, isceaseanddesistfraud, isceaseanddesistpartial, isceaseanddesistcomplete, ismilitary, iscomplaint, issettlement, isseizure, isdeficiencywaiverineligible, checkdigit, customerid user_id,accounttype relationship_type FROM non_prod_analytics.servicing_pega.custacct_summary CA\nwhere accounttype = 'CoSigner'and accountnumber in (200209208001,119014420101)"
  query_identifier_column = "group_id"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}