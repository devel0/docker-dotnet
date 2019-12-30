# docker-dotnet

docker-ubuntu + dotnet development environment

## prerequisites

- [docker-ubuntu server-mgr](https://github.com/devel0/docker-ubuntu/tree/server-mgr)

## build image

```sh
git clone https://github.com/devel0/docker-dotnet.git
cd docker-dotnet
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
