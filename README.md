### Docker hub
Here is docker hub repository [szczepano/v-lang](https://cloud.docker.com/u/szczepano/repository/docker/szczepano/v-alpine)

### Build
```bash
docker build -t v-alpine:latest ./v-alpine
```
### Description

Builds latest version of [vlang](https://github.com/vlang/v) compiler on docker alpine using gcc

### Basic example
```bash
docker run -ti --rm szczepano/v-alpine v run hello_world.v
docker run -ti --rm szczepano/v-alpine v run news_fetcher.v
```

### Word count
```bash
docker run -ti --rm szczepano/v-alpine bash -c "cd word_counter && v word_counter.v && ./word_counter cinderella.txt"
```

### UI tetris run
```bash
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix szczepano/v-alpine bash -c "cd tetris && v run tetris.v"
```
