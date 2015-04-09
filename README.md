docker-spiped
=============

Use it like the normal command.

```sh
$ docker run -d -v /home/spiped:/spiped/key -p 2222:4444 \
    jsdir/spiped -d \
    -s '[0.0.0.0]:4444' \
    -t '[127.0.0.1]:8080' -k keyfile
```
