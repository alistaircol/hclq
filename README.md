A simple Docker image for [`hclq`](https://github.com/mattolenik/hclq).

Mount files into `/workdir` for running `hclq` commands.

e.g.:

```bash
$ docker run --rm -it -v "$(pwd):/workdir" alistaircol/hclq:latest -i docker-app.pkr.hcl get 'source.docker.app.image'  
"thecodingmachine/php:8.0-v4-apache"
```
