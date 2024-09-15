#!/bin/bash

# Check if 'kind' exists and add completion if it does
if command -v kind &>/dev/null; then
  source <(kind completion bash)
fi

# Check if 'kubectl' exists and add completion if it does
if command -v kubectl &>/dev/null; then
  source <(kubectl completion bash)
fi

# Check if 'pnpm' exists and add completion if it does
if command -v pnpm &>/dev/null; then
  source <(pnpm completion bash)
fi