import {
  to = segment_reverse_etl_model.id-dCQe29MLsU9mZr9Mgiz5rQ
  id = "dCQe29MLsU9mZr9Mgiz5rQ"
}

resource "segment_reverse_etl_model" "id-dCQe29MLsU9mZr9Mgiz5rQ" {
  description             = " "
  enabled                 = true
  name                    = "dt-test-loadsuperhottext-reverseetl-model"
  query                   = "select\tdistinct\r\n        leadid,\r\n        cast(concat('999', right(phonenumber, 7)) as string) as phone,\r\n        asofdate,\r\n        fkmasterpersonid as masterpersonid,\r\n        personid,\r\n        firstname,\r\n        lastname,\r\n        persondnc,\r\n        textcampaignid\r\nfrom    non_prod_replicated.leadstrategy.v_getsuperhottext_person_reverseetl\r\nlimit   100;"
  query_identifier_column = "leadid"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}