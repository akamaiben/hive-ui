# hive-ui

Lightweight public-facing UI served by a Python HTTP server. Deployed as systemd service `hive-ui.service`.

## Stack

`server.py` (stdlib HTTP server), single `index.html`. No build step.

## Commands

```bash
./start.sh                         # dev run
sudo systemctl restart hive-ui     # prod restart
sudo journalctl -u hive-ui -f      # logs
```

## Notes

This is separate from OpDek's dashboard (`~/projects/hive/dashboard/`). Don't confuse the two — this one is minimal/public, that one is the internal control plane.
