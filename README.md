# docker-dotnet

docker-ubuntu + donet development environment

## news

- [bionic version](https://github.com/devel0/docker-dotnet/tree/bionic)

## build image

```
git checkout master
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
