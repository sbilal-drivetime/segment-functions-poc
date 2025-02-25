import {
  to = segment_reverse_etl_model.id-cEpAipzKMNwNWRc9rWECBv
  id = "cEpAipzKMNwNWRc9rWECBv"
}

resource "segment_reverse_etl_model" "id-cEpAipzKMNwNWRc9rWECBv" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-customer-reverseetl-model-webhook"
  query                   = "/*Note: Donot update this query. This model is sending all records from derived table. Please contact Akshay,Surya if there is a need to update this query*/\r\n\r\nSELECT top 1000\r\n       C.CUSTOMERID AS CustomerID,\r\n       C.FIRSTNAME AS FirstName,\r\n       C.MIDDLENAME AS MiddleName,\r\n       C.LASTNAME AS LastName,\r\n       C.ISDECEASED AS IsDeceased,\r\n       C.MASTERPERSONID AS MasterPersonID,\r\n       'Snowflake-Webhook' AS CreateSourceID,\r\n       'Snowflake-Webhook' AS UpdateSourceID\r\nFROM NON_PROD_ANALYTICS.SERVICING_PEGA.CUST_SUMMARY C;"
  query_identifier_column = "CustomerID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}