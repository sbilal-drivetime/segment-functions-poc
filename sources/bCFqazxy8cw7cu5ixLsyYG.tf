import {
  to = segment_source.id-bCFqazxy8cw7cu5ixLsyYG
  id = "bCFqazxy8cw7cu5ixLsyYG"
}

resource "segment_source" "id-bCFqazxy8cw7cu5ixLsyYG" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "dev"
    },
  ]
  metadata = {
    id = "XRksQPCr7X"
  }
  name     = "Event_Python_Srini"
  settings = jsonencode({})
  slug     = "event_python_srini"
}