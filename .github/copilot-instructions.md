<!-- Purpose: concise, actionable guidance for AI coding agents working in this repo -->
# GitHub Copilot instructions for shared-imports

<!-- Updated 2025-08-27: Full monorepo architecture with NestJS API + Next.js web app -->

This is a **Turborepo monorepo** for a merchandise shared imports platform targeting fan communities. Tech stack: TypeScript, NestJS (API), Next.js (web), pnpm, planned AWS/Cloudflare deployment.

## Architecture Overview

**Monorepo structure** (pnpm workspaces + Turborepo):
- `apps/api/` — NestJS REST API (minimal scaffolding, needs implementation)
- `apps/web/` — Next.js 15 web app with App Router (currently empty shell)
- `packages/eslint-config/` — Shared ESLint configs (@repo/eslint-config)
- `packages/typescript-config/` — Shared TypeScript configs (@repo/typescript-config)
- `docs/plans/` — Architecture planning documents (MONOREPO_PLAN.md, INFRA_SCHEMA.md)

**Key service boundaries**: API and web apps are separate, designed for independent deployment to AWS EC2. See `docs/plans/INFRA_SCHEMA.md` for full deployment architecture (load balancers, auto-scaling groups, DynamoDB).

## Essential Workflows

**Development** (run from project root):
```bash
pnpm install                 # Install all dependencies
pnpm dev                     # Start all apps in watch mode
pnpm build                   # Build all packages/apps
pnpm lint                    # Lint all workspaces
pnpm check-types            # TypeScript checking
```

**Individual app development**:
- API: `cd apps/api && pnpm dev` (starts NestJS on default port)
- Web: `cd apps/web && pnpm dev` (starts Next.js on port 3000 with Turbopack)

**HTTP Server Management**:
- Before starting any development server, check for existing processes: `lsof -i :PORT` or `netstat -tulpn | grep PORT`
- Kill existing servers if needed: `kill -9 PID` or `pkill -f "python.*http.server"`
- For prototype testing: `cd docs/prototypes/opX && python3 -m http.server 8000` (check port 8000 first)
- Common ports: API (3001), Web (3000), Prototypes (8000)

**Turborepo orchestration**: Uses `turbo.json` for task dependencies. Build tasks depend on upstream builds (`^build`).

## Project-Specific Patterns

**Package references**: Use workspace protocol `"@repo/eslint-config": "workspace:*"` in package.json dependencies.

**ESLint configs**: Import from shared package:
- `@repo/eslint-config/base` — Base TypeScript config
- `@repo/eslint-config/next-js` — Next.js specific rules
- `@repo/eslint-config/react-internal` — React component libraries

**TypeScript configs**: Extend from `@repo/typescript-config/{base|nextjs|react-library}.json`

**Package manager**: Uses **pnpm** (lockfile: `pnpm-lock.yaml`). Node.js >=18 required.

## Current State & Implementation Focus

**API state**: Basic NestJS scaffolding in `apps/api/src/` — needs modules, controllers, services for merchandise import management.

**Web state**: Empty Next.js shell (`app/page.tsx` returns `<></>`) — needs UI for import coordination, group management.

**Missing packages**: The planned `packages/{ui,database,shared-types,utils}` don't exist yet. Create when adding cross-app shared code.

**Architecture docs**: `docs/plans/` contains detailed planning for multi-environment AWS deployment, DynamoDB schemas, and service interactions.

**Key integration point**: API will serve web app data. Plan for authentication, import workflow state management, and group coordination features per the architecture docs.
