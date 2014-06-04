dockerfiles
===========

A list of Dockerfiles for convenience. See http://docker.io/ for more info on Dockerfiles.

# Building

To build all images:

```
make
```

To build a specific image:

```
make -C python
```

If it finished successfully, we should see the following:

```
$ docker images
REPOSITORY               TAG                 ID                  CREATED             SIZE
deis/python              latest              5ea68c3dc04a        4 minutes ago       523.5 MB
```

And now, we can run it:

```
docker run -i -t deis/python bash
```

# Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
