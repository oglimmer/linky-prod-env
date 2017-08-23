# Usage

Just install `docker` and `docker-compose` and type: `docker-compose up`
then browse to http://localhost (or https://localhost)

# What it installs

* couchdb 1.6 available on 5984
* lucene available on 5985
* nodejs serving page generation on 8080
* nodejs serving the REST API on 8081
* nginx serving static content on 8082
* haproxy servering http on 80 and https on 443

# https

Replace haproxy/chainandkey.pem with your full certificate chain and your key.
Change in build/linky.properties the variable archive.domain accordingly.

# adding an user

```
curl -X POST --data '{"email":"foo@bar.com","password":"secret"}' -H "Content-Type: application/json" http://localhost:8080/rest/users
```

# config

* No OAUTH login providers unless login.oauth is set to true in config (and of course it won't work unless credentials are provided there as well)
* The jwt.secret is set to foobar
* The archive.domain is localhost (in prod it should never be the same domain as the service itself)
