# binary-tpl-detection
This repository contains scripts to run Docker images for [ZJU-ACES-ISE/LibDB](https://github.com/ZJU-ACES-ISE/LibDB), which is developed based on [LibDB](https://github.com/DeepSoftwareAnalytics/LibDB).

## Steps to run
```shell
# Setup
bash setup.sh

# Start Milvus database
bash run_milvus.sh

# Run the container for detection
bash run_tpl.sh

# Run the detection script in the container
bash run_detection.sh <path to target dir> <path to save results(optional)>
```

Once the detection is finished, results will be saved in `results.json` in the specified save path.
