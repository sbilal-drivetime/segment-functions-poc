import {
  to = segment_reverse_etl_model.id-6jsutwvfQ2EfJcfY5hyDP7
  id = "6jsutwvfQ2EfJcfY5hyDP7"
}

resource "segment_reverse_etl_model" "id-6jsutwvfQ2EfJcfY5hyDP7" {
  description             = " "
  enabled                 = true
  name                    = "custacct_bc_pe_clear_repo_poc"
  query                   = "SELECT\r\nACCOUNTID\r\n,ACCOUNTNUMBER\r\n,CUSTOMERID\r\n,ACCOUNTTYPE\r\n,STATUS\r\n,ORIGINATINGCOMPANY\r\n,LENDINGPROVIDER\r\n,ROUTE\r\n,DAYSPASTDUE\r\n,LENGTHOFDELINQUENCY\r\n,DAYSONBOOKS\r\n,VIN\r\n,VEHICLEYEAR\r\n,VEHICLEMAKE\r\n,VEHICLEMODEL\r\n,CUSTOMERDEFAULTTIMEZONE\r\n,CELLPHONENUMBER\r\n,HOMEPHONENUMBER\r\n,WORKPHONENUMBER\r\n,EMAILADDRESS\r\n,HOMEADDRESS1\r\n,HOMEADDRESS2\r\n,HOMECITY\r\n,HOMESTATE\r\n,HOMECOUNTY\r\n,HOMEZIP5\r\n,HOMEZIP4\r\n,RPCDATETIME\r\n,ISCELLPHONEDNT\r\n,ISCELLPHONETEXTOPTOUT\r\n,ISCELLPHONEVERIFIED\r\n,ISHOMEPHONEVERIFIED\r\n,ISWORKPHONEVERIFIED\r\n,ISEMAILDONOTUSE\r\n,ISEMAILUNSUBSCRIBE\r\n,ISCEASEANDDESISTFRAUD\r\n,ISCEASEANDDESISTPARTIAL\r\n,ISCEASEANDDESISTCOMPLETE\r\n,ISMILITARY\r\n,ISCOMPLAINT\r\n,ISSPECIALATTENTION\r\n,ISDECEASED\r\n,ISSETTLEMENT\r\n,ISSEIZURE\r\n,ISDEFICIENCYWAIVERINELIGIBLE\r\n,LASTPAYMENTGT50DATE\r\n,CHECKDIGIT\r\n,CREATESOURCEID\r\n,UPDATESOURCEID\r\n,PART_OF_BC_PE_REPO_POC\r\n,PREDICTDATE\r\n,AMOUNTTOSTOP\r\n,IS_REPO_RECORD\r\nFROM NON_PROD_ANALYTICS.SERVICING_PEGA.REPO_POC_CUSTACCT_SUMMARY;"
  query_identifier_column = "ACCOUNTID"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}