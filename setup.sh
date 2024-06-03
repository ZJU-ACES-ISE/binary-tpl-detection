#!/bin/bash

sudo docker pull milvusdb/milvus:1.1.1-cpu-d061621-330cc6
sudo docker pull chenyi26/bin-tpldetection:latest

mkdir -p /home/$USER/milvus/conf
cd /home/$USER/milvus/conf
wget https://raw.githubusercontent.com/milvus-io/milvus/v1.1.1/core/conf/demo/server_config.yaml
