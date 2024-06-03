#!/bin/bash

sudo docker run -it --rm --name=tpldetection \
	--network host \
	-p 19530:19530 \
	-v /home/chenyi/projects/complete:/workspace \
	bin-tpldetection:latest \
	/bin/bash
