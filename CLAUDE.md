# CLAUDE.md

## Project Overview

This is an Ansible collection (`posit.posit_team`) for managing Posit Team products (Posit Connect, Posit Workbench, and Posit Package Manager). It follows the standard Ansible collection structure and should follow ansible collection best practices wherever possible.

Each product should support their documented requirements:

- Posit Workbench: https://docs.posit.co/ide/server-pro/admin/getting_started/requirements.html
- Posit Connect: https://docs.posit.co/connect/admin/getting-started/requirements/index.html
- Posit Package Manager: https://docs.posit.co/rspm/admin/getting-started/requirements.html

## Roles

The collection includes the following roles:

**Dependency roles:**
- `r` — Install R versions from Posit's pre-built binaries ([#2](https://github.com/posit-dev/ansible-collection-posit-team/issues/2))
- `python` — Install Python versions from Posit's pre-built binaries ([#3](https://github.com/posit-dev/ansible-collection-posit-team/issues/3))

**Posit Team product roles:**
- `connect` — Install and configure Posit Connect ([#4](https://github.com/posit-dev/ansible-collection-posit-team/issues/4))
- `workbench` — Install and configure Posit Workbench ([#5](https://github.com/posit-dev/ansible-collection-posit-team/issues/5))
- `package_manager` — Install and configure Posit Package Manager ([#6](https://github.com/posit-dev/ansible-collection-posit-team/issues/6))

Additional dependency roles may be added as needed.

## Collection Structure

- `galaxy.yml` — collection metadata, dependencies, and build configuration
- `meta/runtime.yml` — Ansible version requirements and plugin routing
- `roles/` — Ansible roles for each product and dependency
- `plugins/` — all collection plugins (modules, filters, lookups, etc.) organized by type

## Development Workflows

The current repo contains a pyproject.toml and is managed as a `uv` project to
manage python versions and dependencies.

All python commands (`ansible-*`, etc) should be run using `uv run -- ` to ensure that
the proper version of python and all depencies are used. For example, you should
run `uv run -- ansible-galaxy collection build` rather than `ansible-galaxy
collection build` directly.

## Work Tracking

Use GitHub Issues in the repo (posit-dev/ansible-collection-posit-team) to track the state of current work and capture future work items. When starting new work or discovering tasks that need to be done, create or update issues accordingly.

## Branching and PR Workflow

- Always create a feature branch for new work — never commit directly to `main`.
- Branch names should be kebab-cased and prefixed with the GitHub issue number when one exists, e.g., `2-role-r` or `3-role-python`.
- Keep each branch focused on a single issue or closely related set of changes.
- Submit work via pull request and link the PR to its corresponding issue.
- Do not merge your own PR without review when other engineers are collaborating.

## Common Commands

```bash
# Build the collection
ansible-galaxy collection build

# Install the collection locally for testing
ansible-galaxy collection install posit-posit_team-*.tar.gz --force

# Run sanity tests
ansible-test sanity --docker

# Run unit tests
ansible-test units --docker

# Run integration tests
ansible-test integration --docker

# Run a single integration test target
ansible-test integration <target_name> --docker
```
