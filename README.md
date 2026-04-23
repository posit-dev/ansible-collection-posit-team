# Ansible Collection - posit.posit_team

Ansible collection for installing and configuring Posit Team products.

## Included Roles

| Role | Description |
|------|-------------|
| `posit.posit_team.posit_connect` | Install and configure [Posit Connect](https://posit.co/products/enterprise/connect/) |
| `posit.posit_team.posit_workbench` | Install and configure [Posit Workbench](https://posit.co/products/enterprise/workbench/) |
| `posit.posit_team.posit_package_manager` | Install and configure [Posit Package Manager](https://posit.co/products/enterprise/package-manager/) |
| `posit.posit_team.r` | Install R versions using [Posit r-builds](https://github.com/rstudio/r-builds) |
| `posit.posit_team.python` | Install Python versions using [uv](https://docs.astral.sh/uv/) |

## Supported Operating Systems

- Red Hat Enterprise Linux 8, 9, 10
- SUSE Linux Enterprise Server 15 SP6, SP7 / openSUSE 15.6
- Ubuntu 22.04 (Jammy Jellyfish), 24.04 (Noble Numbat)
- Debian 12 (Bookworm), 13 (Trixie)

## Requirements

- Ansible >= 2.15.0

## Installation

This collection is not yet published to Ansible Galaxy. Install directly from GitHub:

```bash
ansible-galaxy collection install git+https://github.com/posit-dev/ansible-collection-posit-team.git
```

To pin to a specific branch or tag:

```bash
ansible-galaxy collection install git+https://github.com/posit-dev/ansible-collection-posit-team.git,main
```

Or via a `requirements.yml`:

```yaml
collections:
  - source: https://github.com/posit-dev/ansible-collection-posit-team.git
    type: git
    version: main
```

## Development

This project uses [`just`](https://just.systems) as a task runner and [`uv`](https://docs.astral.sh/uv/) to manage Python dependencies.

```bash
# Install all dependencies (Python + Ansible collections)
just deps

# Install only Python dependencies
just deps-py

# Install only Ansible collection dependencies
just deps-ansible

# Lint all ansible code
just check

# Run molecule tests for all roles
just test

# Run molecule tests for a single role
just test r

# Run molecule tests for a single role on a specific platform
just test r ubuntu2204

# Build the collection artifact
just build

# Remove built collection artifacts
just clean
```

## References

- [Project Board](https://github.com/orgs/posit-dev/projects/46)
- [Issues](https://github.com/posit-dev/ansible-collection-posit-team/issues)

## License

MIT
