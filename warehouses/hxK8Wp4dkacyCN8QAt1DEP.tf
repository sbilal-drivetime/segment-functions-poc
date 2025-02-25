import {
  to = segment_warehouse.id-hxK8Wp4dkacyCN8QAt1DEP
  id = "hxK8Wp4dkacyCN8QAt1DEP"
}

resource "segment_warehouse" "id-hxK8Wp4dkacyCN8QAt1DEP" {
  enabled = true
  metadata = {
    id = "CCIl4HLQPz"
  }
  name = "\"CarFi NonProd Snowflake\""
  settings = jsonencode({
    account    = "carfi.west-us-2.azure"
    auth_type  = "password_auth"
    ciphertext = "AQICAHhDxiwP/vgvvqzyHLPVxM5a7lEjWTT0CiiQB+LPknr0YAHSY2E1gf+dl2FfgEfVwM8tAAAAbjBsBgkqhkiG9w0BBwagXzBdAgEAMFgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMezMlxIqU9RMs6AunAgEQgCtYQmdvESRRuehh7C3qz+QjjyiO2ygXPr+04oQzGTY325G6dmOcU+Tg2tkX"
    database   = "NON_PROD_SEGMENT_EVENTS"
    encrypted  = true
    username   = "SVC_NON_PROD_SEGMENT"
    warehouse  = "NON_PROD_SEGMENT_WAREHOUSE"
  })
}