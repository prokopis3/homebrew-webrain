# webrain

Homebrew tap for [webrain](https://github.com/prokopis3/webrain) — a portable,
LLM-driven browser-automation & web-scraping MCP server.

## Install

```bash
brew tap prokopis3/webrain
brew install webrain
```

Then install a browser engine and start the server:

```bash
webrain install           # Download Chrome for Testing
webrain mcp --http 9223   # start the MCP server
```

> The macOS bottle is built for Apple Silicon (arm64).
