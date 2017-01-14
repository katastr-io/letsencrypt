# Let's Encrypt

Let's Encrypt renewal script. Add new line to root's crontab to activate.

```
0 0 1 FEB,APR,JUN,AUG,OCT,DEC * /opt/katastr.io/letsencrypt-05c008b/bin/letsencrypt.renew.sh
```

Note that each time this repo is updated, the crontab line has to be updated as well.
