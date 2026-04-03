# Ansible Collection - posit.team

Common utility roles for installing and configuring Posit Team products.
Used by the product-specific roles:

- [ansible-role-connect](https://github.com/posit-dev/ansible-role-connect)
- [ansible-role-workbench](https://github.com/posit-dev/ansible-role-workbench)
- [ansible-role-package-manager](https://github.com/posit-dev/ansible-role-package-manager)

## Included Roles

| Role | Description |
|------|-------------|
| `posit.team.install` | Install Posit product packages via Cloudsmith or CDN |
| `posit.team.license` | Activate product licenses via file or key |
| `posit.team.service` | Manage product systemd services with health checks |
| `posit.team.discover_runtimes` | Auto-discover R, Python, and Quarto installations |

## Dependencies

This collection depends on [`posit.tools`](https://github.com/posit-dev/ansible-collection-tools)
for Cloudsmith repository setup and CDN download functionality.

## Supported Operating Systems

- Ubuntu 22.04 (Jammy), 24.04 (Noble)
- Debian 12 (Bookworm), 13 (Trixie)
- Red Hat Enterprise Linux 8, 9, 10
- Fedora 43
- SUSE Linux Enterprise Server 15 SP6 / openSUSE Leap 15.6

## Installation

```bash
ansible-galaxy collection install posit.team
```

## License

MIT
