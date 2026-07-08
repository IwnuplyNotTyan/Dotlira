# 🏳️‍⚧️ Dotlira - Docker compose's

---

## ⛏️ Install
1. [Check official docker guide](https://docs.docker.com/engine/install/)
2. 

> ![IMPORTANT]
> All path's in `/mnt/second/docker`, link's in `Caddyfile` fix and tailscale require TS_AUTHKEY's

```sh
git clone https://github.com/iwnuplynottyan/dotlira
just up-all
```

3. OIDC
Setup https://idp.example.ts.net

|Name|Redirect URls|
|----|-------------|
|Jellyfin|https://jellyfin.example.ts.net/sso/OID/redirect/tailscale|
|QUI|https://qui.example.ts.net/api/auth/oidc/callback|

and update client id & secret id in jellyfin/qui config's

---

# Made without 🫀
