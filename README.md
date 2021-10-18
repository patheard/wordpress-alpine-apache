# WordPress Alpine Apache
Proof-of-concept WordPress Docker image using Alpine, PHP-FPM and Apache.

```sh
docker build -t wordpress-alpine-apache .
docker run -p 8080:80 -d wordpress-alpine-apache
curl -L http://localhost:8080
```
