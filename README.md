[![ziadhany](https://circleci.com/gh/ziadhany/emotion-prediction.svg?style=svg)](https://circleci.com/gh/ziadhany/emotion-prediction)

## Project Overview
Emotion detection from text, simple flask app with `j-hartmann/emotion-english-distilroberta-base` pre-train model


https://user-images.githubusercontent.com/29133904/217961246-475aa44c-cfa4-4d79-8edc-b8a443bcfddb.mp4


## Setup the Environment

* Create a virtualenv with Python and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
python3 -m virtualenv --python=<path-to-python3.x> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* just download a pre-trained model `make download_model_data`

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
