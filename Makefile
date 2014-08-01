build: Dockerfile
	docker build -t mini-memcached .

tag:
	docker tag mini-memcached mini/memcached
