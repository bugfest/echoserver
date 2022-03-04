[![Build multiarch image - latest](https://github.com/bugfest/echoserver/actions/workflows/main.yml/badge.svg)](https://github.com/bugfest/echoserver/actions/workflows/main.yml)
[![Build multiarch image - tag](https://github.com/bugfest/echoserver/actions/workflows/main-tag.yml/badge.svg)](https://github.com/bugfest/echoserver/actions/workflows/main-tag.yml)

# echoserver
Multiarch container for testing purposes

`quay.io/bugfest/echoserver:latest`

Repository: https://quay.io/repository/bugfest/echoserver

| version | source |
| ------- | ------ |
| 2.5     | https://github.com/kubernetes/kubernetes/tree/595bc88f17cb967126253237a8e690a42ac63fef/test/images/echoserver | 

# How to
Sync source:
```shell script
git clone --single-branch https://github.com/kubernetes/kubernetes.git
git -C kubernetes checkout 595bc88f17cb967126253237a8e690a42ac63fef
cp kubernetes/test/images/echoserver/{install-deps.sh,nginx.conf,run.sh,template.lua} .
```

# Build
Multiarch build:

```shell script
docker buildx build --platform=linux/amd64,linux/arm64,linux/arm -f Dockerfile --tag quay.io/bugfest/echoserver:latest .
```
