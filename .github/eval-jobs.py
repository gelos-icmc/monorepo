#!/usr/bin/env nix-shell
#! nix-shell -i python3 -p python3 nix-eval-jobs

# Use nix-eval-jobs to evaluate everything at once, and into a format github-actions can use as matrix
# The difference between this and nix-github-actions is that our matrix will have access to the out/drvPath as well as cached status

import json, subprocess

# From https://github.com/nix-community/nix-github-actions
githubPlatforms = {
  "x86_64-linux": "ubuntu-24.04",
  "x86_64-darwin": "macos-13",
  "aarch64-darwin": "macos-14",
  "aarch64-linux": "ubuntu-24.04-arm",
}

jobs = map(json.loads, subprocess.run(["nix-eval-jobs", "--force-recurse", "--check-cache-status", "--flake", ".#checks"], capture_output=True).stdout.decode('utf-8').splitlines())

matrix = {'include': []}
for job in jobs:
    [system, name] = job['attrPath']
    attr = f"checks.{system}.{name}"
    matrix['include'].append({
        'name': name,
        'system': system,
        'attr': attr,
        'os': githubPlatforms[system],
        'isCached': job['isCached'],
        'drvPath': job['drvPath'],
        'outPath': job['outputs']['out']
    })

print(json.dumps(matrix))
