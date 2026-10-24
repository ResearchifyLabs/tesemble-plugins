# Tesemble for Claude

Tesemble tests product briefs, cold emails, landing-page copy, and other GTM messaging against a factorial grid of synthetic buyer personas, so you can see which segments a message lands with before you run a live experiment.

## What you can do

- Suggest a persona grid (audience) from a brief, a message, or a website URL
- Run ICP discovery and GTM validation simulations
- Read segment-level insights and compare runs
- Draft message variants and copy for a specific segment
- Save audiences and run message hunts

## What's included

- **Tesemble connector**: the remote MCP server at `https://app.tesemble.com/mcp`
- **tesemble skill**: tells Claude how to use the tools: check credits, suggest an audience, run a simulation, then read the insights

## Setup

1. Install the plugin.
2. The first time Claude calls a Tesemble tool, sign in with your Tesemble account. New to Tesemble? Create an account at [app.tesemble.com](https://app.tesemble.com).

Full setup guide: [Connect Tesemble to Claude, ChatGPT, and Cursor](https://www.tesemble.com/blog/connect-tesemble-mcp)

## Credits

Audience suggestions and message drafts are free. A simulation run costs 1 credit per valid persona per message, and a message hunt adds 300 orchestration credits. Credits come from your Tesemble account. You buy them at [app.tesemble.com](https://app.tesemble.com), never inside Claude.

## Data and privacy

- **What the plugin sends:** the briefs, messages, and URLs you ask Claude to test, sent over HTTPS to `app.tesemble.com`, where Tesemble processes them as its [privacy policy](https://www.tesemble.com/privacy) describes.
- **Sign-in:** OAuth through Tesemble's sign-in provider at `clerk.tesemble.com`. Claude never sees your password.
- **What runs locally:** nothing. The plugin has no hooks, scripts, or local servers; it only connects Claude to the server above.

Terms: [tesemble.com/terms](https://www.tesemble.com/terms)

## Support

[care@researchify.io](mailto:care@researchify.io) or [tesemble.com/contact](https://www.tesemble.com/contact)

## License

Proprietary. See [LICENSE](./LICENSE).
