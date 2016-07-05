#!/usr/bin/env bash
set -e

cat << EOF > /usr/local/etc/relay/relay.conf
# Relay config version
# Mandatory. Must equal 1.
version: 1

id: aad48b34-5493-4107-9dc0-32dc710938ec
max_concurrent: 8
log_level: debug
log_json: false
log_path: console
enabled_engines: native,docker

# Information required to connect to Cog
cog:

# Docker config
docker:
  use_env: false

execution:
  env: ["COREOS_PRIVATE_IPV4=$COREOS_PRIVATE_IPV4"]
EOF
