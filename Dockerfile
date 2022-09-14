FROM python:3.10.7@sha256:e9c35537103a2801a30b15a77d4a56b35532c964489b125ec1ff24f3d5b53409

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir --requirement /requirements.txt

ENTRYPOINT ["cfn-lint"]
CMD ["--help"]
