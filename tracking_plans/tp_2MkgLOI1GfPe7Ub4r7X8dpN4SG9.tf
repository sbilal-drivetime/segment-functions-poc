import {
  to = segment_tracking_plan.id-tp_2MkgLOI1GfPe7Ub4r7X8dpN4SG9
  id = "tp_2MkgLOI1GfPe7Ub4r7X8dpN4SG9"
}

resource "segment_tracking_plan" "id-tp_2MkgLOI1GfPe7Ub4r7X8dpN4SG9" {
  description = "description"
  name        = "Twilio - Only allow message with Valid InteractionID"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              accountSid = {
                id   = "/properties/properties/properties/accountSid"
                type = ["string"]
              }
              apiVersion = {
                id   = "/properties/properties/properties/apiVersion"
                type = ["string"]
              }
              errorCode = {
                id   = "/properties/properties/properties/errorCode"
                type = ["integer"]
              }
              eventName = {
                id   = "/properties/properties/properties/eventName"
                type = ["string"]
              }
              from = {
                id   = "/properties/properties/properties/from"
                type = ["string"]
              }
              messageSid = {
                id   = "/properties/properties/properties/messageSid"
                type = ["string"]
              }
              messageStatus = {
                id   = "/properties/properties/properties/messageStatus"
                type = ["string"]
              }
              statusCallBackUrl = {
                id      = "/properties/properties/properties/statusCallBackUrl"
                pattern = "InteractionID="
                type    = ["string"]
              }
              timestamp = {
                id   = "/properties/properties/properties/timestamp"
                type = ["string"]
              }
              to = {
                id   = "/properties/properties/properties/to"
                type = ["string"]
              }
            }
            required = ["statusCallBackUrl"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Messaging - Outbound Message Undelivered"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              accountSid = {
                id   = "/properties/properties/properties/accountSid"
                type = ["string"]
              }
              apiVersion = {
                id   = "/properties/properties/properties/apiVersion"
                type = ["string"]
              }
              eventName = {
                id   = "/properties/properties/properties/eventName"
                type = ["string"]
              }
              from = {
                id   = "/properties/properties/properties/from"
                type = ["string"]
              }
              messageSid = {
                id   = "/properties/properties/properties/messageSid"
                type = ["string"]
              }
              messageStatus = {
                id   = "/properties/properties/properties/messageStatus"
                type = ["string"]
              }
              messagingServiceSid = {
                id   = "/properties/properties/properties/messagingServiceSid"
                type = ["string"]
              }
              phonenumber = {
                id   = "/properties/properties/properties/phonenumber"
                type = ["string"]
              }
              statusCallBackUrl = {
                id      = "/properties/properties/properties/statusCallBackUrl"
                pattern = "InteractionID="
                type    = ["string"]
              }
              timestamp = {
                id   = "/properties/properties/properties/timestamp"
                type = ["string"]
              }
              to = {
                id   = "/properties/properties/properties/to"
                type = ["string"]
              }
            }
            required = ["statusCallBackUrl"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Messaging - Outbound Message Delivered"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              statusCallBackUrl = {
                description = ""
                id          = "/properties/properties/properties/statusCallBackUrl"
                pattern     = "InteractionID="
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Messaging - Outbound Message Failed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              statusCallBackUrl = {
                id      = "/properties/properties/properties/statusCallBackUrl"
                pattern = "InteractionID="
                type    = "string"
              }
            }
            required = ["statusCallBackUrl"]
            type     = "object"
          }
          traits = {
            type = "object"
          }
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "Messaging - Outbound Message Sent"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}