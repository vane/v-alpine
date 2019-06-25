### Github
Repository [vane/v-alpine](https://github.com/vane/v-alpine)

### Description

Builds latest version of [vlang](https://github.com/vlang/v) compiler on docker alpine using gcc

### Versions

0.1.2 latest

### Basic example
```bash
docker run -ti --rm szczepano/v-alpine v run hello_world.v
docker run -ti --rm szczepano/v-alpine v run news_fetcher.v
```

### Word count
```bash
docker run -ti --rm szczepano/v-alpine bash -c "cd word_counter && v word_counter.v && ./word_counter cinderella.txt"
```

### UI tetris run - can't get this working localy - probably needs glx forwarding
```bash
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix szczepano/v-alpine bash -c "cd tetris && v run tetris.v"
```

### Build
```bash
docker build -t v-alpine:latest ./v-alpine
```
