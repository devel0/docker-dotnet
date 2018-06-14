# docker-dotnet

docker-ubuntu + dotnet development environment

## prerequisites

- [docker-ubuntu bionic](https://github.com/devel0/docker-ubuntu/tree/bionic)

## build image

```
./build.sh
```

you can specify addictional docker build arguments, example:

```
./build.sh --network=dkbuild
```

## run image

follow create a test named container running an interactive bash terminal

```
docker run --name=test -ti searchathing/dotnet
```
