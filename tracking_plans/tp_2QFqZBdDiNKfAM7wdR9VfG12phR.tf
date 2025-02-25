import {
  to = segment_tracking_plan.id-tp_2QFqZBdDiNKfAM7wdR9VfG12phR
  id = "tp_2QFqZBdDiNKfAM7wdR9VfG12phR"
}

resource "segment_tracking_plan" "id-tp_2QFqZBdDiNKfAM7wdR9VfG12phR" {
  description = "description"
  name        = "ReverseETL-AccountData Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              AccountID = {
                description = ""
                id          = "/properties/properties/properties/AccountID"
                pattern     = "^\\S+"
                type        = "string"
              }
              AccountNumber = {
                description = ""
                id          = "/properties/properties/properties/AccountNumber"
                type        = "integer"
              }
              CustomerID = {
                description = ""
                id          = "/properties/properties/properties/CustomerID"
                pattern     = "^\\S+"
                type        = "string"
              }
            }
            required = ["AccountNumber"]
            type     = "object"
          }
          traits = {
            type = "object"
          }
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "bc-test-account"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}