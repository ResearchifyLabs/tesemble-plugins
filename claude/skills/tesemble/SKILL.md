---
name: tesemble
description: Test GTM messaging, cold emails, landing-page copy, and ICP hypotheses against a synthetic persona grid with the Tesemble MCP server. Use when the user wants to know which audience a message lands with, find their ICP, or compare message variants before a live experiment.
---

The **tesemble** remote MCP server runs persona-grid audience reactions.

Workflow:

1. Call `tesemble_get_me` before any credit spend.
2. Use `tesemble_suggest_audience` to propose a grid (free).
3. Run `tesemble_run_icp_discovery` or `tesemble_run_gtm_validation`, then `tesemble_get_insights`.

Credit purchases happen at https://app.tesemble.com — not in Claude.

Connection guide: https://www.tesemble.com/blog/connect-tesemble-mcp
