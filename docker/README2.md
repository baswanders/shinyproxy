# Voorbeeld shinyproxy in container

## Build

Build image:

```
docker image build -t wandersnet/shinyproxy .
```

## Run

Run container:

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock --net shinyproxy-net -p 8080:8080 wandersnet/shinyproxy
```

### Opmerkingen
- Het netwerk "shinyproxy-net" moet al bestaan.
- Container bekijken: http://localhost:8080

