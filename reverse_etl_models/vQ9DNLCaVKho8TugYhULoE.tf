import {
  to = segment_reverse_etl_model.id-vQ9DNLCaVKho8TugYhULoE
  id = "vQ9DNLCaVKho8TugYhULoE"
}

resource "segment_reverse_etl_model" "id-vQ9DNLCaVKho8TugYhULoE" {
  description             = " "
  enabled                 = true
  name                    = "dt-dev-model-get-lead-data-from-snowflake"
  query                   = "SELECT TOP 8 HASH(PII_HASH) AS ID, FIRST_NAME, LAST_NAME, A.LEAD_ID, A.MASTER_PERSON_ID,\n             A.ADDRESS, A.CAMPAIGN_NAME, A.STATED_EMAIL, A.STATED_PHONE, B.PII_HASH, A.TIME_ZONE, A.EMAIL_SUBSCRIPTION, A.PHONE_SUBSCRIPTION,\n             A.CAMPAIGN_EMAIL_MONTHLY_REACHBACK, A.DATEOFBIRTH, CURRENT_TIMESTAMP() AS RECEIVED_AT\nFROM MARKETING_LOGIC.CUSTOMER_OUTREACH.BRAZE_EMAIL_WARMING_2025_01_14_ADMIN A\nINNER JOIN MARKETING_LOGIC.CUSTOMER_OUTREACH.BRAZE_EMAIL_WARMING_2025_01_10_PII_HASH B on A.PERSON_ID = B.PERSON_ID AND B.STATUS_CODE = 200\nWHERE A.TIME_ZONE = 'America/Denver'\nORDER BY A.PERSON_ID;"
  query_identifier_column = "id"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "wnHJxvT3a6m8gEdywCKkLW"
}