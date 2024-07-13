FROM python:3.8

RUN apt-get update && apt-get install \
  build-essential \
  libsndfile1 \
  ffmpeg \
  sox \
  libsox-dev \
  cmake -y

RUN pip install -U --no-cache-dir pip
RUN pip install -U --no-cache-dir git+https://github.com/seanghay/pycrfpp.git

RUN pip install --no-cache-dir sosap \
	khmersegment \
	tha \
	regex \
	onnxruntime \
	scipy \
	tqdm \
	fastapi \
	uvicorn \
	gunicorn \
	pydub
