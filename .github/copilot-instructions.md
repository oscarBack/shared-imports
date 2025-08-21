<!-- Purpose: concise, actionable guidance for AI coding agents working in this repo -->
# GitHub Copilot instructions for shared-imports

This repository currently contains only a short `README.md` and a `LICENSE` file. There is no detected source tree (no `package.json`, `pyproject.toml`, `src/`, or `app/` directories). Use the steps below to get immediately productive and avoid making incorrect assumptions.

1. First actions (do these before coding)
   - Open and read `README.md` to understand the declared purpose: "Web application that helps fan communities and groups manage shared imports of merchandise." (this is the only project clue available).
   - Search the repo for language indicators (look for `package.json`, `requirements.txt`, `pyproject.toml`, `go.mod`, `Cargo.toml`, or `pom.xml`). If none exist, pause and ask the human owner which stack to use.
   - If asked to scaffold code, propose a small plan with framework options (Express/Node, Next.js, Django, Flask, or simple static site) and wait for selection.

2. Scaffolding and conventions (when creating initial files)
   - Create a top-level `src/` or `app/` directory for source code and a `tests/` directory for unit tests.
   - Add a package manifest (`package.json` for Node; `pyproject.toml` or `requirements.txt` for Python). Commit these first so CI and humans can validate the chosen stack.
   - Keep the README updated with build, test, and run commands you add. Use `README.md` as the authoritative place for developer workflows.

3. Developer workflows to include in PRs
   - A clear `npm`/`pip` install and `npm test`/`pytest` command in the README.
   - Small, focused commits with tests for any new behavior.

4. Patterns and integration notes (nothing currently present)
   - There are no existing service boundaries or integration points to follow. When you introduce them, document: API endpoints, data shapes, and any external services (databases, object storage, 3rd-party APIs) in `README.md` or a `docs/` directory.

5. When merging or editing existing agent guidance
   - If a `.github/copilot-instructions.md` or `AGENT.md` already exists in the future, preserve any project-specific examples and merge only to correct or extend out-of-date instructions. Prefer adding a short changelog note at the top of this file for traceability.

6. Examples (what to reference in this repo)
   - `README.md` — current single source of truth about project purpose.

7. If you're unsure: ask a single, focused question
   - Example: "Which runtime and framework should I scaffold for shared-imports? (options: Node/Express, Next.js, Django, Flask, other)"

Keep guidance concise and actionable. Avoid implementing large features without an explicit framework choice from the repository owner.
