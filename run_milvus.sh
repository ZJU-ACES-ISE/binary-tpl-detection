#!/bin/bash

sudo docker run -d --name milvus \
	-p 19530:19530 \
	-p 19121:19121 \
	-v /home/$USER/milvus/db:/var/lib/milvus/db \
	-v /home/$USER/milvus/conf:/var/lib/milvus/conf \
	-v /home/$USER/milvus/logs:/var/lib/milvus/logs \
	-v /home/$USER/milvus/wal:/var/lib/milvus/wal \
	milvusdb/milvus:1.1.1-cpu-d061621-330cc6
