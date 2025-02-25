import {
  to = segment_tracking_plan.id-tp_2TaJTxyJwMnBLrJRF7yJHH0AP4U
  id = "tp_2TaJTxyJwMnBLrJRF7yJHH0AP4U"
}

resource "segment_tracking_plan" "id-tp_2TaJTxyJwMnBLrJRF7yJHH0AP4U" {
  description = "description"
  name        = "Only Allow specific subscriber id events (Salesforce ENS)"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              channel = {
                id   = "/properties/properties/properties/channel"
                type = ["string"]
              }
              composite = {
                id = "/properties/properties/properties/composite"
                properties = {
                  batchId = {
                    id   = "/properties/properties/properties/composite/properties/batchId"
                    type = ["string"]
                  }
                  jobId = {
                    id   = "/properties/properties/properties/composite/properties/jobId"
                    type = ["string"]
                  }
                  listId = {
                    id   = "/properties/properties/properties/composite/properties/listId"
                    type = ["string"]
                  }
                  subscriberId = {
                    id      = "/properties/properties/properties/composite/properties/subscriberId"
                    pattern = "285029434"
                    type    = ["string"]
                  }
                }
                type = "object"
              }
              compositeId = {
                id   = "/properties/properties/properties/compositeId"
                type = ["string"]
              }
              contentLink = {
                id   = "/properties/properties/properties/contentLink"
                type = ["string"]
              }
              definitionId = {
                id   = "/properties/properties/properties/definitionId"
                type = ["string"]
              }
              definitionKey = {
                id   = "/properties/properties/properties/definitionKey"
                type = ["string"]
              }
              eid = {
                id   = "/properties/properties/properties/eid"
                type = ["integer"]
              }
              eventCategoryType = {
                id   = "/properties/properties/properties/eventCategoryType"
                type = ["string"]
              }
              impressionRegion = {
                id   = "/properties/properties/properties/impressionRegion"
                type = ["string"]
              }
              info = {
                id = "/properties/properties/properties/info"
                properties = {
                  contentLink = {
                    id   = "/properties/properties/properties/info/properties/contentLink"
                    type = ["string"]
                  }
                  impressionRegion = {
                    id   = "/properties/properties/properties/info/properties/impressionRegion"
                    type = ["string"]
                  }
                  ipAddress = {
                    id   = "/properties/properties/properties/info/properties/ipAddress"
                    type = ["string"]
                  }
                  jobUrlId = {
                    id   = "/properties/properties/properties/info/properties/jobUrlId"
                    type = ["string"]
                  }
                  location = {
                    id   = "/properties/properties/properties/info/properties/location"
                    type = ["object"]
                  }
                  userAgent = {
                    id   = "/properties/properties/properties/info/properties/userAgent"
                    type = ["string"]
                  }
                }
                type = "object"
              }
              ipAddress = {
                id   = "/properties/properties/properties/ipAddress"
                type = ["string"]
              }
              jobUrlId = {
                id   = "/properties/properties/properties/jobUrlId"
                type = ["string"]
              }
              location = {
                id   = "/properties/properties/properties/location"
                type = ["object"]
              }
              mid = {
                id   = "/properties/properties/properties/mid"
                type = ["integer"]
              }
              timestampUTC = {
                id   = "/properties/properties/properties/timestampUTC"
                type = ["integer"]
              }
              userAgent = {
                id   = "/properties/properties/properties/userAgent"
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "EngagementEvents.EmailClick"
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
              channel = {
                id   = "/properties/properties/properties/channel"
                type = ["string"]
              }
              composite = {
                id = "/properties/properties/properties/composite"
                properties = {
                  batchId = {
                    id   = "/properties/properties/properties/composite/properties/batchId"
                    type = ["string"]
                  }
                  jobId = {
                    id   = "/properties/properties/properties/composite/properties/jobId"
                    type = ["string"]
                  }
                  listId = {
                    id   = "/properties/properties/properties/composite/properties/listId"
                    type = ["string"]
                  }
                  subscriberId = {
                    id      = "/properties/properties/properties/composite/properties/subscriberId"
                    pattern = "285029434"
                    type    = ["string"]
                  }
                }
                type = "object"
              }
              compositeId = {
                id   = "/properties/properties/properties/compositeId"
                type = ["string"]
              }
              definitionId = {
                id   = "/properties/properties/properties/definitionId"
                type = ["string"]
              }
              definitionKey = {
                id   = "/properties/properties/properties/definitionKey"
                type = ["string"]
              }
              eid = {
                id   = "/properties/properties/properties/eid"
                type = ["integer"]
              }
              eventCategoryType = {
                id   = "/properties/properties/properties/eventCategoryType"
                type = ["string"]
              }
              info = {
                id = "/properties/properties/properties/info"
                properties = {
                  ipAddress = {
                    id   = "/properties/properties/properties/info/properties/ipAddress"
                    type = ["string"]
                  }
                  location = {
                    id   = "/properties/properties/properties/info/properties/location"
                    type = ["object"]
                  }
                  userAgent = {
                    id   = "/properties/properties/properties/info/properties/userAgent"
                    type = ["string"]
                  }
                }
                type = "object"
              }
              ipAddress = {
                id   = "/properties/properties/properties/ipAddress"
                type = ["string"]
              }
              location = {
                id   = "/properties/properties/properties/location"
                type = ["object"]
              }
              mid = {
                id   = "/properties/properties/properties/mid"
                type = ["integer"]
              }
              timestampUTC = {
                id   = "/properties/properties/properties/timestampUTC"
                type = ["integer"]
              }
              userAgent = {
                id   = "/properties/properties/properties/userAgent"
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "EngagementEvents.EmailOpen"
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
              composite = {
                id = "/properties/properties/properties/composite"
                properties = {
                  batchId = {
                    id   = "/properties/properties/properties/composite/properties/batchId"
                    type = ["string"]
                  }
                  emailId = {
                    id   = "/properties/properties/properties/composite/properties/emailId"
                    type = ["string"]
                  }
                  jobId = {
                    id   = "/properties/properties/properties/composite/properties/jobId"
                    type = ["string"]
                  }
                  listId = {
                    id   = "/properties/properties/properties/composite/properties/listId"
                    type = ["string"]
                  }
                  subscriberId = {
                    id      = "/properties/properties/properties/composite/properties/subscriberId"
                    pattern = "285029434"
                    type    = ["string"]
                  }
                }
                type = "object"
              }
              compositeId = {
                id   = "/properties/properties/properties/compositeId"
                type = ["string"]
              }
              definitionId = {
                id   = "/properties/properties/properties/definitionId"
                type = ["string"]
              }
              definitionKey = {
                id   = "/properties/properties/properties/definitionKey"
                type = ["string"]
              }
              eid = {
                id   = "/properties/properties/properties/eid"
                type = ["integer"]
              }
              eventCategoryType = {
                id   = "/properties/properties/properties/eventCategoryType"
                type = ["string"]
              }
              info = {
                id = "/properties/properties/properties/info"
                properties = {
                  messageKey = {
                    id   = "/properties/properties/properties/info/properties/messageKey"
                    type = ["string"]
                  }
                  renderedSubject = {
                    id   = "/properties/properties/properties/info/properties/renderedSubject"
                    type = ["string"]
                  }
                  status = {
                    id   = "/properties/properties/properties/info/properties/status"
                    type = ["string"]
                  }
                  subscriberKey = {
                    id   = "/properties/properties/properties/info/properties/subscriberKey"
                    type = ["string"]
                  }
                  to = {
                    id   = "/properties/properties/properties/info/properties/to"
                    type = ["string"]
                  }
                }
                type = "object"
              }
              mid = {
                id   = "/properties/properties/properties/mid"
                type = ["integer"]
              }
              sendClassificationType = {
                id   = "/properties/properties/properties/sendClassificationType"
                type = ["string"]
              }
              timestampUTC = {
                id   = "/properties/properties/properties/timestampUTC"
                type = ["integer"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "TransactionalSendEvents.EmailSent"
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
              domain = {
                type = ["string"]
              }
              messageKey = {
                type = ["string"]
              }
              renderedSubject = {
                type = ["string"]
              }
              status = {
                type = ["string"]
              }
              subscriberKey = {
                type = ["string"]
              }
              to = {
                type = ["string"]
              }
              unsubscribeDate = {
                type = ["integer"]
              }
              unsubscribeMethod = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Incoming Salesforce event"
      type    = "TRACK"
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
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "EngagementEvents.EmailUnsubscribe"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}