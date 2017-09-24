IMAGE_NAME=afofo/aaf:0
CONTAINER_NAME=aaf

AAF_SRC_URL=https://downloads.sourceforge.net/project/aaf/AAF-src/1.1.6/AAF-src-1.1.6.tar.gz
AAF_SRC_FILE=AAF-src-1.1.6.tar.gz

$(AAF_SRC_FILE):
	wget $(AAF_SRC_URL)
	
build: $(AAF_SRC_FILE)
	docker build -t $(IMAGE_NAME) .
	
run: 
	docker run -it --rm --name $(CONTAINER_NAME) $(IMAGE_NAME) /bin/bash
	
kill:
	docker kill $(CONTAINER_NAME)

sh:
	docker exec -t -i  /bin/bash
	
.PHONY: build run sh
