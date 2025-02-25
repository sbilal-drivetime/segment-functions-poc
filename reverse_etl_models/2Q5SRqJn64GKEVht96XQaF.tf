import {
  to = segment_reverse_etl_model.id-2Q5SRqJn64GKEVht96XQaF
  id = "2Q5SRqJn64GKEVht96XQaF"
}

resource "segment_reverse_etl_model" "id-2Q5SRqJn64GKEVht96XQaF" {
  description             = " "
  enabled                 = false
  name                    = "ReverseEtl-Customer"
  query                   = "/*Note: Donot update this query. This model is sending all records from derived table. Please contact Akshay,Surya if there is a need to update this query*/\r\n\r\nSELECT\r\n       C.CUSTOMERID AS CustomerID,\r\n       C.FIRSTNAME AS FirstName,\r\n       C.MIDDLENAME AS MiddleName,\r\n       C.LASTNAME AS LastName,\r\n       C.ISDECEASED AS IsDeceased,\r\n       C.MASTERPERSONID AS MasterPersonID,\r\n       C.CreateSourceID,\r\n       C.UpdateSourceID\r\nFROM NON_PROD_ANALYTICS.SERVICING_PEGA.CUST_SUMMARY C;"
  query_identifier_column = "customerid"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}