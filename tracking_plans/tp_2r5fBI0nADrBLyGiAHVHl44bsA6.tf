import {
  to = segment_tracking_plan.id-tp_2r5fBI0nADrBLyGiAHVHl44bsA6
  id = "tp_2r5fBI0nADrBLyGiAHVHl44bsA6"
}

resource "segment_tracking_plan" "id-tp_2r5fBI0nADrBLyGiAHVHl44bsA6" {
  description = "description"
  name        = "dotnet-mciver-tracking_plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              firstName = {
                id   = "/properties/properties/properties/firstName"
                type = ["string"]
              }
              lastName = {
                id   = "/properties/properties/properties/lastName"
                type = ["string"]
              }
              userId = {
                id   = "/properties/properties/properties/userId"
                type = ["string"]
              }
            }
            required = ["userId"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "McIver: Send Track"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context    = {}
          properties = {}
          traits = {
            properties = {
              "" = {
                id = "/properties/traits/properties/"
              }
              email = {
                id   = "/properties/traits/properties/email"
                type = ["string"]
              }
            }
            type = "object"
          }
        }
        type = "object"
      })
      key     = null
      type    = "IDENTIFY"
      version = 1
    },
  ]
  type = "LIVE"
}