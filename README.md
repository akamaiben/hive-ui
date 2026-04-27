# hive-ui

**Lightweight public-facing UI for the old hive (now opdek-archive) engine.** A minimal Python HTTP server serving a single static `index.html`. Was deployed as a systemd service named `hive-ui.service` for ambient reachability.

**Status:** Dormant. Parked April 2026. The backend it talked to (the hive engine) is now frozen as `opdek-archive/`, so this UI has no live system to drive.

## What this is

- `server.py`: Python stdlib HTTP server.
- `index.html`: the single page served.
- `start.sh`: dev launch script.
- `hive-ui.service`: systemd unit definition.
- `CLAUDE.md`: stack and commands.

No build step. No framework. The whole stack was deliberately tiny so it could run on the Beelink with minimal upkeep.

## Why it's dormant

The hive backend was renamed to `opdek-archive/` and frozen as reference material. With no live backend, this frontend has nothing to serve.

## Pickup hint

This is a likely archive candidate. Before deleting:

1. Confirm the systemd service is no longer enabled (`systemctl --user list-unit-files | grep hive-ui`).
2. Confirm no DNS records still point here.
3. Snapshot anything visually distinctive worth keeping as a screenshot in `~/projects/ben-archive/`.

Part of Ben's project topology. See `~/projects/ben-command/projects/registry.yaml` for status.
