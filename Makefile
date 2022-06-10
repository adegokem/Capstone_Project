setup:
	python3 -m venv venv
	. venv/bin/activate

install:
	pip install --upgrade pip && pip install -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64 &&\
	chmod +x ./hadolint

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# ./hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 web.py

all: install lint test