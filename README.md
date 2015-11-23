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

```bash
docker build -t arachni .
```
