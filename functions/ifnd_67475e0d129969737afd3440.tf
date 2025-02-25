import {
  to = segment_function.id-ifnd_67475e0d129969737afd3440
  id = "ifnd_67475e0d129969737afd3440"
}

resource "segment_function" "id-ifnd_67475e0d129969737afd3440" {
  code          = "// In-memory cache for segment_id\nconst segmentIdCache = new Map(); // A Map to store { anonymousId: segment_id }\nconst CACHE_TTL = 60000; // Cache entries expire after 60 seconds (1 minute)\n\n/**\n * Helper function to get segment_id from Segment's Profile API\n * @param {string} anonymousId - The anonymousId from the event\n * @param {string} segmentProfileApi - The base Profile API URL\n * @param {string} apiKey - The Segment API key\n */\nasync function getSegmentId(anonymousId, segmentProfileApi, apiKey) {\n\tconst now = Date.now();\n\n\t// Check if the segment_id is already cached\n\tif (segmentIdCache.has(anonymousId)) {\n\t\tconst { segmentId, timestamp } = segmentIdCache.get(anonymousId);\n\n\t\t// If cache entry is still valid, return it\n\t\tif (now - timestamp < CACHE_TTL) {\n\t\t\tconsole.log(`Cache hit for anonymousId: $${anonymousId}`);\n\t\t\treturn segmentId;\n\t\t} else {\n\t\t\tconsole.log(`Cache expired for anonymousId: $${anonymousId}`);\n\t\t\tsegmentIdCache.delete(anonymousId); // Remove expired entry\n\t\t}\n\t}\n\n\t// Fetch segment_id from Segment API\n\tconsole.log(`Fetching segment_id for anonymousId: $${anonymousId}`);\n\tconst profileResponse = await fetch(\n\t\t`$${segmentProfileApi}/anonymous_id:$${anonymousId}/metadata`,\n\t\t{\n\t\t\tmethod: 'GET',\n\t\t\theaders: {\n\t\t\t\tAuthorization: `Basic $${btoa(apiKey + ':')}`,\n\t\t\t\t'Content-Type': 'application/json'\n\t\t\t}\n\t\t}\n\t);\n\n\tif (!profileResponse.ok) {\n\t\tthrow new Error(\n\t\t\t`Failed to fetch profile metadata: $${profileResponse.statusText}`\n\t\t);\n\t}\n\n\tconst profileData = await profileResponse.json();\n\tconst segmentId = profileData.segment_id;\n\n\t// Cache the segment_id\n\tsegmentIdCache.set(anonymousId, { segmentId, timestamp: now });\n\n\treturn segmentId;\n}\n\n/**\n * Handle track event\n * @param  {SegmentTrackEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onTrack(event, settings) {\n\tconst segmentProfileApi = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles`;\n\n\ttry {\n\t\t// Ensure the event has an anonymousId\n\t\tif (!event.anonymousId) {\n\t\t\tthrow new Error('No anonymousId found in the event.');\n\t\t}\n\n\t\t// Get the segment_id (from cache or API)\n\t\tconst segmentId = await getSegmentId(\n\t\t\tevent.anonymousId,\n\t\t\tsegmentProfileApi,\n\t\t\tsettings.apiKey\n\t\t);\n\n\t\tconsole.log(`Using segment_id: $${segmentId} for event: $${event.event}`);\n\n\t\t// Add segment_id to the event\n\t\tevent.context = event.context || {};\n\t\tevent.context.segment_id = segmentId;\n\t} catch (error) {\n\t\tconsole.error(`Error handling onTrack: $${error.message}`);\n\t\tthrow new RetryError(error.message); // Retry on transient issues\n\t}\n\n\treturn event; // Return enriched event\n}\n\n/**\n * Handle identify event\n * @param  {SegmentIdentifyEvent} event\n * @param  {FunctionSettings} settings\n */\nasync function onIdentify(event, settings) {\n\tconst segmentProfileApi = `https://profiles.segment.com/v1/spaces/$${settings.spaceId}/collections/users/profiles`;\n\n\ttry {\n\t\t// Ensure the event has an anonymousId\n\t\tif (!event.anonymousId) {\n\t\t\tthrow new Error('No anonymousId found in the event.');\n\t\t}\n\n\t\t// Get the segment_id (from cache or API)\n\t\tconst segmentId = await getSegmentId(\n\t\t\tevent.anonymousId,\n\t\t\tsegmentProfileApi,\n\t\t\tsettings.apiKey\n\t\t);\n\n\t\tconsole.log(`Using segment_id: $${segmentId} for identify event`);\n\n\t\t// Add segment_id to the event\n\t\tevent.context = event.context || {};\n\t\tevent.context.segment_id = segmentId;\n\t} catch (error) {\n\t\tconsole.error(`Error handling onIdentify: $${error.message}`);\n\t\tthrow new RetryError(error.message); // Retry on transient issues\n\t}\n\n\treturn event; // Return enriched event\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn.filepicker.io/api/file/RmPmpcBTQZKaFeGQrdG5"
  resource_type = "INSERT_DESTINATION"
  settings = [
    {
      description = ""
      label       = "apiKey"
      name        = "apiKey"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "spaceId"
      name        = "spaceId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}