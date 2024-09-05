FROM python:3.12.5@sha256:3c085580c5f27bb93b90ecf6be3fb62a093d40d7552d13b9cfbfb0f117064ae6

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
