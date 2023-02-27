# Setup

## Requirements

Docker desktop app running (to start the docker daemon)

´´´bash
npm install
´´´

```bash
sh ./scripts/startDockerCompose.sh
```

go to http://localhost:5173

If you need to rebuild the image created by the Dockerfile (for example if you add node modules or similiar changes) run

```bash
docker compose up -d --build
```

This will only restart the container containing your own image in case you have.

To rebuild all containers run:

```bash
sh ./scripts/startDockerCompose.sh
```

This will however also rebuild the mongo containers meaning you would lose all data in these in case you have test data in there.
To just temporarily stop the containers run:

```bash
docker compose stop
```

and to run again:

```bash
docker compose up -d --build
```