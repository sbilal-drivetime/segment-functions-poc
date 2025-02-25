import {
  to = segment_tracking_plan.id-tp_2TUfCdiN1D1Oz0yLeT2a2eyUw28
  id = "tp_2TUfCdiN1D1Oz0yLeT2a2eyUw28"
}

resource "segment_tracking_plan" "id-tp_2TUfCdiN1D1Oz0yLeT2a2eyUw28" {
  description = "description"
  name        = "Allow linchpin LD events"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              default = {
                id   = "/properties/properties/properties/default"
                type = ["boolean"]
              }
              environment = {
                id      = "/properties/properties/properties/environment"
                pattern = "642dbd08ecee6b12ae4620b"
                type    = ["string"]
              }
              flagVersion = {
                id   = "/properties/properties/properties/flagVersion"
                type = ["integer"]
              }
              key = {
                id   = "/properties/properties/properties/key"
                type = ["string"]
              }
              project = {
                id   = "/properties/properties/properties/project"
                type = ["string"]
              }
              value = {
                id   = "/properties/properties/properties/value"
                type = ["boolean"]
              }
              variation = {
                id   = "/properties/properties/properties/variation"
                type = ["integer"]
              }
              version = {
                id   = "/properties/properties/properties/version"
                type = ["integer"]
              }
            }
            required = ["environment"]
            type     = "object"
          }
          traits = {}
        }
        required = ["properties"]
        type     = "object"
      })
      key     = "launchdarkly_featureflag_evaluation"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}