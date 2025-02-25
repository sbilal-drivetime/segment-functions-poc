import {
  to = segment_tracking_plan.id-tp_23wCDyaFVyRyPXQqC11aYHqRlLN
  id = "tp_23wCDyaFVyRyPXQqC11aYHqRlLN"
}

resource "segment_tracking_plan" "id-tp_23wCDyaFVyRyPXQqC11aYHqRlLN" {
  description = null
  name        = "Untitled Tracking Plan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "Admin has successfully logged in and landed on the respective Admin page"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Admin Page View"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}