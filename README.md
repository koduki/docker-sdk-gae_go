README
==================

### build

```bash
$ docker build -t koduki/dev-docker-gcp .
```

### deploy to Google App Engine

#### initialize

```
$ ./run.sh /bin/bash
 root@:/# appcfg.py --noauth_local_webserver -A simple-bot-1283 -V v1 update /app/
```

appcfg.py --noauth_local_webserver -A simple-bot-1283 -V v1 update /app/


```bash
 $ ./run.sh /bin/bash
 root@..:/# goapp serve --host=0.0.0.0 /app
```

python -c "import urllib2; print urllib2.urlopen('https://accounts.google.com').read()"
@26e0e7b4eec5:/# goapp deploy -application simple-bot-1283 /app/app.yaml

appcfg.py --noauth_local_webserver -A simple-bot-1283 -V v1 update /app/

./deploy.sh simple-bot-1283 v1
