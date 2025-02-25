import {
  to = segment_reverse_etl_model.id-fMknCSfWByyMPevC4bEar9
  id = "fMknCSfWByyMPevC4bEar9"
}

resource "segment_reverse_etl_model" "id-fMknCSfWByyMPevC4bEar9" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-account-reverseetl-model"
  query                   = "/*Note: Donot update this query. This model is sending all records from derived table. Contact Akshay, Surya if there is a need to update the query.*/\r\n\r\nSELECT \r\n\t CA.AccountID\r\n\t,CA.AccountNumber\r\n\t,CA.CustomerID\r\n\t,CA.AccountType\r\n\t,CA.Status\r\n\t,CA.OriginatingCompany\r\n\t,CA.LendingProvider\r\n\t,CA.Route\r\n\t,CA.DaysPastDue\r\n  ,CA.LengthOfDelinquency\r\n\t,CA.DaysOnBooks\r\n\t,CA.VIN\r\n\t,CA.VehicleYear\r\n\t,CA.VehicleMake\r\n\t,CA.VehicleModel\r\n\t,CA.CustomerDefaultTimeZone\r\n\t,CA.CellPhoneNumber\r\n\t,CA.HomePhoneNumber\r\n\t,CA.WorkPhoneNumber\r\n\t,CA.EmailAddress\r\n\t,CA.HOMEADDRESS1\r\n\t,CA.HOMEADDRESS2\r\n\t,CA.HOMECITY\r\n\t,CA.HOMESTATE\r\n\t,CA.HOMECOUNTY\r\n\t,CA.HOMEZIP5\r\n\t,CA.HOMEZIP4\r\n\t,CA.RPCDateTime\r\n\t,CA.IsCellPhoneDNT\r\n\t,CA.IsCellPhoneTextOptOut\r\n\t,CA.IsCellPhoneVerified\r\n\t,CA.IsHomePhoneVerified\r\n\t,CA.IsWorkPhoneVerified\r\n\t,CA.IsEmailDoNotUse\r\n\t,CA.IsEmailUnsubscribe\r\n\t,CA.IsCeaseAndDesistFraud\r\n\t,CA.IsCeaseAndDesistPartial\r\n\t,CA.IsCeaseAndDesistComplete\r\n\t,CA.IsMilitary\r\n\t,CA.CheckDigit\r\n\t,'Snowflake-File' AS CreateSourceID\r\n\t,'Snowflake-File' AS UpdateSourceID\r\nFROM non_prod_analytics.servicing_pega.custacct_summary CA \r\nwhere CA.CheckDigit<=89;"
  query_identifier_column = "AccountID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}