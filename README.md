# docker cron env

Set up a cron job that can read the environmental variables
as passed to Docker at start.

To assist in making the cron jobs for Oral History function
as intended.

## REQUIREMENTS

* [Docker](https://docs.docker.com/get-docker/)
* (optional) [Docker swarm](https://docs.docker.com/engine/swarm/swarm-tutorial/)

## USAGE

## Docker Swarm
### To build, launch, and tail the cron logs:
```bash
./BUILD
./START
./WATCH
```

### To stop:
```bash
./STOP
```

## Docker
### To build, launch, tail the cron logs:
```bash
docker build -t docker-cron .
container_id="$(docker container run -d --env-file env docker-cron)"
docker container exec -it "$container_id" tail -f /var/log/cron.log
```

### To stop:
```bash
docker container stop "$container_id"
```
or
```bash
docker container stop "$(docker container ps --filter ancestor=docker-cron --quiet)"
```

References:

* [Running a Cron Job in Docker Container](https://blog.knoldus.com/running-a-cron-job-in-docker-container/)
* [docker-cron](https://github.com/nehabhardwaj01/docker-cron)
* [How do I pass environment variables to Docker containers?](https://stackoverflow.com/questions/30494050/how-do-i-pass-environment-variables-to-docker-containers)
* [docker ps](https://docs.docker.com/engine/reference/commandline/ps/)
