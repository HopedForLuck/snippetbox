#!/usr/bin/env bash

set -o allexport
source .env
set +o allexport

# Run Go application using the environment variable
go run ./cmd/web -addr=$ADDR -dsn=$DNS