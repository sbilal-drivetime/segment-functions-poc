import {
  to = segment_reverse_etl_model.id-j9e4b1ncUnZRGM7Y4igBiJ
  id = "j9e4b1ncUnZRGM7Y4igBiJ"
}

resource "segment_reverse_etl_model" "id-j9e4b1ncUnZRGM7Y4igBiJ" {
  description             = " "
  enabled                 = true
  name                    = "cust_bc_pe_clear_repo_poc"
  query                   = "SELECT \r\n       CustomerID,\r\n       FirstName,\r\n       MiddleName,\r\n       LastName,\r\n       FullName,\r\n       IsDeceased,\r\n       MasterPersonID,\r\n       CreateSourceID,\r\n       UpdateSourceID,\r\n       PART_OF_BC_PE_REPO_POC\r\nFROM NON_PROD_ANALYTICS.SERVICING_PEGA.REPO_POC_CUST_SUMMARY;"
  query_identifier_column = "CustomerID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}