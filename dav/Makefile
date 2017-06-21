build:
	docker build  -t ngwese/dav .
	
run:
	docker run -d -p 8080:80 -p 8443:443 --rm --name dav ngwese/dav
	
kill:
	docker kill dav

sh:
	docker exec -t -i dav /bin/sh
	
.PHONY: build run sh
