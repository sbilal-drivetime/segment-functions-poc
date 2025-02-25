import {
  to = segment_warehouse.id-g5dCZRmFidiocpcrb4JWfe
  id = "g5dCZRmFidiocpcrb4JWfe"
}

resource "segment_warehouse" "id-g5dCZRmFidiocpcrb4JWfe" {
  enabled = true
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "\"NON_PROD_SNOWFLAKE\""
  settings = jsonencode({
    account    = "drivetime.west-us-2.azure"
    auth_type  = "password_auth"
    ciphertext = "AQICAHhDxiwP/vgvvqzyHLPVxM5a7lEjWTT0CiiQB+LPknr0YAH7Wq9Z4YELJLt2w/ReXP8hAAAAbTBrBgkqhkiG9w0BBwagXjBcAgEAMFcGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMNvjgmtYe65ZTZYb6AgEQgCrLYlmGoV6Mtfo53YZ8Ls7afcj5ljJTipWC0FaD6ZSKHL0Q94rVvPbmU+c="
    database   = "NON_PROD_SEGMENT_EVENTS"
    encrypted  = true
    username   = "NON_PROD_SEGMENT_USER"
    warehouse  = "SEGMENT_WH"
  })
}