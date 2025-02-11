import { config } from 'dotenv'
import { configureApis, unwrap, FunctionSettingV1, CreateFunctionV1Input } from '@segment/public-api-sdk-typescript'

config()
const API_TOKEN = process.env.SEGMENT_API_KEY

if (!API_TOKEN) {
    throw new Error('Missing SEGMENT_API_KEY in .env file')
}

const api = configureApis(API_TOKEN)

const functionCode = `
/**
 * Segment Source Function: Logs request body and tracks a 'Page Viewed' event.
 */
async function onRequest(request, settings) { 
  const body = request.json();
  console.log('Request ', body);

  // Send a 'Page Viewed' event to Segment
  Segment.track({ 
    event: 'Page Viewed', 
    userId: 'user_id', 
    properties: { 
      page_name: 'Winter Collection 2025' 
    }
  });
}
`;


async function createSegmentFunction() {
  try {
    const result = await unwrap(
      api.functions.createFunction({
        code: functionCode,
        settings: [
          { name: 'apiKey', label: 'API Key', type: FunctionSettingV1.TypeEnum.STRING, description: 'API Key', required: false, sensitive: false },
          { name: 'mySecret', label: 'My Secret Key', type: FunctionSettingV1.TypeEnum.STRING, description: 'Secret Key', required: false, sensitive: true },
        ],
        displayName: 'POC Source Function',
        resourceType: CreateFunctionV1Input.ResourceTypeEnum.SOURCE,
        logoUrl: 'https://qualified-production.s3.us-east-1.amazonaws.com/uploads/7umLq9CeEaFWNod2HMqnpJqn8aLWxwD7ZbUME/9a0f7d3d446beca06108c34009fa8cbf3edaa6ae11b917eaa30e60ee0364edde.png',
        description: 'My source function',
      })
    )
    console.log('Function Created Successfully:', JSON.stringify(result, null, 2))
  } catch (e) {
    console.error('ERROR:', e)
  }
}

// Call the function
createSegmentFunction()
