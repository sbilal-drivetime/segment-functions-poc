import {
  to = segment_source.id-a98aRYPzAJauFogwuxDJNN
  id = "a98aRYPzAJauFogwuxDJNN"
}

resource "segment_source" "id-a98aRYPzAJauFogwuxDJNN" {
  enabled = true
  labels  = null
  metadata = {
    id = "oQ5dZPW0Ii"
  }
  name = "CometPOC"
  settings = jsonencode({
    client-id = "f5r50nb8m7cg8gezlq5tr6o8"
    subdomain = "mcpqvpv75vnfbprnl1bmmg2x07r0"
  })
  slug = "cometpoc"
}