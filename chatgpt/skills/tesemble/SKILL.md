---
name: tesemble
description: Test GTM messaging, cold emails, landing-page copy, and ICP hypotheses against a synthetic persona grid with the Tesemble MCP server. Use when the user wants to know which audience a message lands with, find their ICP, or compare message variants before a live experiment.
---

Use the **tesemble** MCP server for persona-grid audience reactions.

Before spending credits, call `tesemble_get_me`. Audience suggestions are free; simulation runs cost credits (see tool descriptions).

Typical ICP flow:

1. `tesemble_suggest_audience` with the user's brief or URL.
2. Show the suggested persona grid and estimated run cost (personas × messages) before spending credits.
3. `tesemble_run_icp_discovery` with one message and the grid.
4. `tesemble_get_insights` on the returned run id.

If the Tesemble tools aren't available, the user hasn't connected their Tesemble account yet. Ask them to connect Tesemble and sign in, then try again.

Do not purchase credits through the model. Send the user to https://app.tesemble.com to buy credits.

Setup for Claude, ChatGPT, and Cursor: https://www.tesemble.com/blog/connect-tesemble-mcp
