import {
  to = segment_reverse_etl_model.id-udpT6yy57WXrxyqVeHvwgt
  id = "udpT6yy57WXrxyqVeHvwgt"
}

resource "segment_reverse_etl_model" "id-udpT6yy57WXrxyqVeHvwgt" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-customer-reverseetl-model"
  query                   = "/*Note: Donot update this query. This model is sending all records from derived table. Please contact Akshay,Surya if there is a need to update this query*/\r\n\r\nSELECT \r\n       C.CUSTOMERID AS CustomerID,\r\n       C.FIRSTNAME AS FirstName,\r\n       C.MIDDLENAME AS MiddleName,\r\n       C.LASTNAME AS LastName,\r\n       C.ISDECEASED AS IsDeceased,\r\n       C.MASTERPERSONID AS MasterPersonID,\r\n       'Snowflake-File' AS CreateSourceID,\r\n       'Snowflake-File' AS UpdateSourceID\r\nFROM NON_PROD_ANALYTICS.SERVICING_PEGA.CUST_SUMMARY C \r\nwhere (ABS(HASH(C.CustomerID)) % 100)<=89;"
  query_identifier_column = "CustomerID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}