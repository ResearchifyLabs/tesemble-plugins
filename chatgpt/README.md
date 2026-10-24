# ChatGPT plugin package (Agent Plugins)

Upload `../dist/tesemble-chatgpt-plugin.zip` to the OpenAI **Plugins** portal with submission type **With MCP**.

## Contents

- `plugin.json` — listing metadata and review test cases
- `mcp.json` — remote server at `https://app.tesemble.com/mcp`. Sign-in is discovered from the server (Clerk OAuth with dynamic client registration), so there's no `extensions.com.openai.auth` block: with one, the ChatGPT desktop app and Codex silently skip the server. Choose **OAuth** when connecting it in the portal.
- `skills/tesemble/SKILL.md` — how to use the Tesemble tools (no onboarding skill: the only setup is signing in)
- `assets/` — listing icons (PNG), drawn from the app's `frontend/public/favicon.svg` in `ResearchifyLabs/reactions`

## Portal checklist

1. Verified developer identity on the OpenAI organization.
2. Upload ZIP → **Metadata & Skills** and **MCPs** scans pass.
3. **Connect** the MCP server; complete OAuth as the reviewer test user.
4. Host domain verification at `https://app.tesemble.com/.well-known/openai-apps-challenge` (required; the portal issues the token).
5. Submit for review with demo credentials for a Tesemble account that has credits and sample data.

## Test locally in the ChatGPT desktop app

1. Copy this folder to `~/.codex/plugins/tesemble`.
2. Add `~/.agents/plugins/marketplace.json` with an entry whose `source.path` is `./.codex/plugins/tesemble` and whose `policy` is `{"installation": "AVAILABLE", "authentication": "ON_INSTALL"}`.
3. Restart the desktop app, open **Plugins → Personal**, and install Tesemble. If no sign-in page opens, run `codex mcp login tesemble`.

## Demo video (required for review)

Record it in ChatGPT, not on the website:

1. Install the plugin and sign in to Tesemble when ChatGPT asks.
2. Run the five positive test cases in `plugin.json`.
3. Show the three negative cases being declined or not triggering Tesemble.

Host it where reviewers can watch without signing in, such as unlisted YouTube or Loom. Then add `"demo_recording_url": "<link>"` under `extensions.com.openai.review` in `plugin.json` and rebuild the ZIP.

Reference: [Upload and submit your plugin](https://developers.openai.com/plugins/deploy/submission)
