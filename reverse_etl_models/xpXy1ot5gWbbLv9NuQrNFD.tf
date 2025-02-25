import {
  to = segment_reverse_etl_model.id-xpXy1ot5gWbbLv9NuQrNFD
  id = "xpXy1ot5gWbbLv9NuQrNFD"
}

resource "segment_reverse_etl_model" "id-xpXy1ot5gWbbLv9NuQrNFD" {
  description             = "Programatically generated rETL model that is associated with an Engage rETL audience"
  enabled                 = true
  name                    = "bc-test-audience-linked-APD-1to30"
  query                   = "WITH ID_GRAPH AS (\n    SELECT updates.segment_id, updates.canonical_segment_id\n    FROM \"NON_PROD_SEGMENT_EVENTS\".\"DRIVETIME_DEV\".ID_GRAPH_UPDATES AS updates\n    LEFT JOIN \"NON_PROD_SEGMENT_EVENTS\".\"DRIVETIME_DEV\".ID_GRAPH_UPDATES AS updates2 ON updates2.segment_id = updates.canonical_segment_id\n        AND CAST(updates.uuid_ts AS DATETIME) < DATEADD(HOUR, 2, updates2.UUID_TS)\n        AND updates2.canonical_segment_id <> updates2.segment_id\n        AND updates2.canonical_segment_id <> updates.canonical_segment_id\n), PROFILE_TRAITS AS (\n    WITH last_profile_traits_updates AS (\n        SELECT *, ROW_NUMBER() OVER(PARTITION BY segment_id ORDER BY CASE WHEN seq IS NULL THEN '0' ELSE seq END DESC) AS last_record\n        FROM \"NON_PROD_SEGMENT_EVENTS\".\"DRIVETIME_DEV\".PROFILE_TRAITS_UPDATES AS updates\n    )\n    SELECT DISTINCT COALESCE(id_graph.canonical_segment_id,updates.segment_id) AS canonical_segment_id\n    FROM last_profile_traits_updates AS updates\n    FULL OUTER JOIN ID_GRAPH AS id_graph ON id_graph.segment_id = updates.segment_id\n    WHERE updates.last_record = 1\n), EXTERNAL_ID_MAPPING AS (\n    SELECT COALESCE(id_graph.canonical_segment_id,ids.segment_id) AS canonical_segment_id, ids.external_id_type, ids.external_id_value\n    FROM \"NON_PROD_SEGMENT_EVENTS\".\"DRIVETIME_DEV\".EXTERNAL_ID_MAPPING_UPDATES AS ids\n    LEFT JOIN ID_GRAPH AS id_graph ON id_graph.segment_id = ids.segment_id\n), ECG_1 AS (\n\tWITH filtered_query AS (\n\t\tSELECT A.\"CANONICAL_SEGMENT_ID\" AS \"A_CANONICAL_SEGMENT_ID\", B.\"CUSTOMERID\" AS \"B_CUSTOMERID\", C.\"ACCOUNTNUMBER\" AS \"C_ACCOUNTNUMBER\", C.\"VEHICLEMODEL\" AS \"C_VEHICLEMODEL\", C.\"VIN\" AS \"C_VIN\", C.\"PASTDUEAMOUNT\" AS \"C_PASTDUEAMOUNT\", C.\"VEHICLEMAKE\" AS \"C_VEHICLEMAKE\", TO_VARCHAR(CONVERT_TIMEZONE('UTC', C.\"PASTDUEDATE\"), 'YYYY-MM-DD\"T\"HH24:MI:SSTZH:TZM') AS \"C_PASTDUEDATE\", C.\"ROUTE\" AS \"C_ROUTE\", C.\"VEHICLEYEAR\" AS \"C_VEHICLEYEAR\", C.\"CUSTOMERIDBUYER\" AS \"C_CUSTOMERIDBUYER\", TO_VARCHAR(CONVERT_TIMEZONE('UTC', C.\"LASTRPCDATE\"), 'YYYY-MM-DD\"T\"HH24:MI:SSTZH:TZM') AS \"C_LASTRPCDATE\", C.\"NUMBEROFDAYSPASTDUE\" AS \"C_NUMBEROFDAYSPASTDUE\"\n\t\tFROM \"NON_PROD_REPLICATED\".\"SHAREDLOANDATA\".\"REPORTING_TBLACCOUNTINFO\" C\n\t\tINNER JOIN \"NON_PROD_REPLICATED\".\"SHAREDLOANDATA\".\"ACCOUNT_TBLCUSTOMER\" B ON B.\"CUSTOMERID\" = C.\"CUSTOMERIDBUYER\"\n\t\tINNER JOIN EXTERNAL_ID_MAPPING A ON A.\"EXTERNAL_ID_TYPE\" = 'user_id' AND A.\"EXTERNAL_ID_VALUE\" = TO_VARCHAR(B.\"CUSTOMERGUID\")\n\t\tWHERE ((C.\"NUMBEROFDAYSPASTDUE\" > 0) and (C.\"NUMBEROFDAYSPASTDUE\" <= 30) and (C.\"ACCOUNTSTATUSKEY\" = 'A'))\n\t)\n\tSELECT * FROM filtered_query\n), ECG_1_SEGMENT_ID AS (\n\tSELECT \"A_CANONICAL_SEGMENT_ID\" AS \"CANONICAL_SEGMENT_ID\" FROM ECG_1 GROUP BY \"A_CANONICAL_SEGMENT_ID\"\n), PROFILE_FILTER AS (\n\tSELECT CANONICAL_SEGMENT_ID FROM PROFILE_TRAITS PT\n\tWHERE (CANONICAL_SEGMENT_ID IN (SELECT CANONICAL_SEGMENT_ID FROM ECG_1_SEGMENT_ID))\n), ECG_1_FILTERED AS (\n\tSELECT * FROM ECG_1 WHERE \"A_CANONICAL_SEGMENT_ID\" IN (SELECT CANONICAL_SEGMENT_ID FROM PROFILE_FILTER)\n)\nSELECT DISTINCT * FROM (\n\tSELECT CANONICAL_SEGMENT_ID as matchId, NULL AS \"2_VEHICLEMODEL\", NULL AS \"2_VIN\", NULL AS \"2_PASTDUEAMOUNT\", NULL AS \"2_VEHICLEMAKE\", NULL AS \"2_PASTDUEDATE\", NULL AS \"2_ROUTE\", NULL AS \"2_VEHICLEYEAR\", NULL AS \"2_CUSTOMERIDBUYER\", NULL AS \"2_LASTRPCDATE\", NULL AS \"2_NUMBEROFDAYSPASTDUE\"\n\tFROM PROFILE_FILTER\n\tUNION ALL\n\tSELECT CONCAT_WS(':', \"A_CANONICAL_SEGMENT_ID\", '2', REPLACE(\"B_CUSTOMERID\", ':', '::'), REPLACE(\"C_ACCOUNTNUMBER\", ':', '::')) as matchId, \"C_VEHICLEMODEL\", \"C_VIN\", \"C_PASTDUEAMOUNT\", \"C_VEHICLEMAKE\", \"C_PASTDUEDATE\", \"C_ROUTE\", \"C_VEHICLEYEAR\", \"C_CUSTOMERIDBUYER\", \"C_LASTRPCDATE\", \"C_NUMBEROFDAYSPASTDUE\"\n\tFROM ECG_1_FILTERED\n\tUNION ALL\n\tSELECT CONCAT_WS(':', \"A_CANONICAL_SEGMENT_ID\", '1', REPLACE(\"B_CUSTOMERID\", ':', '::')) as matchId, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL\n\tFROM ECG_1_FILTERED\n)"
  query_identifier_column = "matchId"
  schedule_config         = jsonencode({})
  schedule_strategy       = ""
  source_id               = "8pz8SETEasi2XtMVeBTLA7"
}