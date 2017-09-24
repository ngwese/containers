
build:
	docker build -t afofo/neo-build .
	
run:
	PWD=$(pwd)
	docker run -v $(PWD)/dist:/dist -v $(PWD)/build:/build -it afofo/neo-build /bin/bash
	
#kill:
#	docker kill neo-build

sh:
	docker exec -t -i neo-build /bin/bash

setup:
	mkdir -pv build
	git clone https://github.com/friendlyarm/h5_lichee.git build/lichee
	mkdir -pv dist
	(cd dist && wget https://releases.linaro.org/components/toolchain/binaries/7.1-2017.08/aarch64-linux-gnu/gcc-linaro-7.1.1-2017.08-x86_64_aarch64-linux-gnu.tar.xz)
	(cd dist && wget https://releases.linaro.org/components/toolchain/binaries/4.9-2017.01/arm-linux-gnueabihf/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf.tar.xz)
	
.PHONY: build run sh setup
