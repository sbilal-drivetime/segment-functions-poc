import {
  to = segment_source.id-gwHbDHhcfkJyKcebU8dKi3
  id = "gwHbDHhcfkJyKcebU8dKi3"
}

resource "segment_source" "id-gwHbDHhcfkJyKcebU8dKi3" {
  enabled = false
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "oQ5dZPW0Ii"
  }
  name     = "Salesforce Marketing Cloud2"
  settings = jsonencode({})
  slug     = "salesforce_marketing_cloud2"
}