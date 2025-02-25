import {
  to = segment_function.id-sfnc_TiDGJi3EJf
  id = "sfnc_TiDGJi3EJf"
}

resource "segment_function" "id-sfnc_TiDGJi3EJf" {
  code          = "/**\n * Segment Source Function: Logs request body and tracks a 'Webhook Called' event.\n */\nasync function onRequest(request, settings) {\n\tconst body = request.json();\n\tconsole.log('Request ', body);\n\tif (!body.pageName || !body.userId) {\n\t\tthrow new ValidationError('Parameters are invalid');\n\t}\n\t// Send a 'Webhook Called' event to Segment\n\tSegment.track({\n\t\tevent: 'Webhook Called',\n\t\tuserId: body.userId,\n\t\tproperties: {\n\t\t\tpageName: body.pageName,\n\t\t\tuserId: body.userId\n\t\t}\n\t});\n\n\tSegment.track({\n\t\tevent: 'Product Added to Cart',\n\t\tuserId: body.userId,\n\t\tproperties: {\n\t\t\tpageName: body.pageName,\n\t\t\tuserId: body.userId\n\t\t}\n\t});\n}\n"
  description   = "My source function"
  display_name  = "POC Source Function"
  logo_url      = "https://qualified-production.s3.us-east-1.amazonaws.com/uploads/7umLq9CeEaFWNod2HMqnpJqn8aLWxwD7ZbUME/9a0f7d3d446beca06108c34009fa8cbf3edaa6ae11b917eaa30e60ee0364edde.png"
  resource_type = "SOURCE"
  settings = [
    {
      description = "API Key"
      label       = "API Key"
      name        = "apiKey"
      required    = false
      sensitive   = false
      type        = "STRING"
    },
    {
      description = "Secret Key"
      label       = "My Secret Key"
      name        = "mySecret"
      required    = false
      sensitive   = true
      type        = "STRING"
    },
  ]
}