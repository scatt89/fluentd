# fluentd
A Fluentd Docker container customized for send Docker logs to elasticsearch

Default configurations 
* Expose port 24284

## Testing

* If we only want display logs at the screen
```sh
$ docker run --name fluentd -p 24224:24224 scatt89/fluentd
```

* Otherside, we can run first an elasticsearch container first and later run this fluentd image linked to elasticsearch container

```sh
$ docker run --name fluentd -p 24224:24224 --link elasticsearch_container scatt89/fluentd
```

* Finally we run our application containner with --log-driver option set to "fluentd" value

```sh
$ docker run --name myapp.jar -p 8080:8080 --link someImage
```