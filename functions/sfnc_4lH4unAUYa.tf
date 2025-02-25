import {
  to = segment_function.id-sfnc_4lH4unAUYa
  id = "sfnc_4lH4unAUYa"
}

resource "segment_function" "id-sfnc_4lH4unAUYa" {
  code          = "// Learn more about source functions API at\n// https://segment.com/docs/connections/sources/source-functions\n\n/**\n * Handle incoming HTTP request\n *\n * @param  {FunctionRequest} request\n * @param  {FunctionSettings} settings\n */\nasync function onRequest(request, settings) {\n\tconst body = request.json();\n\n\tconst endpoint = ''; // replace with your endpoint\n\tlet response;\n\n\ttry {\n\t\tresponse = await fetch(endpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(settings.apiKey + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify(body)\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tif (response.status >= 500 || response.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${response.status}`);\n\t}\n\n\t// See https://segment.com/docs/connections/spec/track/\n\tSegment.track({\n\t\tevent: 'Test Event',\n\t\tuserId: 'user_id',\n\t\tproperties: {\n\t\t\ttestProperty: 'testValue',\n\t\t\ttestProperty2: response.propertyName\n\t\t}\n\t});\n\n\t// See https://segment.com/docs/connections/spec/identify/\n\tSegment.identify({\n\t\tuserId: 'user_id',\n\t\ttraits: {\n\t\t\tuserName: 'Unicorn'\n\t\t}\n\t});\n\n\t// See https://segment.com/docs/connections/spec/group/\n\tSegment.group({\n\t\tgroupId: 'group_id',\n\t\tuserId: 'user_id',\n\t\ttraits: {\n\t\t\tgroupName: 'Unicorn'\n\t\t}\n\t});\n\n\t// See https://segment.com/docs/connections/spec/page/\n\tSegment.page({\n\t\tname: 'Home page',\n\t\tuserId: 'user_id',\n\t\tproperties: {\n\t\t\turl: 'https://mywebsite.com/about'\n\t\t}\n\t});\n\n\t// See https://segment.com/docs/connections/spec/screen/\n\tSegment.screen({\n\t\tname: 'Test Screen',\n\t\tuserId: 'user_id',\n\t\tproperties: {\n\t\t\turl: 'https://mywebsite.com/about'\n\t\t}\n\t});\n\n\t// See https://segment.com/docs/connections/sources/catalog/libraries/server/object-api/\n\tSegment.set({\n\t\tcollection: 'users',\n\t\tid: 'user_id',\n\t\tproperties: {\n\t\t\tuserName: 'Unicorn'\n\t\t}\n\t});\n}\n"
  description   = null
  display_name  = "delte it"
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "SOURCE"
  settings = [
  ]
}