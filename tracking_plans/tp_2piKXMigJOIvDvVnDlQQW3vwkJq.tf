import {
  to = segment_tracking_plan.id-tp_2piKXMigJOIvDvVnDlQQW3vwkJq
  id = "tp_2piKXMigJOIvDvVnDlQQW3vwkJq"
}

resource "segment_tracking_plan" "id-tp_2piKXMigJOIvDvVnDlQQW3vwkJq" {
  description = "description"
  name        = "bc-dev-tracking-plan-customer"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            properties = {
              firstname = {
                description = ""
                id          = "/properties/traits/properties/firstname"
                type        = "string"
              }
              isdeceased = {
                description = ""
                id          = "/properties/traits/properties/isdeceased"
                type        = "boolean"
              }
              isspanish = {
                description = ""
                id          = "/properties/traits/properties/isspanish"
                type        = "boolean"
              }
              lastname = {
                description = ""
                id          = "/properties/traits/properties/lastname"
                type        = "string"
              }
              masterpersonid = {
                description = ""
                id          = "/properties/traits/properties/masterpersonid"
                type        = "number"
              }
              middlename = {
                description = ""
                id          = "/properties/traits/properties/middlename"
                type        = "string"
              }
              sex = {
                description = ""
                id          = "/properties/traits/properties/sex"
                pattern     = "Male|Female|Unknown"
                type        = "string"
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