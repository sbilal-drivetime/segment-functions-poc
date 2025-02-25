import {
  to = segment_tracking_plan.id-tp_2LEdKrz3tnITV3W5QSKtjtOaaEb
  id = "tp_2LEdKrz3tnITV3W5QSKtjtOaaEb"
}

resource "segment_tracking_plan" "id-tp_2LEdKrz3tnITV3W5QSKtjtOaaEb" {
  description = "description"
  name        = "RecoveryBusinessEvent Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              accountnumber = {
                id   = "/properties/properties/properties/accountnumber"
                type = "integer"
              }
              customerguid = {
                description = ""
                id          = "/properties/properties/properties/customerguid"
                pattern     = "^\\S+"
                type        = "string"
              }
              eventdatetime = {
                id      = "/properties/properties/properties/eventdatetime"
                pattern = "^\\S+"
                type    = "string"
              }
              repotype = {
                id      = "/properties/properties/properties/repotype"
                pattern = "^\\S+"
                type    = ["string"]
              }
            }
            required = ["accountnumber", "customerguid", "eventdatetime", "repotype"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "RecoveryBusinessEvent"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}