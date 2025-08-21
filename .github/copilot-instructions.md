<!-- Purpose: concise, actionable guidance for AI coding agents working in this repo -->
# GitHub Copilot instructions for shared-imports

This repository currently contains only a short `README.md` and a `LICENSE` file. There is no detected source tree (no `package.json`, `pyproject.toml`, `src/`, or `app/` directories). Use the steps below to get immediately productive and avoid making incorrect assumptions.

1. First actions (do these before coding)
   - Open and read `README.md` to understand the declared purpose: "Web application that helps fan communities and groups manage shared imports of merchandise." (this is the only project clue available).
   - Search the repo for language indicators (look for `package.json`, `requirements.txt`, `pyproject.toml`, `go.mod`, `Cargo.toml`, or `pom.xml`). If none exist, research modern best practices for the requested type of application and autonomously select an appropriate stack.
   - Use internet research to validate framework choices and gather current best practices before implementing.
   - If asked to scaffold code, research the latest versions and recommended patterns for the chosen stack, then implement autonomously with modern conventions.

2. Scaffolding and conventions (when creating initial files)
   - Research current best practices for the chosen stack before implementation.
   - Create a top-level `src/` or `app/` directory for source code and a `tests/` directory for unit tests.
   - Add a package manifest (`package.json` for Node; `pyproject.toml` or `requirements.txt` for Python) with current LTS/stable versions researched online.
   - Keep the README updated with build, test, and run commands you add. Use `README.md` as the authoritative place for developer workflows.
   - Implement with modern patterns and dependencies validated through internet research.

3. Developer workflows to include in PRs
   - A clear `npm`/`pip` install and `npm test`/`pytest` command in the README.
   - Small, focused commits with tests for any new behavior.

4. Patterns and integration notes (nothing currently present)
   - There are no existing service boundaries or integration points to follow. When you introduce them, document: API endpoints, data shapes, and any external services (databases, object storage, 3rd-party APIs) in `README.md` or a `docs/` directory.

5. When merging or editing existing agent guidance
   - If a `.github/copilot-instructions.md` or `AGENT.md` already exists in the future, preserve any project-specific examples and merge only to correct or extend out-of-date instructions. Prefer adding a short changelog note at the top of this file for traceability.

6. Examples (what to reference in this repo)
   - `README.md` — current single source of truth about project purpose.

7. Decision-making approach
   - When implementation details are unclear, research current best practices online and choose based on modern standards.
   - Prioritize autonomous implementation over asking questions when sufficient research can be conducted.
   - For foundational technology choices (runtime, framework), research multiple options and select the most suitable based on project requirements and current ecosystem trends.

Keep guidance concise and actionable. Implement features autonomously using internet research to validate modern patterns and dependencies.
