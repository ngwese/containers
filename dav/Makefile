build:
	docker build -t afofo/dav .
	
run:
	docker run -d -p 8443:443 -v secret:/dav/secret:ro -v data:/dav/data --rm --name dav afofo/dav
	
kill:
	docker kill dav

sh:
	docker exec -t -i dav /bin/sh
	
.PHONY: build run sh
