// Example transformation function
async function onRequest(event, settings) {
    event.properties.source = "GitHub Synced Function";
    return event;
}