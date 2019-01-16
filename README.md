A docker image with the [Nerdbank.GitVersioning](https://github.com/AArnott/Nerdbank.GitVersioning) .NET Core CLI tool installed

Allows you to use the tool without having to install it directly on the CI server.

Run by using a simple wrapper that mounts the working directory, and passes in additional arguments, e.g. 

```bash
docker run --rm \
  -v `pwd`:`pwd` 
  -w `pwd` \
  andrewlock/nerdbank-gitversioning:2.3.38 get-version
```

This will print out the calculated git version values, e.g.:

```
Version:                      0.0.4.5879
AssemblyVersion:              0.0.0.0
AssemblyInformationalVersion: 0.0.4+f7162800bb
NuGet package Version:        0.0.4-f7162800bb
NPM package Version:          0.0.4-f7162800bb
```

If you wish to use those values directly, you can grep them using something like the following:

```bash
docker run --rm -v `pwd`:`pwd` -w `pwd` 1ea8083a57d9 get-version \
  | grep -oP '(^Version:)\K.*' \
  | xargs
```