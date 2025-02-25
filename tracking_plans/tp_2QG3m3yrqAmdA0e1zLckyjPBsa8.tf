import {
  to = segment_tracking_plan.id-tp_2QG3m3yrqAmdA0e1zLckyjPBsa8
  id = "tp_2QG3m3yrqAmdA0e1zLckyjPBsa8"
}

resource "segment_tracking_plan" "id-tp_2QG3m3yrqAmdA0e1zLckyjPBsa8" {
  description = "description"
  name        = "ReverseETL-Customer-Data Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              CustomerID = {
                description = ""
                id          = "/properties/properties/properties/CustomerID"
                pattern     = "^\\S+"
                type        = "string"
              }
              FirstName = {
                description = ""
                id          = "/properties/properties/properties/FirstName"
                pattern     = "^\\S+"
                type        = "string"
              }
            }
            required = ["CustomerID", "FirstName"]
            type     = "object"
          }
          traits = {
            type = "object"
          }
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "bc-test-customer"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}