import {
  to = segment_source.id-wjAzx2UJH8qacqjEJJ27bp
  id = "wjAzx2UJH8qacqjEJJ27bp"
}

resource "segment_source" "id-wjAzx2UJH8qacqjEJJ27bp" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "prod"
    },
  ]
  metadata = {
    id = "8HWbgPTt3k"
  }
  name     = "dotnet-test"
  settings = jsonencode({})
  slug     = "dotnet_test"
}