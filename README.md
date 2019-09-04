# docker-rpivot

docker container for https://github.com/klsecservices/rpivot

Run the container using the normal docker run:

```sh
docker run -it --rm -p 9999:9999 -p 1080:1080 cablethief/rpivot
```

Since the image is distroless there is no `sh` so handling where you expose your ports should be done using dockers `-p`.

For example, if you want `rpivot` to listen on `443` and run the SOCKS proxy on `4444` which is only accessible on `localhost` you would:

```sh
docker run -it --rm -p 443:9999 -p 127.0.0.1:4444:1080 cablethief/rpivot
```

