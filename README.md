
# Reth Quickstart

scripts for installing and running a reth node from scratch on an ubuntu node

instructions should work for local nodes, AWS nodes, and GCP nodes

this is a "quick and dirty" setup rather than a "best practices" setup

## Steps

0) if you need to format a disk, run `storage/format_disk.sh`
1) install everything with `install/install_everything.sh`
2) run everything with the scripts in `run/`
    - run as user that has sudo (default `ubuntu` will have sudo)
    - recommended: run in tmux with 3 tabs 1) lighthouse 2) reth 3) prometheus
        `tmux new -s node -d -n lighthouse \; neww -n reth \; neww -n prometheus \; attach -t node`

