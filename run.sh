#!/usr/bin/env bash
set -e

IMAGE=cost_ops_dev
TARGET=${1:-bench_memory}   # pass a target name, e.g. ./run.sh stride_1_16

# Build the deps-only image. After the first time this is a cached no-op
# (the Dockerfile no longer copies source, so nothing invalidates the layers).
docker build -t "$IMAGE" .

# Bind-mount the current dir into /app, then ONLY compile + run inside the container.
# cmake reconfigures fast; cmake --build recompiles just the changed file.
docker run --rm -v "$(pwd):/app" "$IMAGE" \
    sh -c "cmake -S . -B build && cmake --build build && ./build/$TARGET"
