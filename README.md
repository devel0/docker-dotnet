# docker-dotnet

docker-ubuntu + dotnet development environment

## prerequisites

- [docker-ubuntu server-mgr](https://github.com/devel0/docker-ubuntu/tree/server-mgr)
- download [dotnet package](https://dotnet.microsoft.com/download/dotnet-core/3.0) into a Downloads folder ( change [package version](https://github.com/devel0/docker-dotnet/blob/9517ee1ba0731b2e9838da487faa28f7bc6efd02/build.sh#L7) as needed )

## build image

```sh
git checkout server-mgr
./build.sh
```

you can specify addictional docker build arguments, example:

```sh
./build.sh --network=dkbuild
```

## run image

follow create a test named container running an interactive bash terminal

```sh
docker run --name=test -ti searchathing/dotnet:server-mgr
```
