README
==================

This is a simple wrapper of [Google App Engine SDK](https://cloud.google.com/appengine/downloads) for to distribute docker.

Build
------------------

```bash
$ docker build -t koduki/dev-docker-gcp .
```

You can also pull from [DockerHub](https://hub.docker.com/r/koduki/dev-docker-gcp/)


Run server on local
-------------------------------

```bash
$ ./serve.sh
```

Go to "http://{your_docker_ip}:8080" in your browser:

e.g) localhost, http://192.168.99.100/


Deploy to Google App Engine
------------------------------

### Initialize and deploy

Run "appcfg.py" command on Docker.
And get "verification code" from following link.

```bash
$ ./run.sh /bin/bash
root@3d004aa982d3:/# appcfg.py --noauth_local_webserver -A simple-app-1234 -V v1 update /app/
....
Go to the following link in your browser:

    https://accounts.google.com ... ccess_type=offline

Enter verification code:
```

Input "verification code".

```bash
Enter verification code: xxxxxxxxxxx
Authentication successful.
```

Finish.

### Only deploy

```bash
./deploy.sh simple-app-1234 v1
```