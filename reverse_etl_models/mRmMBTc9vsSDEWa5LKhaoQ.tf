import {
  to = segment_reverse_etl_model.id-mRmMBTc9vsSDEWa5LKhaoQ
  id = "mRmMBTc9vsSDEWa5LKhaoQ"
}

resource "segment_reverse_etl_model" "id-mRmMBTc9vsSDEWa5LKhaoQ" {
  description             = " "
  enabled                 = false
  name                    = "bc-test-reverseetl-customer-data"
  query                   = "select distinct  c.customerid user_id, c.customerid customerguid,c.firstname, c.middlename, c.lastname, c.isdeceased, c.masterpersonid masterpersonid,\ncase when c.customerid = 'A40E3A0D-363D-4603-850F-3B46E4BBD37F' then 6025492171 when c.customerid = 'BD1B43CA-D679-441C-AE3A-EBE91FE14969' then 4803228898 else 4802466973 end as phone, \n//4802466973 as phone,\ncase when c.customerid = 'C22BA41A-C609-4615-9C92-E3FCD995D3FF' then 'Brian.Good@drivetime.com' else 'DL-MISCollectionsTeamTesting@drivetime.com' end as email, ca.homestate, ca.homezip5, case when c.customerid = 'C22BA41A-C609-4615-9C92-E3FCD995D3FF' then true else ca.iscellphonednt end as iscellphonednt, ca.iscellphonetextoptout,true as iscellphoneverified, ca.isemaildonotuse, case when  c.customerid <> 'C22BA41A-C609-4615-9C92-E3FCD995D3FF' then true else false end as isemailunsubscribe FROM NON_PROD_ANALYTICS.SERVICING_PEGA.cust_summary C,NON_PROD_ANALYTICS.SERVICING_PEGA.custacct_summary ca\nwhere c.customerid = ca.customerid and c.customerid in ('C22BA41A-C609-4615-9C92-E3FCD995D3FF','A40E3A0D-363D-4603-850F-3B46E4BBD37F','BD1B43CA-D679-441C-AE3A-EBE91FE14969')\n"
  query_identifier_column = "user_id"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "ifP3K6J6hzYPxN9wkV48qy"
}