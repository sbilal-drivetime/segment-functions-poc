import {
  to = segment_reverse_etl_model.id-j94biWvY9xPU65rdqaSvJb
  id = "j94biWvY9xPU65rdqaSvJb"
}

resource "segment_reverse_etl_model" "id-j94biWvY9xPU65rdqaSvJb" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-account-reverseetl-model-webhook"
  query                   = "/*Note: Donot update this query. This model is sending all records from derived table. Contact Akshay, Surya if there is a need to update the query.*/\r\n\r\nSELECT \r\n\t CA.AccountID\r\n\t,CA.AccountNumber\r\n\t,CA.CustomerID\r\n\t,CA.AccountType\r\n\t,CA.Status\r\n\t,CA.OriginatingCompany\r\n\t,CA.LendingProvider\r\n\t,CA.Route\r\n\t,CA.DaysPastDue\r\n  ,CA.LengthOfDelinquency\r\n\t,CA.DaysOnBooks\r\n\t,CA.VIN\r\n\t,CA.VehicleYear\r\n\t,CA.VehicleMake\r\n\t,CA.VehicleModel\r\n\t,CA.CustomerDefaultTimeZone\r\n\t,CA.CellPhoneNumber\r\n\t,CA.HomePhoneNumber\r\n\t,CA.WorkPhoneNumber\r\n\t,CA.EmailAddress\r\n\t,CA.HOMEADDRESS1\r\n\t,CA.HOMEADDRESS2\r\n\t,CA.HOMECITY\r\n\t,CA.HOMESTATE\r\n\t,CA.HOMECOUNTY\r\n\t,CA.HOMEZIP5\r\n\t,CA.HOMEZIP4\r\n\t,CA.RPCDateTime\r\n\t,CA.IsCellPhoneDNT\r\n\t,CA.IsCellPhoneTextOptOut\r\n\t,CA.IsCellPhoneVerified\r\n\t,CA.IsHomePhoneVerified\r\n\t,CA.IsWorkPhoneVerified\r\n\t,CA.IsEmailDoNotUse\r\n\t,CA.IsEmailUnsubscribe\r\n\t,CA.IsCeaseAndDesistFraud\r\n\t,CA.IsCeaseAndDesistPartial\r\n\t,CA.IsCeaseAndDesistComplete\r\n\t,CA.IsMilitary\r\n\t,CA.IsComplaint\r\n  ,CA.IsSpecialAttention\r\n  ,CA.IsDeceased\r\n  ,CA.IsSettlement\r\n  ,CA.IsSeizure\r\n  ,CA.IsDeficiencyWaiverIneligible\r\n\t,CA.LastPaymentGT50Date\r\n\t,CA.CheckDigit\r\n\t,'Snowflake-Webhook' AS CreateSourceID\r\n\t,'Snowflake-Webhook' AS UpdateSourceID\r\nFROM non_prod_analytics.servicing_pega.custacct_summary CA \r\nwhere CA.accountid in\r\n('104025514601E61593D1-BAB0-42C2-A136-10BC4519F361'\r\n,'2000554093018DD938D2-7DDE-48C2-9045-337F03D89BB3'\r\n,'1630061773027F6CB5EF-59A8-4374-947F-B936A9CA7E06'\r\n,'20025550890152EDBA4E-F0E8-470B-AD8B-AC54F220B213'\r\n,'2002522801012E5E846D-59AC-40C2-872B-FDEC3DF76004'\r\n,'2002548490015A714A8E-F54D-4744-9015-89BF005D6069'\r\n,'1630061773027F6CB5EF-59A8-4374-947F-B936A9CA7E06'\r\n,'20025550890152EDBA4E-F0E8-470B-AD8B-AC54F220B213')\r\n;"
  query_identifier_column = "AccountID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}