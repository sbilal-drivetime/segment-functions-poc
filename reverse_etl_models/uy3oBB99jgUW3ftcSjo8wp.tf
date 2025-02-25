import {
  to = segment_reverse_etl_model.id-uy3oBB99jgUW3ftcSjo8wp
  id = "uy3oBB99jgUW3ftcSjo8wp"
}

resource "segment_reverse_etl_model" "id-uy3oBB99jgUW3ftcSjo8wp" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-tblcustomers"
  query                   = "SELECT CUSTOMERID FROM NON_PROD_REPLICATED.SHAREDLOANDATA.ACCOUNT_TBLCUSTOMER"
  query_identifier_column = "CUSTOMERID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "8pz8SETEasi2XtMVeBTLA7"
}