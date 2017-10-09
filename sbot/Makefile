build:
	docker build -t afofo/sbot .
	
run:
	docker run -d -p 8008:8008 -v /Volumes/docker/sbot/data:/sbot/data --rm --name sbot afofo/sbot
	
kill:
	docker kill sbot

sh:
	docker exec -t -i sbot /bin/bash
	
.PHONY: build run sh
