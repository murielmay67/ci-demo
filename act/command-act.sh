#!/bin/bash
act --version
brew install act
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

# https://github.com/nektos/act#github_token
# https://github.com/nektos/act#secrets
act -s GITHUB_TOKEN="$(gh auth token)"
act -s GITHUB_TOKEN=[insert token or leave blank and omit equals for secure input]
# ~/.actrc

# ###########################################
# 运行指定的 Job
act --job Explore-GitHub-Actions --workflows .github/workflows/github-actions-demo.yml --dryrun
act --job build --workflows .github/workflows/20-build-vue-project.yml --dryrun
act --job Test-Checkout --workflows .gitea/workflows/10-demo.yaml -P ubuntu-latest-arm64=catthehacker/ubuntu:act-latest --pull=false --dryrun


# ###########################################

# Command structure:
act [ [options] <event >]
If no event name passed, will default to "on: push"
If actions handles only one event it will be used as default instead of "on: push"

# List all actions for all events:
act -l

# List the actions for a specific event:
act workflow_dispatch -l

# List the actions for a specific job:
#   filter by Job ID/Workflow/Event Name
act -j test -l
act -j Another-Job -l
act -j build -l

# Run the default (`push`) event:
act

# Run a specific event:
act pull_request

# Run a specific job:
act -j test
act --job Another-Job
act --job build

# Collect artifacts to the /tmp/artifacts folder:
act --artifact-server-path /tmp/artifacts

# Run a job in a specific workflow (useful if you have duplicate job names)
act -j lint -W .github/workflows/checks.yml

# Run in dry-run mode:
act -n

# Enable verbose-logging (can be used with any of the above commands)
act -v


# ##########################################################
act --pull=false --container-architecture linux/amd64 -P ubuntu-latest=catthehacker/ubuntu:act-latest --secret-file my.secrets