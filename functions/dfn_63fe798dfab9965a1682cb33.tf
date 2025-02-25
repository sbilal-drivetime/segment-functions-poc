import {
  to = segment_function.id-dfn_63fe798dfab9965a1682cb33
  id = "dfn_63fe798dfab9965a1682cb33"
}

resource "segment_function" "id-dfn_63fe798dfab9965a1682cb33" {
  code          = "async function onTrack(event, settings) {\n\ttry {\n\t\tconst traits = await getSegmentTraits();\n\n\t\t//TODO: figure out what the payload should be\n\t\tconst payload = {\n\t\t\ttraits: traits,\n\t\t\tproperties: event.properties\n\t\t};\n\n\t\tawait sendToPega(payload);\n\t} catch (error) {\n\t\tthrow new RetryError(error.message);\n\t}\n\n\tasync function getSegmentTraits() {\n\t\tconst profileEndpoint = `$${settings.segmentProfileEndpoint}/user_id:$${event.userId}/traits`;\n\t\tconst segmentApiToken = btoa(`$${settings.segmentApiToken}:`);\n\t\tconst response = await fetch(profileEndpoint, {\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${segmentApiToken}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t});\n\n\t\tif (response.status >= 500 || response.status == 429) {\n\t\t\tthrow new Error(`Profile call failed with $${response.status}`);\n\t\t}\n\n\t\tconst data = await response.json();\n\t\treturn data.traits;\n\t}\n\n\tasync function getPegaAuthToken() {\n\t\tconst oauth2 = new OAuth2(\n\t\t\tsettings.pegaAuthClientId,\n\t\t\tsettings.pegaAuthClientSecret,\n\t\t\tsettings.pegaAuthBaseUrl,\n\t\t\t'prweb/PRRestService/oauth2/v1/authorize',\n\t\t\t'prweb/PRRestService/oauth2/v1/token',\n\t\t\tnull\n\t\t);\n\n\t\tconst getOAuthAccessToken = util.promisify(\n\t\t\toauth2.getOAuthAccessToken.bind(oauth2)\n\t\t);\n\t\tconst pegaAccessToken = await getOAuthAccessToken('', {\n\t\t\tgrant_type: 'client_credentials'\n\t\t});\n\n\t\treturn pegaAccessToken;\n\t}\n\n\tasync function sendToPega(payload) {\n\t\tconst cacheKey = 'PEGA_AUTH_TOKEN';\n\t\tconst authToken = await cache.load(cacheKey, 3540, getPegaAuthToken);\n\t\tconst response = await fetch(settings.pegaEndpoint, {\n\t\t\tmethod: 'POST',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Bearer $${authToken}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t},\n\t\t\tbody: JSON.stringify(payload)\n\t\t});\n\n\t\tif (response.status == 401) {\n\t\t\tcache.delete(cacheKey);\n\t\t\tthrow new Error('Pega authentication failed');\n\t\t}\n\n\t\tif (response.status >= 500 || response.status == 429) {\n\t\t\tthrow new Error(`Pega call failed with $${response.status}`);\n\t\t}\n\t}\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/a00661ed-b8fc-4852-bf3a-00238aa617b6.png"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Pega Auth Base URL"
      name        = "pegaAuthBaseUrl"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Pega Auth Client ID"
      name        = "pegaAuthClientId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Pega Auth Client Secret"
      name        = "pegaAuthClientSecret"
      required    = true
      sensitive   = true
      type        = "STRING"
    },
    {
      description = ""
      label       = "Pega Endpoint"
      name        = "pegaEndpoint"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "Segment API Token"
      name        = "segmentApiToken"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "SegmentProfileEndpoint"
      name        = "segmentProfileEndpoint"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}