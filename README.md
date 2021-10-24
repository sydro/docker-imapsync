Docker ImapSync
==================================================

1. Change env variables in `imapsync.env` with your credentials
```
    - HOST1=
    - USER1=
    - PASSWORD1=
    - OTHER1=       (for other arguments, e.g. --ssl1 --port1 993)
    - HOST2=
    - USER2=
    - PASSWORD2=
    - OTHER2=       (for other arguments, e.g. --ssl2 --port2 993)

```

2. `docker-compose up`


The first run take a few minute, because docker image must build.



