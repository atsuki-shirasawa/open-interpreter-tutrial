FROM python:3.10-slim

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    cmake \
    gcc-11 \
    g++-11 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root/workspace

RUN python -m pip install --upgrade pip \
    && pip install --no-cache-dir open-interpreter
