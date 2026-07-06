services := "tailscale vuetorrent jellyfin caddy"

up-all:
    #!/usr/bin/env bash
    for service in {{services}}; do \
        cd ~/files/prjkt/dotlira/$service && docker compose up -d && cd ..; \
    done

down-all:
    #!/usr/bin/env bash
    for service in {{services}}; do \
        echo "Stopping $service..."; \
        cd $service && docker compose down && cd ..; \
    done

up service:
    cd {{service}} && docker compose up -d

down service:
    cd {{service}} && docker compose down

ps:
    #!/usr/bin/env bash
    for service in {{services}}; do \
        echo "=== $service ==="; \
        cd $service && docker compose ps && cd ..; \
        echo ""; \
    done
