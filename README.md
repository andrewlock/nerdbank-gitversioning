A docker image with the [Nerdbank.GitVersioning](https://github.com/AArnott/Nerdbank.GitVersioning) .NET Core CLI tool installed

Allows you to use the tool without having to install it directly on the CI server.

Run by using a simple wrapper that mounts the working directory, and passes in additional arguments, e.g. 

```bash
docker run --rm \
  -v $PWD:/sln \
  andrewlock/nerdbank:2.3.38 `get-version`
```

