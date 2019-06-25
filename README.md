### BUILD
```bash
docker build -t v-alpine:latest ./v-alpine
```
### DESCRIPTION

Builds latest version of [vlang](https://github.com/vlang/v) compiler on docker alpine using gcc

### BASIC EXAMPLE
```bash
docker run -ti --rm v-alpine v run hello_world.v
docker run -ti --rm v-alpine v run news_fetcher.v
```

### OTHER
```bash
docker run -ti --rm v-alpine bash -c "cd word_counter && v word_counter.v && ./word_counter cinderella.txt"
```

### FOR UI
```bash
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix v-alpine bash -c "cd tetris && v run tetris.v"
```