import {
  to = segment_function.id-dfn_61fbf1efea78c352e2767c83
  id = "dfn_61fbf1efea78c352e2767c83"
}

resource "segment_function" "id-dfn_61fbf1efea78c352e2767c83" {
  code          = "/**\n * @param {SpecTrack} event The track event\n * @param {Object.<string, any>} settings Custom settings\n * @return void\n */\nasync function onTrack(event, settings) {\n\tconst Body = 'Hello, World!';\n\tconst To = event.properties.phoneNumber;\n\n\tif (settings.twilioFrom) {\n\t\tawait sendText(\n\t\t\t{\n\t\t\t\tFrom: settings.twilioFrom,\n\t\t\t\tTo,\n\t\t\t\tBody\n\t\t\t},\n\t\t\tsettings\n\t\t);\n\n\t\tawait phoneCall(\n\t\t\t{\n\t\t\t\tFrom: settings.twilioFrom,\n\t\t\t\tTo,\n\t\t\t\t// Learn more at: https://www.twilio.com/docs/voice/twiml\n\t\t\t\tTwiml: `\n        <Response>\n          <Break strength=\"x-weak\" time=\"1000ms\"/>\n          <Say>$${Body}</Say>\n        </Response>\n      `\n\t\t\t},\n\t\t\tsettings\n\t\t);\n\t}\n\n\tif (settings.twilioWhatsAppFrom) {\n\t\t// Learn more at: https://www.twilio.com/docs/whatsapp\n\t\tawait sendText(\n\t\t\t{\n\t\t\t\tTo: 'whatsapp:' + To,\n\t\t\t\tFrom: settings.twilioWhatsAppFrom,\n\t\t\t\tBody\n\t\t\t},\n\t\t\tsettings\n\t\t);\n\t}\n}\n\n/**\n * Sends SMS or WhatsApp message with Twilio\n *\n * https://www.twilio.com/docs/sms\n * https://www.twilio.com/docs/whatsapp\n *\n */\nasync function sendText(params, settings) {\n\tconst endpoint = `https://api.twilio.com/2010-04-01/Accounts/$${settings.twilioAccountId}/Messages.json`;\n\tawait fetch(endpoint, {\n\t\tmethod: 'POST',\n\t\theaders: {\n\t\t\tAuthorization: `Basic $${btoa(\n\t\t\t\tsettings.twilioAccountId + ':' + settings.twilioToken\n\t\t\t)}`,\n\t\t\t'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'\n\t\t},\n\t\tbody: toFormParams(params)\n\t});\n}\n\n/**\n * Places a Twilio phone call.\n *\n * https://www.twilio.com/docs/voice\n *\n */\nasync function phoneCall(params, settings) {\n\tconst endpoint = `https://api.twilio.com/2010-04-01/Accounts/$${settings.twilioAccountId}/Calls.json`;\n\tawait fetch(endpoint, {\n\t\tmethod: 'POST',\n\t\theaders: {\n\t\t\tAuthorization: `Basic $${btoa(\n\t\t\t\tsettings.twilioAccountId + ':' + settings.twilioToken\n\t\t\t)}`,\n\t\t\t'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'\n\t\t},\n\t\tbody: toFormParams(params)\n\t});\n}\n\nfunction toFormParams(params) {\n\treturn Object.entries(params)\n\t\t.map(([key, value]) => {\n\t\t\tconst paramName = encodeURIComponent(key);\n\t\t\tconst param = encodeURIComponent(value);\n\t\t\treturn `$${paramName}=$${param}`;\n\t\t})\n\t\t.join('&');\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/b0bd5dc4-d525-4ec7-b309-dc84558889e6.svg"
  resource_type = "DESTINATION"
  settings = [
    {
      description = "Your Twilio Account ID"
      label       = "Twilio Account ID"
      name        = "twilioAccountId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = "Your Twilio Auth Token"
      label       = "Twilio Auth Token"
      name        = "twilioToken"
      required    = true
      sensitive   = true
      type        = "STRING"
    },
    {
      description = "Your Twilio verified WhatsApp phone number"
      label       = "WhatsApp From Number (optional)"
      name        = "twilioWhatsAppFrom"
      required    = false
      sensitive   = false
      type        = "STRING"
    },
    {
      description = "Your Twilio verified phone number"
      label       = "Twilio From Number (optional)"
      name        = "twilioFrom"
      required    = false
      sensitive   = false
      type        = "STRING"
    },
  ]
}