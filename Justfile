# Run deps, check, test, and build
all: deps check test build

# Install all dependencies
deps: deps-py deps-ansible

# Install Python dependencies
deps-py:
    uv sync

# Install Ansible collection dependencies
deps-ansible:
    uv run -- ansible-galaxy collection install -r requirements.yml

# Lint all ansible code
check:
    uv run -- ansible-lint

# Run molecule tests for all roles, or a specific role/platform with `just test r` or `just test r ubuntu2204`
test role="" platform="":
    #!/usr/bin/env bash
    set -euo pipefail
    platform_arg=""
    if [ -n "{{platform}}" ]; then
        platform_arg="--platform-name {{platform}}"
    fi
    if [ -n "{{role}}" ]; then
        cd roles/{{role}} && uv run -- molecule test $platform_arg
    else
        for role_dir in roles/*/; do
            (cd "$role_dir" && uv run -- molecule test $platform_arg)
        done
    fi

# Build the collection artifact
build:
    uv run -- ansible-galaxy collection build

# Remove built collection artifacts
clean:
    rm -f posit-posit_team-*.tar.gz
