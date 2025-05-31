FROM python:3.13.3@sha256:0bc836167214f98aca9c9bca7b4c6dc2c2a77f4a29d5029e6561a14706335102

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
