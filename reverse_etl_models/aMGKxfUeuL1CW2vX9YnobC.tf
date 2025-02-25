import {
  to = segment_reverse_etl_model.id-aMGKxfUeuL1CW2vX9YnobC
  id = "aMGKxfUeuL1CW2vX9YnobC"
}

resource "segment_reverse_etl_model" "id-aMGKxfUeuL1CW2vX9YnobC" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-accountInfo"
  query                   = "SELECT ACCOUNTNUMBER,ACCOUNTSTATUSKEY,ACCOUNTTYPEKEY,CUSTOMERIDBUYER,LASTRPCDATE,LENDINGPROVIDERKEY,NUMBEROFDAYSPASTDUE,PASTDUEAMOUNT,PASTDUEDATE,POOLNUMBER,ROUTE,VEHICLEESTIMATEPREDICTEDAMOUNT,VEHICLEMAKE,VEHICLEMODEL,VEHICLEODOMETER,VEHICLEYEAR,VIN,VIN6 FROM NON_PROD_REPLICATED.SHAREDLOANDATA.REPORTING_TBLACCOUNTINFO"
  query_identifier_column = "ACCOUNTNUMBER"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "8pz8SETEasi2XtMVeBTLA7"
}