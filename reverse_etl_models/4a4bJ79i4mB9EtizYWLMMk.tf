import {
  to = segment_reverse_etl_model.id-4a4bJ79i4mB9EtizYWLMMk
  id = "4a4bJ79i4mB9EtizYWLMMk"
}

resource "segment_reverse_etl_model" "id-4a4bJ79i4mB9EtizYWLMMk" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-customerInfo"
  query                   = "SELECT CUSTOMERGUID,CELLPHONENUMBER,CURRENTEMAILADDRESS,DATEOFBIRTH,FULLNAMEFIRSTNAMELASTNAME,HOMESTATE,HOMEZIP5,ISDECEASED,PRIMARYADDRESS,SEXTYPEKEY,ZIP5DEFAULT FROM NON_PROD_REPLICATED.SHAREDLOANDATA.REPORTING_TBLCUSTOMERINFO"
  query_identifier_column = "CUSTOMERGUID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "8pz8SETEasi2XtMVeBTLA7"
}