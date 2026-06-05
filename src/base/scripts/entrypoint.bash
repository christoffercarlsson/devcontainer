#!/usr/bin/env bash
set -eo pipefail

ssh-keygen -A

if [ ! -f /authorized_keys ] && [ -n "$DEVCONTAINER_AUTHORIZED_KEYS" ]; then
    printf '%s\n' "$DEVCONTAINER_AUTHORIZED_KEYS" > /authorized_keys
fi

if [ -f /authorized_keys ]; then
    install -o dev -g dev -m 700 -d /home/dev/.ssh
    install -o dev -g dev -m 600 /authorized_keys /home/dev/.ssh/authorized_keys
fi

/usr/sbin/sshd -D -e "$@"
