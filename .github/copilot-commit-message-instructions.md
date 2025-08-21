# Guide to Writing Good Git Commits

A comprehensive guide for writing clear, consistent, and useful commit messages that improve collaboration and code maintenance.

## Why are good commits important?

- **Clear history**: Makes it easier to understand project evolution
- **Efficient debugging**: Allows quick identification of when a bug was introduced
- **Code reviews**: Helps reviewers understand the changes
- **Releases**: Simplifies automatic changelog generation
- **Collaboration**: Improves communication between developers

## Basic format

```
<type>[optional scope]: <description>

[optional body]

[optional footer]
```

### Example:
```
feat(auth): add user login functionality

Implement JWT-based authentication system with:
- Login endpoint with email/password validation
- Token generation and verification
- Session management

Closes #123
```

## Commit types

| Type | Description | Example |
|------|-------------|---------|
| `feat` | New functionality | `feat: add shopping cart` |
| `fix` | Bug fixes | `fix: resolve login validation error` |
| `docs` | Documentation | `docs: update API documentation` |
| `style` | Formatting, whitespace, etc. | `style: fix indentation in components` |
| `refactor` | Code refactoring | `refactor: extract user validation logic` |
| `test` | Add or modify tests | `test: add unit tests for user service` |
| `chore` | Maintenance tasks | `chore: update dependencies` |
| `perf` | Performance improvements | `perf: optimize database queries` |
| `ci` | Continuous integration | `ci: add GitHub Actions workflow` |
| `build` | Build system | `build: update webpack configuration` |
| `revert` | Revert changes | `revert: undo user authentication changes` |

## Description rules

### ✅ Best practices:
- **Use imperative mood**: "add", "fix", "update" (not "added", "fixed", "updated")
- **Maximum 50 characters** in the first line
- **Start with lowercase** (after the type)
- **Don't end with a period**
- **Be specific and clear**

### ❌ Avoid:
```bash
# Too vague
git commit -m "fix stuff"

# Too long
git commit -m "feat: add the new user authentication system with JWT tokens and session management that allows users to login and logout securely"

# Past tense
git commit -m "fixed login bug"

# Not descriptive
git commit -m "changes"
```

### ✅ Correct examples:
```bash
git commit -m "feat: add user registration form"
git commit -m "fix: resolve memory leak in image processing"
git commit -m "docs: add installation instructions"
git commit -m "refactor: extract validation utilities"
```

## Scope

The scope specifies which part of the code is modified:

```bash
feat(auth): add login endpoint
fix(ui): resolve button alignment issue
docs(api): update endpoint documentation
test(utils): add validation helper tests
```

## Commit body

For complex changes, use the body to explain:
- **What** changes were made
- **Why** they were made
- **How** they solve the problem

```
feat(orders): implement order status tracking

Add real-time order tracking functionality that allows
customers to see their order progress from processing
to delivery.

Changes include:
- New OrderStatus component with live updates
- WebSocket integration for real-time notifications
- Database schema updates for tracking states

This resolves customer complaints about lack of
order visibility and reduces support tickets.
```

## Footer

Use the footer for:
- Issue references: `Closes #123`, `Fixes #456`
- Breaking changes: `BREAKING CHANGE: remove deprecated API`
- Co-authors: `Co-authored-by: Name <email@example.com>`

## Conventional Commits

For projects using automatic semantic versioning:

```bash
# Patch version (1.0.0 -> 1.0.1)
fix: resolve validation error

# Minor version (1.0.0 -> 1.1.0)
feat: add new dashboard widget

# Major version (1.0.0 -> 2.0.0)
feat!: redesign authentication system

BREAKING CHANGE: authentication now requires OAuth2
```

## Useful commands

### Modify the last commit:
```bash
git commit --amend -m "new message"
```

### Interactive commit (select files):
```bash
git add -p
git commit -m "fix: resolve specific validation issue"
```

### View commit history:
```bash
git log --oneline
git log --graph --pretty=format:'%h -%d %s (%cr) <%an>'
```

## Recommended tools

### Commitizen
Helps write correctly formatted commits:
```bash
npm install -g commitizen
npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

Usage: `git cz` instead of `git commit`

### Husky + Commitlint
Validates that commits follow the format:
```bash
npm install --save-dev @commitlint/cli @commitlint/config-conventional husky
```

### GitHub Copilot
Use the setting for commit instructions:
```json
"github.copilot.chat.commitMessageGeneration.instructions": [
    { "text": "Use conventional commit format" },
    { "text": "Keep description under 50 characters" },
    { "text": "Use imperative mood" }
  ]
}
```

## Examples for different scenarios

### New feature:
```bash
feat(import): add bulk import functionality for merchandise
```

### Bug fix:
```bash
fix(calculation): resolve incorrect shipping cost calculation
```

### Documentation:
```bash
docs(readme): add setup instructions for development environment
```

### Refactoring:
```bash
refactor(components): extract reusable form validation logic
```

### Testing:
```bash
test(import): add unit tests for bulk import validation
```

### Maintenance:
```bash
chore(deps): update Node.js to v18 LTS
```

## Checklist before committing

- [ ] The message clearly describes what changes were made
- [ ] Uses conventional format (type: description)
- [ ] Description is specific and concise (< 50 characters)
- [ ] Uses imperative mood ("add" not "added")
- [ ] Changes are atomic (one responsibility per commit)
- [ ] Tests were executed
- [ ] Diff was reviewed before commit

## Additional resources

- [Conventional Commits](https://www.conventionalcommits.org/)
- [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
- [Semantic Versioning](https://semver.org/)
- [Commitizen](https://github.com/commitizen/cz-cli)

---

> **Remember**: A good commit is an investment in the project's future. Take time to write clear and descriptive messages.