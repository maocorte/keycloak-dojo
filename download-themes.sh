#!/bin/bash

KC_VERSION=${1-4.1.0.Final}

echo "Cloning theme examples for keycloak version: $KC_VERSION"

mkdir -p themes

git clone --branch $KC_VERSION https://github.com/keycloak/keycloak.git

mv keycloak/examples/themes/src/main/resources/theme/* themes/

rm -rf keycloak/