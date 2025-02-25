import {
  to = segment_function.id-dfn_63c85289f673cebba7b3f8fb
  id = "dfn_63c85289f673cebba7b3f8fb"
}

resource "segment_function" "id-dfn_63c85289f673cebba7b3f8fb" {
  code          = "// Learn more about destination functions API at\n// https://segment.com/docs/connections/destinations/destination-functions\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\t// Learn more at https://segment.com/docs/connections/spec/identify/\n\tconst pegaEndpoint = settings.pegaRestApiEndpoint;\n\tconst profileEndpoint = `https://profiles.segment.com/v1/spaces/spa_jxSTXF1XrWhcRKmkNWugpF/collections/users/profiles/user_id:$${event.userId}/traits`;\n\tlet userTraits;\n\ttry {\n\t\tawait fetch(profileEndpoint, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(\n\t\t\t\t\tsettings.profileLookupUsername + settings.profileLookupPassword\n\t\t\t\t)}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t})\n\t\t\t.then(response => response.json())\n\t\t\t.then(data => (userTraits = data.traits));\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\tuserTraits.userId = event.userId;\n\tlet pegaBody = JSON.stringify(userTraits);\n\ttry {\n\t\t// Fire and forget, no need to try catch here..\n\t\tpegaResponse = await fetch(pegaEndpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${settings.pegaRestApiToken}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\t// TODO: we need consolidate userTraits + RDN trait here\n\t\t\tbody: pegaBody\n\t\t});\n\t} catch (error) {\n\t\t// Retry on connection error\n\t\tthrow new RetryError(error.message);\n\t}\n\tif (pegaResponse.status >= 500 || pegaResponse.status === 429) {\n\t\t// Retry on 5xx (server errors) and 429s (rate limits)\n\t\tthrow new RetryError(`Failed with $${pegaResponse.status}`);\n\t}\n}\n"
  description   = "Intermediate custom function to look up profile traits for a RDN identity call. "
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Pega REST API Endpoint"
      name        = "pegaRestApiEndpoint"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Pega REST API token"
      name        = "pegaRestApiToken"
      required    = true
      sensitive   = true
      type        = "STRING"
    },
    {
      description = ""
      label       = "Profile Lookup Username"
      name        = "profileLookupUsername"
      required    = true
      sensitive   = true
      type        = "STRING"
    },
    {
      description = ""
      label       = "Profile lookup password"
      name        = "profileLookupPassword"
      required    = true
      sensitive   = true
      type        = "STRING"
    },
  ]
}