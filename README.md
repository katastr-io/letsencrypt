# Let's Encrypt

Let's Encrypt renewal script. Add new line to root's crontab to activate. Renews the certificate every month.

```
0 0 1 * * /opt/katastr.io/letsencrypt-13224c5/bin/letsencrypt.renew.sh
```

Note that each time this repo is updated, the crontab line has to be updated as well.
