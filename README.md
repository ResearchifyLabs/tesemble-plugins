# Tesemble plugins

Plugins that connect Claude and ChatGPT to [Tesemble](https://www.tesemble.com), which tests GTM messaging against a synthetic persona grid. Both use the remote MCP server at `https://app.tesemble.com/mcp`.

| Folder | For | Distributed through |
| --- | --- | --- |
| [`claude/`](./claude) | Claude (chat, Cowork, Claude Code) | Claude directory (plugin bundle), and this repo as a Claude Code marketplace |
| [`chatgpt/`](./chatgpt) | ChatGPT and Codex | ZIP upload to OpenAI's plugin directory |

Setup guide: [Connect Tesemble to Claude, ChatGPT, and Cursor](https://www.tesemble.com/blog/connect-tesemble-mcp)

## Install in Claude Code

```
/plugin marketplace add ResearchifyLabs/tesemble-plugins
/plugin install tesemble@tesemble
```

## Maintainers: submitting to the directories

### Claude (two listings)

Submit both from [claude.ai/directory/manage](https://claude.ai/directory/manage) (paid plan; Owner on Team or Enterprise):

1. **MCP connector**: Submit new → **MCP connector** → URL `https://app.tesemble.com/mcp`. Use the listing copy in [claude/connector-listing.md](./claude/connector-listing.md). Enter reviewer test-account credentials in the portal, never in this repo.
2. **Plugin bundle**: Submit new → **Plugin bundle** → repository `ResearchifyLabs/tesemble-plugins`, plugin path `claude`. Pair it with the connector; both must come from the same organization.

Validate locally first with `claude plugin validate ./claude`. [claude/README.md](./claude/README.md) is the listing description people see in the directory.

### ChatGPT (plugin directory)

1. Build the ZIP: `./package-chatgpt.sh` → `dist/tesemble-chatgpt-plugin.zip`
2. Open the [OpenAI platform](https://platform.openai.com/) → **Plugins** → upload the ZIP (**With MCP**).
3. Connect MCP URL `https://app.tesemble.com/mcp`, complete **domain verification** at `https://app.tesemble.com/.well-known/openai-apps-challenge` (required; the portal issues the token), scan tools, and enter OAuth reviewer credentials.
4. Submit for review. See [OpenAI plugin submission](https://developers.openai.com/plugins/deploy/submission).

Details: [chatgpt/README.md](./chatgpt/README.md)

### Before you submit

- [ ] MCP deployed with OAuth (Clerk) working against `https://app.tesemble.com/mcp`
- [ ] Every tool has a **title** and read/destructive hints (`backend/app/mcp/server.py` in `ResearchifyLabs/reactions`)
- [ ] Reviewer test Tesemble account with credits and sample experiments
- [ ] Domain verification token served as plain text at the URL above (required by OpenAI)
- [ ] Demo video recorded and `demo_recording_url` set in [chatgpt/plugin.json](./chatgpt/plugin.json)

### Releasing updates

- **Claude:** the directory follows this repo's default branch. Merge to it and raise `version` in [claude/.claude-plugin/plugin.json](./claude/.claude-plugin/plugin.json) with every release.
- **ChatGPT:** changes to the package (metadata or skills) need a new ZIP upload and review. Tool changes on the MCP server are rescanned daily.
