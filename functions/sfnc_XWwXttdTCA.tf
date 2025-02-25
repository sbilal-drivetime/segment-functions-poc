import {
  to = segment_function.id-sfnc_XWwXttdTCA
  id = "sfnc_XWwXttdTCA"
}

resource "segment_function" "id-sfnc_XWwXttdTCA" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\tconst body = request.json();\n\n\t// See https://segment.com/docs/connections/spec/track/\n\tconsole.log('Request ', body);\n\tlet payload = body[0].info;\n\tSegment.track({\n\t\tanonymousId: '123',\n\t\tevent: body[0].eventCategoryType,\n\t\tproperties: body[0]\n\t});\n}\n"
  description   = null
  display_name  = "Incoming Salesforce ENS events (POC)"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}