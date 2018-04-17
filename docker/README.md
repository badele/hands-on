# Docker sample

##

```
cd ~
git clone docker run --rm -it --net=host --env-file docker/static.vars -v $PWD/docker:/backup -v /tmp/warp10:/opt/warp10/leveldb badele/docker-warp10
cd hands-on 
docker run --rm -it --net=host --env-file docker/static.vars -v $PWD/docker:/backup -v /tmp/warp10:/opt/warp10/leveldb badele/docker-warp10
```