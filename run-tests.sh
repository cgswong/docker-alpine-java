#! /bin/bash
# Run testing.

# Set values
pkg=${0##*/}
pkg_root=$(dirname "${BASH_SOURCE}")

# Source common script
source "${pkg_root}/common.sh"

: ${DOCKER_IMAGE:="java"}
export DOCKER_IMAGE

# Load configuration
source "${pkg_root}/config.properties"

versions=( "${JVM_PKG[@]%/}" )

main() {
  for TAG in "${versions[@]}"; do
    export TAG
    log "${yellow}---------------[START]-------------------------${reset}"
    for test in $(ls -1 tests/*.sh); do
      source ${test}
    done
    log "${yellow}----------------[END]--------------------------${reset}"
  done
}

main
