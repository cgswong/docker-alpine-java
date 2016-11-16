#!/usr/bin/env bash
# Add files for each version.

set -e

# Set values
pkg=${0##*/}
pkg_root=$(dirname "${BASH_SOURCE}")

# Source common script
source "${pkg_root}/common.sh"

# Script directory
cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

# Load configuration
source "${pkg_root}/config.properties"

versions=( "${JVM_PKG[@]%/}" )

for version in "${versions[@]}"; do
  log "${yellow}Updating version: ${version}${reset}"
  sed "s/%%JVM_PKG%%/${version}/g;
      s/%%JVM_MAJOR%%/${JVM_MAJOR}/g;
      s/%%JVM_MINOR%%/${JVM_MINOR}/g;
      s/%%JVM_BUILD%%/${JVM_BUILD}/g;
      s/%%JVM_BASE%%/${JVM_BASE}/g;
      s/%%GLIBC_VERSION%%/${GLIBC_VERSION}/g" Dockerfile.${version}.tpl > "${version}/Dockerfile"
done
log "${green}Complete${reset}"
