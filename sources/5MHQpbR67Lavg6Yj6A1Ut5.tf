import {
  to = segment_source.id-5MHQpbR67Lavg6Yj6A1Ut5
  id = "5MHQpbR67Lavg6Yj6A1Ut5"
}

resource "segment_source" "id-5MHQpbR67Lavg6Yj6A1Ut5" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "IqDTy1TpoU"
  }
  name = "DT-Drivetime.Com"
  settings = jsonencode({
    apiHost     = "api.segment.io/v1"
    website_url = "https://mobiletest.drivetime.com/"
  })
  slug = "dt_drivetime_com"
}