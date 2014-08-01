# mini/memcached

[memcached](http://memcached.org/) service container.

## Usage

To run this container and bind port `11211`:

```
docker run -d -p 11211:11211 mini/memcached
```

You can now check the logs:

```
docker logs <CONTAINER_ID>
```

But memcached doesn't output too much to be useful :smile:

### Adjusting maximum memory

This container by default will set `64MB` of maximum RAM to memcached. If you
want to adjust this (bigger or smaller), use `MEMCACHED_MEMORY` environment
variable and indicate the amount in megabytes (just numbers):

```
docker run -d -p 11211:11211 -e MEMCACHED_MEMORY=512 mini/memcached
```

Above will make memcached use `512MB` of RAM.

## License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.
