build:
	docker build -t afofo/sbot .
	
run:
	docker run -d -p 8008:8008 -v /Volumes/docker/sbot/data:/sbot/data --rm --name sbot afofo/sbot
	
kill:
	docker kill sbot

sh:
	docker exec -t -i sbot /bin/bash
	
dist: build
	docker save -o afofo-sbot.tar afofo/sbot
	
.PHONY: build run sh dist
