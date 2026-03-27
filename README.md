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

```bash
ansible-galaxy collection install posit.posit_team
```

## License

MIT
