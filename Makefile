## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	python3 -m venv ~/.devops
	#source ~/.devops/bin/activate

download_model_data:
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/config.json
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/merges.txt
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/special_tokens_map.json
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/tokenizer.json
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/tokenizer_config.json
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/vocab.json
	wget -P model_data/  https://huggingface.co/j-hartmann/emotion-english-distilroberta-base/resolve/main/pytorch_model.bin


install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
