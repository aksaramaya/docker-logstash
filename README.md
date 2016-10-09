# Logstash Docker images
## How to build the image

Just run

```bash
make
```

To clean up the directory, run

```bash
make clean
```

## How to use this image

### Start Logstash with commandline configuration

```bash
docker run -it --rm logstash -e 'input { stdin { } } output { stdout { } }'
```

### Start Logstash with configuration file
If you need to run logstash with a configuration file, logstash.conf, that's located in your current directory, you can use the logstash image as follows:

```bash
docker run -it --rm -v "$PWD":/config-dir logstash -f /config-dir/logstash.conf
```

### Using a `Dockerfile`
If you'd like to have a production Logstash image with a pre-baked configuration file, use of a `Dockerfile` is recommended:
```bash
FROM logstash

COPY logstash.conf /some/config-dir/

CMD ["-f", "/some/config-dir/logstash.conf"]
```

Then, build with docker build -t my-logstash . and deploy with something like the following:

```bash
docker run -it --rm my-logstash
```

## License
[MIT](LICENSE).
