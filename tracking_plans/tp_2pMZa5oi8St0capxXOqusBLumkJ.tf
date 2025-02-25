import {
  to = segment_tracking_plan.id-tp_2pMZa5oi8St0capxXOqusBLumkJ
  id = "tp_2pMZa5oi8St0capxXOqusBLumkJ"
}

resource "segment_tracking_plan" "id-tp_2pMZa5oi8St0capxXOqusBLumkJ" {
  description = "description"
  name        = "Segment_API_Event_Schema"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context    = {}
          properties = {}
          traits = {
            properties = {
              address = {
                id = "/properties/traits/properties/address"
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
                required = ["postalCode"]
                type     = "object"
              }
              first_name = {
                id   = "/properties/traits/properties/first_name"
                type = ["string"]
              }
              last_name = {
                id   = "/properties/traits/properties/last_name"
                type = ["string"]
              }
              pii_hash = {
                id   = "/properties/traits/properties/pii_hash"
                type = ["string"]
              }
              stated_email = {
                id   = "/properties/traits/properties/stated_email"
                type = ["string"]
              }
              stated_phone = {
                id   = "/properties/traits/properties/stated_phone"
                type = ["string"]
              }
            }
            required = ["first_name", "last_name", "stated_phone"]
            type     = "object"
          }
        }
        required = ["traits"]
        type     = "object"
      })
      key     = null
      type    = "IDENTIFY"
      version = 1
    },
    {
      json_schema = jsonencode({
        properties = {
          context    = {}
          properties = {}
          traits     = {}
        }
      })
      key     = null
      type    = "COMMON"
      version = 1
    },
  ]
  type = "LIVE"
}