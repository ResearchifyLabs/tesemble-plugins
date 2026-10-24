# Claude MCP connector listing copy

Use this text in the developer portal when submitting **MCP connector** for `https://app.tesemble.com/mcp`.

## Connection

- **URL:** `https://app.tesemble.com/mcp`
- **Authentication:** OAuth 2.0 (required). Users sign in with their Tesemble (Clerk) account.
- **OAuth client:** Use Claude's published identity (recommended).

## Listing (draft)

- **Name:** Tesemble
- **One-liner:** Simulate GTM messaging before live tests
- **Description:** Tesemble tests product briefs and outbound copy against a factorial grid of synthetic buyer personas. Connect from Claude to suggest audiences, run ICP discovery, validate messages, compare runs, and read segment insights. Simulations spend credits on the user's Tesemble account; credit purchases happen at app.tesemble.com.
- **Documentation:** https://www.tesemble.com/blog/connect-tesemble-mcp
- **Privacy policy:** https://www.tesemble.com/privacy
- **Support:** care@researchify.io / https://www.tesemble.com/contact
- **Icon:** upload `chatgpt/assets/logo.png` (512×512, drawn from the app's favicon)
- **Categories:** GTM, Sales, Marketing, ICP, Product Brainstorming. The portal takes 1–5 from its own list, so pick the closest matches it offers.

## Reviewer test account

Provide credentials for a Tesemble account with:

- Remaining credits for at least one small simulation
- Optional: one saved audience and a completed run for insight tools

## Test & launch confirmation

Add the server manually under **Customize → Connectors → Add → Custom → Web**, enable it in a chat, call `tesemble_get_me`, then `tesemble_suggest_audience` with a short brief.

Reference: [Submit a connector](https://claude.com/docs/connectors/building/submission)
