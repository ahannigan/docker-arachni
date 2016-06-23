# docker-arachni

[Arachni](http://www.arachni-scanner.com/) running in a docker container

## Running

- Default drops in to bash shell in arachni folder
```bash
docker run -it --rm ahannigan/docker-arachni
```

- Run Arachni Web
```bash
docker run -d --name arachni -p 9292:9292 ahannigan/docker-arachni bin/arachni_web
```

See [Arachni Wiki](https://github.com/Arachni/arachni/wiki) for more commands

There are also systemd/fleet service files under units/.

## Building

Override default Framework and WebUI version in Dockerfile:
```bash
docker build --build-arg VERSION=1.2.1 --build-arg WEB_VERSION=0.5.7.1 -t arachni .
```

Default version set in Dockerfile:
```bash
docker build -t arachni .
```
