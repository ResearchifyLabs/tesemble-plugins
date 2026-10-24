# ChatGPT plugin package (Agent Plugins)

Upload `../dist/tesemble-chatgpt-plugin.zip` to the OpenAI **Plugins** portal with submission type **With MCP**.

## Contents

- `plugin.json` — listing metadata and review test cases
- `mcp.json` — remote server at `https://app.tesemble.com/mcp` (OAuth via DCR)
- `skills/get-started/SKILL.md` — onboarding skill
- `assets/` — listing icons (PNG)

## Portal checklist

1. Verified developer identity on the OpenAI organization.
2. Upload ZIP → **Metadata & Skills** and **MCPs** scans pass.
3. **Connect** the MCP server; complete OAuth as the reviewer test user.
4. Host domain verification at `https://app.tesemble.com/.well-known/openai-apps-challenge` (required; the portal issues the token).
5. Submit for review with demo credentials for a Tesemble account that has credits and sample data.

## Demo video (required for review)

Record it in ChatGPT, not on the website:

1. Install the plugin and sign in to Tesemble when ChatGPT asks.
2. Run the five positive test cases in `plugin.json`.
3. Show the three negative cases being declined or not triggering Tesemble.

Host it where reviewers can watch without signing in, such as unlisted YouTube or Loom. Then add `"demo_recording_url": "<link>"` under `extensions.com.openai.review` in `plugin.json` and rebuild the ZIP.

Reference: [Upload and submit your plugin](https://developers.openai.com/plugins/deploy/submission)
