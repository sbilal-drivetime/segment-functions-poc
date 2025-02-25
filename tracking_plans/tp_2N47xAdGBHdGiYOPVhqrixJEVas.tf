import {
  to = segment_tracking_plan.id-tp_2N47xAdGBHdGiYOPVhqrixJEVas
  id = "tp_2N47xAdGBHdGiYOPVhqrixJEVas"
}

resource "segment_tracking_plan" "id-tp_2N47xAdGBHdGiYOPVhqrixJEVas" {
  description = "description"
  name        = "ConversationScreeningEvent Tracking Plan"
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
              calldirection = {
                description = ""
                id          = "/properties/properties/properties/calldirection"
                pattern     = "^\\S+"
                type        = "string"
              }
              callresult = {
                description = ""
                id          = "/properties/properties/properties/callresult"
                pattern     = "^\\S+"
                type        = "string"
              }
              phonenumber = {
                description = ""
                id          = "/properties/properties/properties/phonenumber"
                pattern     = "^\\S+"
                type        = "string"
              }
            }
            required = ["accountnumber", "calldirection", "callresult", "phonenumber"]
            type     = "object"
          }
          traits = {
            type = "object"
          }
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Call Disposition Event"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}