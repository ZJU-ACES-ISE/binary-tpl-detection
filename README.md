# binary-tpl-detection
This repository contains scripts to run Docker images for [ZJU-ACES-ISE/LibDB](https://github.com/ZJU-ACES-ISE/LibDB), which is developed based on [LibDB](https://github.com/DeepSoftwareAnalytics/LibDB).

## Steps to run
### 1. Change `run_tpl.sh` to specify the path to your binaries.
```sh
sudo docker run -it --rm --name=tpldetection \
	--network host \
	-p 19530:19530 \
	-v /path/to/your/binary/files:/files \  # Specify your files here
	bin-tpldetection:latest \
	/bin/bash

```

### 2. Run following command to start the container.
```shell
# Setup
bash setup.sh

# Start Milvus database
bash run_milvus.sh

# Run the container for detection
bash run_tpl.sh
```

### 3. Run the detection script in the container
```shell
bash run_detection.sh <path to target dir> <path to save results(optional)>
```
Once the detection is finished, results will be saved in `results.json` in the specified save path.
