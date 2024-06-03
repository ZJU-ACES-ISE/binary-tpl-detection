#!/bin/bash

sudo docker run -it --rm --name=tpldetection \
	--network host \
	-p 19530:19530 \
	-v /path/to/your/binary/files:/files \
	bin-tpldetection:latest \
	/bin/bash
