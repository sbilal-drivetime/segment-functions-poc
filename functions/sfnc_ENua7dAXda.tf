import {
  to = segment_function.id-sfnc_ENua7dAXda
  id = "sfnc_ENua7dAXda"
}

resource "segment_function" "id-sfnc_ENua7dAXda" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\tconst body = request.json();\n\n\t// See https://segment.com/docs/connections/spec/track/\n\tconsole.log('Request ', body);\n\tSegment.track({\n\t\tmessageId: body.accountnumber,\n\t\tuserId: body.userid,\n\t\tevent: 'Reverse ETL soure func',\n\t\tproperties: body.properties\n\t});\n}\n"
  description   = null
  display_name  = "Reverse ETL - Custom source function"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}