FROM python:3.11-slim-bookworm

WORKDIR /app

RUN apt update && apt install build-essential git -y
RUN pip install --no-cache-dir neo4j neo4j-graphrag langchain langchain-community langchain_neo4j langgraph huggingface-hub llama-cpp-python

COPY . .
