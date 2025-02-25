import {
  to = segment_tracking_plan.id-tp_2pMU3sZcL7aLDPz9WlRRhsAZ9m7
  id = "tp_2pMU3sZcL7aLDPz9WlRRhsAZ9m7"
}

resource "segment_tracking_plan" "id-tp_2pMU3sZcL7aLDPz9WlRRhsAZ9m7" {
  description = "description"
  name        = "Drivetime Event Schema"
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
              address = {
                description = ""
                id          = "/properties/traits/properties/address"
                properties = {
                  city = {
                    description = ""
                    id          = "/properties/traits/properties/address/properties/city"
                    type        = "string"
                  }
                  postalCode = {
                    description = ""
                    id          = "/properties/traits/properties/address/properties/postalCode"
                    type        = "string"
                  }
                  state = {
                    description = ""
                    id          = "/properties/traits/properties/address/properties/state"
                    type        = "string"
                  }
                  streetAddress = {
                    description = ""
                    id          = "/properties/traits/properties/address/properties/streetAddress"
                    type        = "string"
                  }
                }
                required = []
                type     = "object"
              }
              anonymous_id = {
                description = ""
                id          = "/properties/traits/properties/anonymous_id"
                pattern     = ""
                type        = "string"
              }
              contactable_email = {
                description = ""
                id          = "/properties/traits/properties/contactable_email"
                type        = "string"
              }
              contactable_phone = {
                description = ""
                id          = "/properties/traits/properties/contactable_phone"
                type        = "string"
              }
              first_name = {
                description = ""
                id          = "/properties/traits/properties/first_name"
                pattern     = ""
                type        = "string"
              }
              last_name = {
                description = ""
                id          = "/properties/traits/properties/last_name"
                type        = "string"
              }
              pii_hash = {
                description = ""
                id          = "/properties/traits/properties/pii_hash"
                type        = "string"
              }
              stated_email = {
                description = ""
                id          = "/properties/traits/properties/stated_email"
                type        = "string"
              }
              stated_phone = {
                description = ""
                id          = "/properties/traits/properties/stated_phone"
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
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "GA2 - LinkedScenario5 - 3 "
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}